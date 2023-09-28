# classes3.dex

.class public Landroid/os/FileBridge;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileBridge$FileBridgeOutputStream;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CMD_CLOSE:I = 0x3

.field private static final CMD_FSYNC:I = 0x2

.field private static final CMD_WRITE:I = 0x1

.field private static final DEFAULT_READ_BUFFER_SIZE:I = 0x2000

.field private static final MSG_LENGTH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FileBridge"


# instance fields
.field private mClient:Landroid/os/ParcelFileDescriptor;

.field private volatile mClosed:Z

.field private mReadBufferSize:I

.field private mServer:Landroid/os/ParcelFileDescriptor;

.field private mTarget:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x2000

    iput v0, p0, Landroid/os/FileBridge;->mReadBufferSize:I

    :try_start_7
    sget v0, Landroid/system/OsConstants;->SOCK_STREAM:I

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->createSocketPair(I)[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/os/FileBridge;->mClient:Landroid/os/ParcelFileDescriptor;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create bridge"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public forceClose()V
    .registers 2

    iget-object v0, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v0, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return-void
.end method

.method public getClientSocket()Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/os/FileBridge;->mClient:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/FileBridge;->mClosed:Z

    return v0
.end method

.method public run()V
    .registers 9

    iget v0, p0, Landroid/os/FileBridge;->mReadBufferSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    goto :goto_15

    :cond_11
    iget v1, p0, Landroid/os/FileBridge;->mReadBufferSize:I

    new-array v1, v1, [B

    :goto_15
    :try_start_15
    iget-object v2, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v2

    if-ne v2, v3, :cond_a8

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v4, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_73

    const/4 v3, 0x4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v3, v5}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v3

    :goto_34
    if-lez v3, :cond_72

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    array-length v6, v1

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v1, v4, v6}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_53

    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6, v1, v4, v5}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    sub-int/2addr v3, v5

    goto :goto_34

    :cond_53
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected EOF; still expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_72
    goto :goto_a6

    :cond_73
    const/4 v6, 0x2

    if-ne v2, v6, :cond_89

    iget-object v5, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v1, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    goto :goto_a6

    :cond_89
    const/4 v6, 0x3

    if-ne v2, v6, :cond_a6

    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-static {v6}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V

    iget-object v6, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    iput-boolean v5, p0, Landroid/os/FileBridge;->mClosed:Z

    iget-object v5, p0, Landroid/os/FileBridge;->mServer:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-static {v5, v1, v4, v3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V
    :try_end_a5
    .catch Landroid/system/ErrnoException; {:try_start_15 .. :try_end_a5} :catch_af
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_a5} :catch_af
    .catchall {:try_start_15 .. :try_end_a5} :catchall_ad

    goto :goto_a8

    :cond_a6
    :goto_a6
    goto/16 :goto_15

    :cond_a8
    :goto_a8
    nop

    :goto_a9
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_b9

    :catchall_ad
    move-exception v2

    goto :goto_ba

    :catch_af
    move-exception v2

    :try_start_b0
    const-string v3, "FileBridge"

    const-string v4, "Failed during bridge"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_ad

    nop

    goto :goto_a9

    :goto_b9
    return-void

    :goto_ba
    invoke-virtual {p0}, Landroid/os/FileBridge;->forceClose()V

    throw v2
.end method

.method public setReadBufferSize(I)V
    .registers 3

    const/16 v0, 0x2000

    if-le p1, v0, :cond_6

    iput p1, p0, Landroid/os/FileBridge;->mReadBufferSize:I

    :cond_6
    return-void
.end method

.method public setTargetFile(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    iput-object p1, p0, Landroid/os/FileBridge;->mTarget:Landroid/os/ParcelFileDescriptor;

    return-void
.end method
