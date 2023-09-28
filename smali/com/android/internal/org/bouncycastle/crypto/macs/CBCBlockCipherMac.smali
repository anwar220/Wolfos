# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_28

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    return-void

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    :goto_b
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_30

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    goto :goto_b

    :cond_18
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ne v1, v0, :cond_27

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v3, v2, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    :cond_27
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    :cond_30
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v3, v2, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v0
.end method

.method public init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_c

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 6

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .registers 10

    if-ltz p3, :cond_3a

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_2d

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_21
    if-le p3, v0, :cond_2d

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, p1, p2, v3, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_21

    :cond_2d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    return-void

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
