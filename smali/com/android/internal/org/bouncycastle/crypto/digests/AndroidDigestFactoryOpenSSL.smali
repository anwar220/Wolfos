# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryOpenSSL;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;-><init>()V

    return-object v0
.end method

.method public getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;-><init>()V

    return-object v0
.end method

.method public getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA224;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA224;-><init>()V

    return-object v0
.end method

.method public getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;-><init>()V

    return-object v0
.end method

.method public getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;-><init>()V

    return-object v0
.end method

.method public getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;-><init>()V

    return-object v0
.end method
