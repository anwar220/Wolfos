# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;
.super Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/BufferedBlockCipher;-><init>()V

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/StreamBlockCipher;

    if-nez v0, :cond_19

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_da

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    new-array v2, v0, [B

    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->forEncryption:Z

    const-string/jumbo v4, "need at least one block of input for CTS"

    const/4 v5, 0x0

    if-eqz v3, :cond_79

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_73

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-le v3, v0, :cond_6f

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    :goto_2a
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v4, v4

    if-eq v3, v4, :cond_3a

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    sub-int v6, v3, v0

    aget-byte v6, v2, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_3a
    move v3, v0

    :goto_3b
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v3, v4, :cond_4e

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v6, v4, v3

    sub-int v7, v3, v0

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_4e
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    instance-of v3, v3, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v3, :cond_62

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_69

    :cond_62
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_69
    add-int v3, p2, v0

    invoke-static {v2, v5, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ce

    :cond_6f
    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ce

    :cond_73
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_79
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_d4

    new-array v3, v0, [B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-le v4, v0, :cond_c4

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    instance-of v4, v4, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    if-eqz v4, :cond_97

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_9e

    :cond_97
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_9e
    move v4, v0

    :goto_9f
    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    if-eq v4, v6, :cond_b4

    sub-int v6, v4, v0

    sub-int v7, v4, v0

    aget-byte v7, v2, v7

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    aget-byte v8, v8, v4

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    :cond_b4
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v2, v5, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v4, p2, v0

    invoke-static {v3, v5, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ce

    :cond_c4
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-interface {v4, v6, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_ce
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->reset()V

    return v3

    :cond_d4
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_da
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string/jumbo v1, "output buffer to small in doFinal"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOutputSize(I)I
    .registers 3

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v1, v1

    rem-int v1, v0, v1

    if-nez v1, :cond_10

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    sub-int v2, v0, v2

    return v2

    :cond_10
    sub-int v2, v0, v1

    return v2
.end method

.method public processByte(B[BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v2, v2

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    invoke-static {v1, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->blockSize:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    :cond_20
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    aput-byte p1, v1, v2

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

    if-ltz p3, :cond_6b

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->getBlockSize()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->getUpdateOutputSize(I)I

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

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    array-length v3, v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr v3, v4

    if-le p3, v3, :cond_5e

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, p4, p5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    sub-int/2addr p3, v3

    add-int/2addr p2, v3

    :goto_40
    if-le p3, v0, :cond_5e

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    add-int v7, p5, v2

    invoke-interface {v4, v5, v6, p4, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_40

    :cond_5e
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->buf:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    add-int/2addr v4, p3

    iput v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CTSBlockCipher;->bufOff:I

    return v2

    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
