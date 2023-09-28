# classes4.dex

.class public Lcom/android/internal/util/FastDataOutput;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/Flushable;
.implements Ljava/io/Closeable;


# static fields
.field private static final BUFFER_SIZE:I = 0x8000

.field private static final MAX_UNSIGNED_SHORT:I = 0xffff

.field private static sOutCache:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/internal/util/FastDataOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBuffer:[B

.field private final mBufferCap:I

.field private mBufferPos:I

.field private final mBufferPtr:J

.field private mOut:Ljava/io/OutputStream;

.field private final mRuntime:Ldalvik/system/VMRuntime;

.field private final mStringRefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/internal/util/FastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mRuntime:Ldalvik/system/VMRuntime;

    const/16 v1, 0x8

    if-lt p2, v1, :cond_2b

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, p2}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPtr:J

    array-length v0, v1

    iput v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    invoke-direct {p0, p1}, Lcom/android/internal/util/FastDataOutput;->setOutput(Ljava/io/OutputStream;)V

    return-void

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private drain()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    if-lez v0, :cond_e

    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    :cond_e
    return-void
.end method

.method public static obtain(Ljava/io/OutputStream;)Lcom/android/internal/util/FastDataOutput;
    .registers 4

    sget-object v0, Lcom/android/internal/util/FastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/FastDataOutput;

    if-eqz v0, :cond_f

    invoke-direct {v0, p0}, Lcom/android/internal/util/FastDataOutput;->setOutput(Ljava/io/OutputStream;)V

    return-object v0

    :cond_f
    new-instance v1, Lcom/android/internal/util/FastDataOutput;

    const v2, 0x8000

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/FastDataOutput;-><init>(Ljava/io/OutputStream;I)V

    return-object v1
.end method

.method private setOutput(Ljava/io/OutputStream;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Lcom/android/internal/util/FastDataOutput;->release()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public release()V
    .registers 4

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    if-gtz v0, :cond_1c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    const v2, 0x8000

    if-ne v1, v2, :cond_1b

    sget-object v1, Lcom/android/internal/util/FastDataOutput;->sOutCache:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Lingering data, call flush() before releasing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/internal/util/FastDataOutput;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    if-ge v0, p3, :cond_d

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_21

    :cond_d
    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_15

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    :cond_15
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    :goto_21
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastDataOutput;->writeByte(I)V

    return-void
.end method

.method public writeByte(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public writeChar(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public writeDouble(D)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/FastDataOutput;->writeLong(J)V

    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastDataOutput;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-void
.end method

.method public writeInternedUTF(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    goto :goto_31

    :cond_12
    const v1, 0xffff

    invoke-virtual {p0, v1}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/util/FastDataOutput;->writeUTF(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    int-to-short v2, v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v2

    if-ge v2, v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mStringRefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    :goto_31
    return-void
.end method

.method public writeLong(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_c

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    :cond_c
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    long-to-int v0, p1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v2, v0, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    return-void
.end method

.method public writeShort(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/FastDataOutput;->mBuffer:[B

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    shr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_10

    invoke-direct {p0}, Lcom/android/internal/util/FastDataOutput;->drain()V

    :cond_10
    iget-wide v0, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPtr:J

    iget v2, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/internal/util/FastDataOutput;->mBufferCap:I

    invoke-static {p1, v0, v1, v2, v3}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;JII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xffff

    if-gt v1, v2, :cond_4f

    if-ltz v0, :cond_30

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    iget v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/util/FastDataOutput;->mBufferPos:I

    goto :goto_4e

    :cond_30
    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/util/FastDataOutput;->mRuntime:Ldalvik/system/VMRuntime;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v2, p0, Lcom/android/internal/util/FastDataOutput;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v2, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    move-result-wide v2

    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v5, v4}, Landroid/util/CharsetUtils;->toModifiedUtf8Bytes(Ljava/lang/String;JII)I

    invoke-virtual {p0, v0}, Lcom/android/internal/util/FastDataOutput;->writeShort(I)V

    invoke-virtual {p0, v1, v5, v0}, Lcom/android/internal/util/FastDataOutput;->write([BII)V

    :goto_4e
    return-void

    :cond_4f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified UTF-8 length too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
