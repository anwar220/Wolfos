# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA224;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;
    }
.end annotation


# instance fields
.field private final byteSize:I

.field private final delegate:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "AndroidOpenSSL"

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    nop

    return-void

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v1}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0
    :try_end_8
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I

    return v0
.end method

.method public getDigestSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
