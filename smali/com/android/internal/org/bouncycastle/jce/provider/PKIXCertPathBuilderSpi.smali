# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;


# instance fields
.field private certPathException:Ljava/lang/Exception;

.field private final isForCRLCheck:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->isForCRLCheck:Z

    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .registers 13

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object v1

    :cond_13
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v2

    if-le v0, v2, :cond_27

    return-object v1

    :cond_27
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_2b
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    new-instance v2, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;

    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->isForCRLCheck:Z

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>(Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_37} :catch_103

    nop

    :try_start_38
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3
    :try_end_4c
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_38 .. :try_end_4c} :catch_fa

    if-eqz v3, :cond_82

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_50
    invoke-virtual {v1, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v5
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_79
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_50 .. :try_end_54} :catch_fa

    move-object v3, v5

    nop

    :try_start_56
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v5

    check-cast v5, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5c} :catch_70
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_56 .. :try_end_5c} :catch_fa

    move-object v4, v5

    nop

    :try_start_5e
    new-instance v5, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v6

    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v7

    invoke-virtual {v4}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v5

    :catch_70
    move-exception v5

    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Certification path could not be validated."

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_79
    move-exception v5

    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Certification path could not be constructed from certificate list."

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_92
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_5e .. :try_end_92} :catch_fa

    :try_start_92
    sget-object v4, Lcom/android/internal/org/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_ab
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_92 .. :try_end_ab} :catch_f1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_92 .. :try_end_ab} :catch_fa

    nop

    :try_start_ac
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_b1
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_ac .. :try_end_b1} :catch_fa

    :try_start_b1
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v5

    invoke-static {p1, v5, v3}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_c0
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_b1 .. :try_end_c0} :catch_e8

    nop

    :try_start_c1
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e0

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_cb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_df

    if-nez v0, :cond_df

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v6, p2, p3}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v7

    move-object v0, v7

    goto :goto_cb

    :cond_df
    goto :goto_fd

    :cond_e0
    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No issuer certificate for certificate in certification path found."

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_e8
    move-exception v5

    new-instance v6, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v6, v7, v5}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_f1
    move-exception v4

    new-instance v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v5, v6, v4}, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_fa
    .catch Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException; {:try_start_c1 .. :try_end_fa} :catch_fa

    :catch_fa
    move-exception v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    :goto_fd
    if-nez v0, :cond_102

    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_102
    return-object v0

    :catch_103
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception creating support classes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_51

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v1, p1

    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v1, :cond_43

    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;

    invoke-virtual {v0, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCertificateStore(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    goto :goto_1b

    :cond_2b
    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    goto :goto_4c

    :cond_43
    new-instance v1, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    move-object v2, p1

    check-cast v2, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    move-object v2, v1

    :goto_4c
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v0

    goto :goto_58

    :cond_51
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_af

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    :goto_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTargets(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    if-nez v3, :cond_79

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->build(Ljava/security/cert/X509Certificate;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v3

    goto :goto_66

    :cond_79
    if-nez v3, :cond_9f

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v5, :cond_9f

    instance-of v5, v5, Lcom/android/internal/org/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v5, :cond_95

    new-instance v5, Ljava/security/cert/CertPathBuilderException;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_95
    new-instance v5, Ljava/security/cert/CertPathBuilderException;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    const-string v7, "Possible certificate chain could not be validated."

    invoke-direct {v5, v7, v6}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_9f
    if-nez v3, :cond_ae

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v5, :cond_a6

    goto :goto_ae

    :cond_a6
    new-instance v5, Ljava/security/cert/CertPathBuilderException;

    const-string v6, "Unable to find certificate chain."

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_ae
    :goto_ae
    return-object v3

    :cond_af
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameters must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
