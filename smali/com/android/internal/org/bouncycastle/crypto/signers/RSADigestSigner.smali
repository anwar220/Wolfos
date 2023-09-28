# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Signer;


# static fields
.field private static final oidMap:Ljava/util/Hashtable;


# instance fields
.field private final algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private forSigning:Z

.field private final rsaEngine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_SHA1:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-384"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-512"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-512/224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA-512/256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 4

    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->oidMap:Ljava/util/Hashtable;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    if-eqz p2, :cond_1d

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_20

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_20
    return-void
.end method

.method private derEncode([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->algId:Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v0, :cond_27

    :try_start_4
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_8

    return-object p1

    :catch_8
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "malformed DigestInfo for NONEwithRSA hash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    move-object v0, v1

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public generateSignature()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/CryptoException;,
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_12
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_1e

    return-object v2

    :catch_1e
    move-exception v1

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to encode signature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSADigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "withRSA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_13

    :cond_10
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_13
    if-eqz p1, :cond_25

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_25

    :cond_1c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "signing requires private key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    :goto_25
    if-nez p1, :cond_37

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_37

    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "verification requires public key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->reset()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .registers 13

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->forSigning:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    :try_start_12
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->rsaEngine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/RSADigestSigner;->derEncode([B)[B

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1d} :catch_6d

    nop

    array-length v4, v1

    array-length v5, v3

    if-ne v4, v5, :cond_27

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    return v2

    :cond_27
    array-length v4, v1

    array-length v5, v3

    add-int/lit8 v5, v5, -0x2

    if-ne v4, v5, :cond_69

    array-length v4, v1

    array-length v5, v0

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x2

    array-length v5, v3

    array-length v6, v0

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x1

    aget-byte v7, v3, v6

    add-int/lit8 v7, v7, -0x2

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    const/4 v7, 0x3

    aget-byte v8, v3, v7

    add-int/lit8 v8, v8, -0x2

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_49
    array-length v9, v0

    if-ge v8, v9, :cond_59

    add-int v9, v4, v8

    aget-byte v9, v1, v9

    add-int v10, v5, v8

    aget-byte v10, v3, v10

    xor-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :cond_59
    const/4 v8, 0x0

    :goto_5a
    if-ge v8, v4, :cond_65

    aget-byte v9, v1, v8

    aget-byte v10, v3, v8

    xor-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5a

    :cond_65
    if-nez v7, :cond_68

    move v2, v6

    :cond_68
    return v2

    :cond_69
    invoke-static {v3, v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    return v2

    :catch_6d
    move-exception v1

    return v2

    :cond_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSADigestSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
