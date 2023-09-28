# classes4.dex

.class Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CertSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorClone"
.end annotation


# instance fields
.field private final selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;)V
    .registers 7

    invoke-direct {p0}, Ljava/security/cert/X509CertSelector;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->-$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509CertSelector;

    if-eqz v0, :cond_b0

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->-$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;)Ljava/security/cert/CertSelector;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CertSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getAuthorityKeyIdentifier()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setAuthorityKeyIdentifier([B)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getBasicConstraints()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setBasicConstraints(I)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getCertificateValid()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setCertificateValid(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getKeyUsage()[Z

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setKeyUsage([Z)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getMatchAllSubjectAltNames()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setMatchAllSubjectAltNames(Z)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPrivateKeyValid()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setPrivateKeyValid(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectKeyIdentifier()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubjectKeyIdentifier([B)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubjectPublicKey(Ljava/security/PublicKey;)V

    :try_start_59
    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getExtendedKeyUsage()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setExtendedKeyUsage(Ljava/util/Set;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getIssuerAsBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setIssuer([B)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getNameConstraints()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setNameConstraints([B)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPathToNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setPathToNames(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getPolicy()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setPolicy(Ljava/util/Set;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectAsBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubject([B)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubjectAlternativeNames(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CertSelector;->getSubjectPublicKeyAlgID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_91} :catch_92

    goto :goto_b0

    :catch_92
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "base selector invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_b0
    :goto_b0
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/Certificate;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector$SelectorClone;->selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    if-nez v0, :cond_a

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_e

    :cond_8
    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    :goto_e
    return v0
.end method