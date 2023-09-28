# classes3.dex

.class public final Landroid/os/incremental/IncrementalStorage;
.super Ljava/lang/Object;


# static fields
.field private static final INCFS_MAX_ADD_DATA_SIZE:I = 0x80

.field private static final INCFS_MAX_HASH_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "IncrementalStorage"

.field private static final UUID_BYTE_SIZE:I = 0x10


# instance fields
.field private final mId:I

.field private final mService:Landroid/os/incremental/IIncrementalService;


# direct methods
.method public constructor <init>(Landroid/os/incremental/IIncrementalService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iput p2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    return-void
.end method

.method public static bytesToId([B)Ljava/util/UUID;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_17

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    return-object v5

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected array of size 16, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static idToBytes(Ljava/util/UUID;)[B
    .registers 4

    if-nez p0, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    :cond_6
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private static validateV4Signature([B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_d1

    array-length v0, p0

    if-nez v0, :cond_7

    goto/16 :goto_d1

    :cond_7
    :try_start_7
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_b} :catch_c8

    nop

    invoke-virtual {v0}, Landroid/os/incremental/V4Signature;->isVersionSupported()Z

    move-result v1

    if-eqz v1, :cond_a6

    iget-object v1, v0, Landroid/os/incremental/V4Signature;->hashingInfo:[B

    invoke-static {v1}, Landroid/os/incremental/V4Signature$HashingInfo;->fromByteArray([B)Landroid/os/incremental/V4Signature$HashingInfo;

    move-result-object v1

    iget-object v2, v0, Landroid/os/incremental/V4Signature;->signingInfos:[B

    invoke-static {v2}, Landroid/os/incremental/V4Signature$SigningInfos;->fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;

    move-result-object v2

    iget v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8b

    iget-byte v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    const/16 v4, 0xc

    if-ne v3, v4, :cond_70

    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    if-eqz v3, :cond_4e

    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    array-length v3, v3

    if-gtz v3, :cond_33

    goto :goto_4e

    :cond_33
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported salt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->salt:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4e
    :goto_4e
    iget-object v3, v1, Landroid/os/incremental/V4Signature$HashingInfo;->rawRootHash:[B

    array-length v3, v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_67

    iget-object v3, v2, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    iget-object v3, v3, Landroid/os/incremental/V4Signature$SigningInfo;->additionalData:[B

    array-length v3, v3

    const/16 v4, 0x80

    if-gt v3, v4, :cond_5f

    return-void

    :cond_5f
    new-instance v3, Ljava/io/IOException;

    const-string v4, "additionalData has to be at most 128 bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_67
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "rawRootHash has to be 32 bytes"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_70
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported log2BlockSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->log2BlockSize:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8b
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported hashAlgorithm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/os/incremental/V4Signature$HashingInfo;->hashAlgorithm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "v4 signature version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/incremental/V4Signature;->version:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_c8
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to read v4 signature:"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d1
    :goto_d1
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bind(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bind(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c

    goto :goto_2a

    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2a
    return-void
.end method

.method public bindPermanent(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Landroid/os/incremental/IncrementalStorage;->bindPermanent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bindPermanent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c

    goto :goto_2a

    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind() permanent failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2a
    return-void
.end method

.method public configureNativeBinaries(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/incremental/IIncrementalService;->configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public disallowReadLogs()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->disallowReadLogs(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method

.method public getFileMetadata(Ljava/lang/String;)[B
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->getMetadataByPath(ILjava/lang/String;)[B

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getFileMetadata(Ljava/util/UUID;)[B
    .registers 5

    :try_start_0
    invoke-static {p1}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object v0

    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, v0}, Landroid/os/incremental/IIncrementalService;->getMetadataById(I[B)[B

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    return v0
.end method

.method public getLoadingProgress()F
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2}, Landroid/os/incremental/IIncrementalService;->getLoadingProgress(I)F

    move-result v1

    cmpg-float v2, v1, v0

    if-ltz v2, :cond_e

    return v1

    :cond_e
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLoadingProgress() failed at querying loading progress, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-float v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_28} :catch_28

    :catch_28
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->getMetrics(I)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public isFileFullyLoaded(Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, p1}, Landroid/os/incremental/IIncrementalService;->isFileFullyLoaded(ILjava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_f

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :cond_f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFileFullyLoaded() failed, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v0
.end method

.method public isFullyLoaded()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2}, Landroid/os/incremental/IIncrementalService;->isFullyLoaded(I)I

    move-result v1

    if-ltz v1, :cond_f

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :cond_f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFullyLoaded() failed at querying loading progress, errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v0
.end method

.method public makeDirectories(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectories(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    goto :goto_2a

    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDirectory() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2a
    return-void
.end method

.method public makeDirectory(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->makeDirectory(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    goto :goto_2a

    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeDirectory() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2a
    return-void
.end method

.method public makeFile(Ljava/lang/String;JLjava/util/UUID;[B[B[B)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p4, :cond_d

    if-eqz p5, :cond_5

    goto :goto_d

    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File ID and metadata cannot both be null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_d
    invoke-static {p6}, Landroid/os/incremental/IncrementalStorage;->validateV4Signature([B)V

    new-instance v0, Landroid/os/incremental/IncrementalNewFileParams;

    invoke-direct {v0}, Landroid/os/incremental/IncrementalNewFileParams;-><init>()V

    iput-wide p2, v0, Landroid/os/incremental/IncrementalNewFileParams;->size:J

    if-nez p5, :cond_1d

    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_1e

    :cond_1d
    move-object v1, p5

    :goto_1e
    iput-object v1, v0, Landroid/os/incremental/IncrementalNewFileParams;->metadata:[B

    invoke-static {p4}, Landroid/os/incremental/IncrementalStorage;->idToBytes(Ljava/util/UUID;)[B

    move-result-object v1

    iput-object v1, v0, Landroid/os/incremental/IncrementalNewFileParams;->fileId:[B

    iput-object p6, v0, Landroid/os/incremental/IncrementalNewFileParams;->signature:[B

    iget-object v1, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v2, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v1, v2, p1, v0, p7}, Landroid/os/incremental/IIncrementalService;->makeFile(ILjava/lang/String;Landroid/os/incremental/IncrementalNewFileParams;[B)I

    move-result v1

    if-nez v1, :cond_33

    goto :goto_52

    :cond_33
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeFile() failed with errno "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    neg-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_52
    return-void
.end method

.method public makeFileFromRange(Ljava/lang/String;Ljava/lang/String;JJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Landroid/os/incremental/IIncrementalService;->makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I

    move-result v0

    if-ltz v0, :cond_f

    goto :goto_2e

    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeFileFromRange() failed, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2e
    return-void
.end method

.method public makeLink(Ljava/lang/String;Landroid/os/incremental/IncrementalStorage;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p2}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v2

    invoke-interface {v0, v1, p1, v2, p3}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_f

    goto :goto_2e

    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeLink() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2e
    return-void
.end method

.method public moveDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    :try_start_b
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/os/incremental/IIncrementalService;->makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_17

    goto :goto_36

    :cond_17
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveDir() failed at making bind mount, errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_36
    :try_start_36
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    move-exception v0

    :goto_3f
    return-void

    :cond_40
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "moveDir() requires that destination dir already exists."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1, v1, p2}, Landroid/os/incremental/IIncrementalService;->makeLink(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    goto :goto_2a

    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveFile() failed at makeLink(), errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2a
    :try_start_2a
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move-exception v0

    :goto_33
    return-void
.end method

.method public onInstallationComplete()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->onInstallationComplete(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method

.method public registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z
    .registers 13

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-virtual {p1}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/os/incremental/IIncrementalService;->startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_14

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public unBind(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->deleteBindMount(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    goto :goto_2a

    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2a
    return-void
.end method

.method public unlink(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1, p1}, Landroid/os/incremental/IIncrementalService;->unlink(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    goto :goto_2a

    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unlink() failed with errno "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2a
    return-void
.end method

.method public unregisterLoadingProgressListener()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->unregisterLoadingProgressListener(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public waitForNativeBinariesExtraction()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/os/incremental/IncrementalStorage;->mService:Landroid/os/incremental/IIncrementalService;

    iget v1, p0, Landroid/os/incremental/IncrementalStorage;->mId:I

    invoke-interface {v0, v1}, Landroid/os/incremental/IIncrementalService;->waitForNativeBinariesExtraction(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method
