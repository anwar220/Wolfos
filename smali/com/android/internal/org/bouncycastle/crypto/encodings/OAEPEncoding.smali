# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 4

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    const/4 v0, 0x0

    if-eqz p4, :cond_19

    array-length v1, p4

    invoke-interface {p2, p4, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    :cond_19
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method private ItoOSP(I[B)V
    .registers 5

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .registers 13

    new-array v0, p4, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v2, v2, [B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    :goto_13
    array-length v4, v1

    div-int v4, p4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_35

    invoke-direct {p0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v4, v1

    mul-int/2addr v4, v3

    array-length v6, v1

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_35
    array-length v4, v1

    mul-int/2addr v4, v3

    if-ge v4, p4, :cond_55

    invoke-direct {p0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v4, v1

    mul-int/2addr v4, v3

    array-length v6, v0

    array-length v7, v1

    mul-int/2addr v7, v3

    sub-int/2addr v6, v7

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_55
    return-object v0
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    array-length v2, v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    if-ge v2, v3, :cond_1b

    move v2, v4

    goto :goto_1c

    :cond_1b
    move v2, v5

    :goto_1c
    array-length v3, v0

    array-length v6, v1

    if-gt v3, v6, :cond_28

    array-length v3, v1

    array-length v6, v0

    sub-int/2addr v3, v6

    array-length v6, v0

    invoke-static {v0, v5, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2d

    :cond_28
    array-length v3, v1

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    :goto_2d
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v3

    array-length v7, v1

    array-length v8, v3

    sub-int/2addr v7, v8

    array-length v3, v3

    invoke-direct {p0, v1, v6, v7, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    const/4 v6, 0x0

    :goto_39
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v7

    if-eq v6, v8, :cond_49

    aget-byte v7, v1, v6

    aget-byte v8, v3, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_49
    array-length v6, v7

    array-length v8, v1

    array-length v7, v7

    sub-int/2addr v8, v7

    invoke-direct {p0, v1, v5, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    :goto_54
    array-length v7, v1

    if-eq v6, v7, :cond_67

    aget-byte v7, v1, v6

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v8, v8

    sub-int v8, v6, v8

    aget-byte v8, v3, v8

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    :cond_67
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_69
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v9, v8

    if-eq v7, v9, :cond_7a

    aget-byte v9, v8, v7

    array-length v8, v8

    add-int/2addr v8, v7

    aget-byte v8, v1, v8

    if-eq v9, v8, :cond_77

    const/4 v6, 0x1

    :cond_77
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    :cond_7a
    array-length v7, v1

    array-length v8, v8

    mul-int/lit8 v8, v8, 0x2

    :goto_7e
    array-length v9, v1

    if-eq v8, v9, :cond_95

    aget-byte v9, v1, v8

    if-eqz v9, :cond_87

    move v9, v4

    goto :goto_88

    :cond_87
    move v9, v5

    :goto_88
    array-length v10, v1

    if-ne v7, v10, :cond_8d

    move v10, v4

    goto :goto_8e

    :cond_8d
    move v10, v5

    :goto_8e
    and-int/2addr v9, v10

    if-eqz v9, :cond_92

    move v7, v8

    :cond_92
    add-int/lit8 v8, v8, 0x1

    goto :goto_7e

    :cond_95
    array-length v8, v1

    sub-int/2addr v8, v4

    if-le v7, v8, :cond_9b

    move v8, v4

    goto :goto_9c

    :cond_9b
    move v8, v5

    :goto_9c
    aget-byte v9, v1, v7

    if-eq v9, v4, :cond_a2

    move v9, v4

    goto :goto_a3

    :cond_a2
    move v9, v5

    :goto_a3
    or-int/2addr v8, v9

    add-int/2addr v7, v4

    or-int v4, v6, v2

    or-int/2addr v4, v8

    if-nez v4, :cond_b6

    array-length v4, v1

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    array-length v9, v4

    invoke-static {v1, v7, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    return-object v4

    :cond_b6
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "data wrong"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public encodeBlock([BII)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_7a

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v2, v1

    array-length v3, v0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int/2addr v3, v5

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    :goto_3d
    array-length v5, v0

    if-eq v3, v5, :cond_50

    aget-byte v5, v0, v3

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int v6, v3, v6

    aget-byte v6, v2, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    :cond_50
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v3

    array-length v6, v0

    array-length v7, v3

    sub-int/2addr v6, v7

    array-length v3, v3

    invoke-direct {p0, v0, v5, v6, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    const/4 v3, 0x0

    :goto_62
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    if-eq v3, v5, :cond_72

    aget-byte v5, v0, v3

    aget-byte v6, v2, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_72
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v3

    return-object v3

    :cond_7a
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input data too long"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputBlockSize()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_13

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1

    :cond_13
    return v0
.end method

.method public getOutputBlockSize()I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method public getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_e

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_14

    :cond_e
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    :goto_14
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    return-void
.end method

.method public processBlock([BII)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
