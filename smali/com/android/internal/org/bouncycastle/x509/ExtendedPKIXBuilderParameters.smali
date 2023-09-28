# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;
.super Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;


# instance fields
.field private excludedCerts:Ljava/util/Set;

.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/util/Selector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-virtual {p0, p2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lcom/android/internal/org/bouncycastle/util/Selector;)V

    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;
    .registers 4

    :try_start_0
    new-instance v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lcom/android/internal/org/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/util/Selector;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_18

    nop

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lcom/android/internal/org/bouncycastle/util/Selector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lcom/android/internal/org/bouncycastle/util/Selector;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_14

    move-object v0, v1

    nop

    invoke-virtual {v0, p0}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    return-object v0

    :catch_14
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getExcludedCerts()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPathLength()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method public setExcludedCerts(Ljava/util/Set;)V
    .registers 3

    if-nez p1, :cond_5

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_c

    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    :goto_c
    return-void
.end method

.method public setMaxPathLength(I)V
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    return-void

    :cond_6
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The maximum path length parameter can not be less than -1."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    iget v1, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    iput v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    :cond_17
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    :cond_24
    return-void
.end method
