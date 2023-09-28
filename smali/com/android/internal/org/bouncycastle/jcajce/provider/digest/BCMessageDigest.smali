# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.super Ljava/security/MessageDigest;


# instance fields
.field protected digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field protected digestSize:I


# direct methods
.method protected constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    return-void
.end method


# virtual methods
.method public engineDigest()[B
    .registers 4

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public engineGetDigestLength()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    return v0
.end method

.method public engineReset()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public engineUpdate(B)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method
