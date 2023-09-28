# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs1.not_strict"

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs1.strict"


# instance fields
.field private blockBuffer:[B

.field private engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private fallback:[B

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private pLen:I

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    array-length v0, p2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    return-void
.end method

.method private static checkPkcs1Encoding([BI)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    xor-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    :goto_c
    if-ge v2, v1, :cond_21

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    shr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_21
    array-length v2, p0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x1

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    and-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, -0x1

    not-int v2, v2

    return v2
.end method

.method private decodeBlock([BII)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v2, v0

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1f

    move v2, v4

    goto :goto_20

    :cond_1f
    move v2, v5

    :goto_20
    and-int/2addr v1, v2

    array-length v2, v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_2b

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    goto :goto_2c

    :cond_2b
    move-object v2, v0

    :goto_2c
    aget-byte v3, v2, v5

    iget-boolean v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v6, :cond_39

    const/4 v6, 0x2

    if-eq v3, v6, :cond_37

    move v6, v4

    goto :goto_38

    :cond_37
    move v6, v5

    :goto_38
    goto :goto_3e

    :cond_39
    if-eq v3, v4, :cond_3d

    move v6, v4

    goto :goto_3e

    :cond_3d
    move v6, v5

    :goto_3e
    invoke-direct {p0, v3, v2}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->findStart(B[B)I

    move-result v7

    add-int/2addr v7, v4

    const/16 v8, 0xa

    if-ge v7, v8, :cond_48

    goto :goto_49

    :cond_48
    move v4, v5

    :goto_49
    or-int/2addr v4, v6

    if-nez v4, :cond_62

    if-nez v1, :cond_57

    array-length v4, v2

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    array-length v8, v4

    invoke-static {v2, v7, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_57
    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "block incorrect size"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_62
    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "block incorrect"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private decodeBlockOrRandom([BII)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v1, :cond_18

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1a

    :cond_18
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    :goto_1a
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v3, v0

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    move v3, v5

    :goto_29
    and-int/2addr v2, v3

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    goto :goto_30

    :cond_2f
    move-object v2, v0

    :goto_30
    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    move-result v3

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v4, v4, [B

    const/4 v6, 0x0

    :goto_3b
    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-ge v6, v7, :cond_50

    array-length v8, v2

    sub-int/2addr v8, v7

    add-int/2addr v8, v6

    aget-byte v7, v2, v8

    not-int v8, v3

    and-int/2addr v7, v8

    aget-byte v8, v1, v6

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    :cond_50
    invoke-static {v2, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    return-object v4

    :cond_54
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encodeBlock([BII)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_54

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    aput-byte v3, v0, v2

    const/4 v1, 0x1

    :goto_17
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_22

    const/4 v4, -0x1

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_22
    goto :goto_42

    :cond_23
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x2

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    :goto_2c
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_42

    :goto_31
    aget-byte v4, v0, v1

    if-nez v4, :cond_3f

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_31

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_42
    :goto_42
    array-length v1, v0

    sub-int/2addr v1, p3

    sub-int/2addr v1, v3

    aput-byte v2, v0, v1

    array-length v1, v0

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    return-object v1

    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findStart(B[B)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_3
    array-length v3, p2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2d

    aget-byte v3, p2, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_f

    move v7, v6

    goto :goto_10

    :cond_f
    move v7, v5

    :goto_10
    if-gez v0, :cond_14

    move v8, v6

    goto :goto_15

    :cond_14
    move v8, v5

    :goto_15
    and-int/2addr v7, v8

    if-eqz v7, :cond_19

    move v0, v2

    :cond_19
    if-ne p1, v6, :cond_1d

    move v7, v6

    goto :goto_1e

    :cond_1d
    move v7, v5

    :goto_1e
    if-gez v0, :cond_22

    move v8, v6

    goto :goto_23

    :cond_22
    move v8, v5

    :goto_23
    and-int/2addr v7, v8

    if-eq v3, v4, :cond_27

    move v5, v6

    :cond_27
    and-int v4, v7, v5

    or-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2d
    if-eqz v1, :cond_30

    return v4

    :cond_30
    return v0
.end method

.method private useStrict()Z
    .registers 4

    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.not_strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.strict"

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_d

    add-int/lit8 v1, v0, -0xa

    return v1

    :cond_d
    return v0
.end method

.method public getOutputBlockSize()I
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v1, v0, -0xa

    return v1
.end method

.method public getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_15

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_26

    :cond_15
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_26

    if-eqz p1, :cond_26

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez v1, :cond_52

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_4a

    goto :goto_52

    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encoder requires random"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_52
    :goto_52
    return-void
.end method

.method public processBlock([BII)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
