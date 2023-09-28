# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;


# instance fields
.field private digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    return-void
.end method

.method private generateDerivedKey()[B
    .registers 6

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->password:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->password:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->salt:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->salt:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v1, 0x1

    :goto_23
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->iterationCount:I

    if-ge v1, v2, :cond_35

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_35
    return-object v0
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5

    div-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    if-gt p1, v0, :cond_15

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t generate a derived key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    if-gt v0, v1, :cond_1e

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S1ParametersGenerator;->generateDerivedKey()[B

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t generate a derived key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
