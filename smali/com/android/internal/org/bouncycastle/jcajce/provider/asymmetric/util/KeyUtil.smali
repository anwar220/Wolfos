# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodedPrivateKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B
    .registers 3

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getEncodedPrivateKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 4

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedPrivateKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;)[B

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    :catch_e
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 4

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)[B
    .registers 4

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lcom/android/internal/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getEncodedSubjectPublicKeyInfo(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .registers 3

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method
