# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;


# instance fields
.field private hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

.field private state:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    return-void
.end method

.method private F([BI[B[BI)V
    .registers 12

    if-eqz p2, :cond_47

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p3

    invoke-interface {v1, p3, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v1

    invoke-static {v1, v0, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    :goto_1f
    if-ge v1, p2, :cond_46

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v4, v3

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    const/4 v2, 0x0

    :goto_31
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v4, v3

    if-eq v2, v4, :cond_43

    add-int v4, p5, v2

    aget-byte v5, p4, v4

    aget-byte v3, v3, v2

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p4, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_46
    return-void

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateDerivedKey(I)[B
    .registers 16

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    mul-int v3, v1, v0

    new-array v9, v3, [B

    const/4 v3, 0x0

    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v10, v4

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v4, v10}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v4, 0x1

    move v11, v3

    move v12, v4

    :goto_23
    if-gt v12, v1, :cond_42

    const/4 v3, 0x3

    move v13, v3

    :goto_27
    aget-byte v3, v2, v13

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v13

    if-nez v3, :cond_33

    add-int/lit8 v13, v13, -0x1

    goto :goto_27

    :cond_33
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    move-object v3, p0

    move-object v6, v2

    move-object v7, v9

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    add-int/2addr v11, v0

    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    :cond_42
    return-object v9
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    div-int/lit8 p1, p1, 0x8

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
