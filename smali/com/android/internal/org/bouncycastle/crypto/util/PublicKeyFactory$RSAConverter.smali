# classes4.dex

.class Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;
.super Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RSAConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/util/PublicKeyFactory$RSAConverter;-><init>()V

    return-void
.end method


# virtual methods
.method getPublicKeyParameters(Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPublicKey;

    move-result-object v0

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/pkcs/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method
