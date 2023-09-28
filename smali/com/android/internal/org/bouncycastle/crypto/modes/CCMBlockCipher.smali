# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blockSize:I

.field private cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculateMac([BII[B)I
    .registers 15

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    :cond_22
    aget-byte v3, v2, v4

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    aget-byte v3, v2, v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v6, v5

    rsub-int/lit8 v6, v6, 0xf

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x7

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    array-length v3, v5

    invoke-static {v5, v4, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, p3

    const/4 v5, 0x1

    :goto_49
    if-lez v3, :cond_57

    array-length v6, v2

    sub-int/2addr v6, v5

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    ushr-int/lit8 v3, v3, 0x8

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_57
    array-length v6, v2

    invoke-interface {v0, v2, v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_c2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v6

    const v7, 0xff00

    if-ge v6, v7, :cond_76

    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v7, 0x2

    goto :goto_95

    :cond_76
    const/4 v7, -0x1

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v7, -0x2

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v7, 0x6

    :goto_95
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v8, :cond_9d

    array-length v9, v8

    invoke-interface {v0, v8, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_9d
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_b4

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v9

    invoke-interface {v0, v8, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_b4
    add-int v8, v7, v6

    rem-int/2addr v8, v1

    if-eqz v8, :cond_c2

    move v7, v8

    :goto_ba
    if-eq v7, v1, :cond_c2

    invoke-interface {v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_ba

    :cond_c2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    invoke-interface {v0, p4, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v1

    return v1
.end method

.method private getAssociatedTextLength()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    array-length v1, v1

    :goto_d
    add-int/2addr v0, v1

    return v0
.end method

.method private getMacSize(ZI)I
    .registers 5

    if-eqz p1, :cond_18

    const/16 v0, 0x20

    if-lt p2, v0, :cond_f

    const/16 v0, 0x80

    if-gt p2, v0, :cond_f

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_f

    goto :goto_18

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag length in octets must be one of {4,6,8,10,12,14,16}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_18
    ushr-int/lit8 v0, p2, 0x3

    return v0
.end method

.method private hasAssociatedText()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .registers 5

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getOutputSize(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    :cond_f
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_15

    const/4 v1, 0x0

    goto :goto_17

    :cond_15
    sub-int v1, v0, v1

    :goto_17
    return v1
.end method

.method public getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_24

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    goto :goto_41

    :cond_24
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_5f

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    const/16 v1, 0x40

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    nop

    :goto_41
    if-eqz v0, :cond_45

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    :cond_45
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v1, :cond_56

    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_56

    array-length v1, v1

    const/16 v2, 0xd

    if-gt v1, v2, :cond_56

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    return-void

    :cond_56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "nonce must have length from 7 to 13 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameters passed to CCM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public processBytes([BII[BI)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processPacket([BII[BI)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    if-eqz v6, :cond_114

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v7, v6

    rsub-int/lit8 v8, v7, 0xf

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ge v8, v9, :cond_28

    mul-int/lit8 v9, v8, 0x8

    shl-int v9, v10, v9

    if-ge v3, v9, :cond_20

    goto :goto_28

    :cond_20
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v10, "CCM packet too large for choice of q."

    invoke-direct {v6, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_28
    :goto_28
    iget v9, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v9, v9, [B

    add-int/lit8 v11, v8, -0x1

    and-int/lit8 v11, v11, 0x7

    int-to-byte v11, v11

    const/4 v12, 0x0

    aput-byte v11, v9, v12

    array-length v11, v6

    invoke-static {v6, v12, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-direct {v6, v10}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iget-boolean v10, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v11, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    invoke-direct {v11, v13, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v6, v10, v11}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    move/from16 v10, p2

    move/from16 v11, p5

    iget-boolean v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    const-string v14, "Output buffer too short."

    if-eqz v13, :cond_a1

    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v13, v3

    array-length v15, v4

    add-int v12, v13, v5

    if-lt v15, v12, :cond_99

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    iget v12, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v12, v12, [B

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v15, 0x0

    invoke-interface {v6, v14, v15, v12, v15}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_6c
    add-int v14, v2, v3

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v14, v15

    if-ge v10, v14, :cond_7b

    invoke-interface {v6, v1, v10, v4, v11}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v11, v14

    add-int/2addr v10, v14

    goto :goto_6c

    :cond_7b
    new-array v14, v15, [B

    add-int v15, v3, v2

    sub-int/2addr v15, v10

    move/from16 v16, v7

    const/4 v7, 0x0

    invoke-static {v1, v10, v14, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v6, v14, v7, v14, v7}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v15, v3, v2

    sub-int/2addr v15, v10

    invoke-static {v14, v7, v4, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v15, v5, v3

    move/from16 v17, v8

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {v12, v7, v4, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_fc

    :cond_99
    move/from16 v16, v7

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v7, v14}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a1
    move/from16 v16, v7

    move/from16 v17, v8

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt v3, v7, :cond_10c

    sub-int v13, v3, v7

    array-length v8, v4

    add-int v12, v13, v5

    if-lt v8, v12, :cond_106

    add-int v8, v2, v13

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v14, 0x0

    invoke-static {v1, v8, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v6, v7, v14, v7, v14}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    :goto_bf
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v12, v8

    if-eq v7, v12, :cond_ca

    aput-byte v14, v8, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v14, 0x0

    goto :goto_bf

    :cond_ca
    :goto_ca
    add-int v7, v2, v13

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v7, v8

    if-ge v10, v7, :cond_d9

    invoke-interface {v6, v1, v10, v4, v11}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget v7, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v11, v7

    add-int/2addr v10, v7

    goto :goto_ca

    :cond_d9
    new-array v7, v8, [B

    sub-int v8, v10, v2

    sub-int v8, v13, v8

    const/4 v12, 0x0

    invoke-static {v1, v10, v7, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v6, v7, v12, v7, v12}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int v8, v10, v2

    sub-int v8, v13, v8

    invoke-static {v7, v12, v4, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v8, v8, [B

    invoke-direct {v0, v4, v5, v13, v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v12, v8}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v12

    if-eqz v12, :cond_fd

    :goto_fc
    return v13

    :cond_fd
    new-instance v12, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v14, "mac check in CCM failed"

    invoke-direct {v12, v14}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_106
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v7, v14}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_10c
    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v8, "data too short"

    invoke-direct {v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_114
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "CCM cipher unitialized."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public processPacket([BII)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    goto :goto_12

    :cond_a
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt p3, v0, :cond_1c

    sub-int v0, p3, v0

    new-array v0, v0, [B

    :goto_12
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    return-object v0

    :cond_1c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    return-void
.end method
