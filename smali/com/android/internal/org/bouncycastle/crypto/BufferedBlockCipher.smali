# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;
.super Ljava/lang/Object;


# instance fields
.field protected buf:[B

.field protected bufOff:I

.field protected cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field protected forEncryption:Z

.field protected partialBlockOkay:Z

.field protected pgpCFB:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-lez v2, :cond_28

    const-string v4, "PGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    move v4, v0

    :goto_29
    iput-boolean v4, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-nez v4, :cond_40

    instance-of v4, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;

    if-eqz v4, :cond_32

    goto :goto_40

    :cond_32
    if-lez v2, :cond_3d

    const-string v4, "OpenPGP"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    move v0, v3

    :cond_3d
    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    goto :goto_42

    :cond_40
    :goto_40
    iput-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    :goto_42
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int v2, p2, v1

    array-length v3, p1

    if-gt v2, v3, :cond_2e

    if-eqz v1, :cond_29

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->partialBlockOkay:Z

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    move v0, v1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    :cond_21
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v2, "data not block size aligned"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_37

    :cond_29
    :goto_29
    nop

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    return v0

    :cond_2e
    :try_start_2e
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v2, "output buffer too short for doFinal()"

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_37

    :catchall_37
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    throw v0
.end method

.method public getBlockSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputSize(I)I
    .registers 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->pgpCFB:Z

    if-eqz v1, :cond_20

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    goto :goto_25

    :cond_1a
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    goto :goto_25

    :cond_20
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    :goto_25
    sub-int v2, v0, v1

    return v2
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->forEncryption:Z

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processByte(B[BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

    array-length v2, v1

    if-ne v3, v2, :cond_17

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :cond_17
    return v0
.end method

.method public processBytes([BII[BI)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_63

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_1b

    add-int v2, p5, v1

    array-length v3, p4

    if-gt v2, v3, :cond_12

    goto :goto_1b

    :cond_12
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v3, "output buffer too short"

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1b
    :goto_1b
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v4, v3

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    if-le p3, v4, :cond_46

    invoke-static {p1, p2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    invoke-interface {v3, v5, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    sub-int/2addr p3, v4

    add-int/2addr p2, v4

    :goto_35
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v3, v3

    if-le p3, v3, :cond_46

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v5, p5, v2

    invoke-interface {v3, p1, p2, p4, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_35

    :cond_46
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v7, v5

    if-ne v3, v7, :cond_62

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    add-int v7, p5, v2

    invoke-interface {v3, v5, v6, p4, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v2, v3

    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    :cond_62
    return v2

    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_c

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->bufOff:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
