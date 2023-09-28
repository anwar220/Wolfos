# classes4.dex

.class Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;
.super Ljava/security/cert/X509CRLSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectorClone"
.end annotation


# instance fields
.field private final selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;


# direct methods
.method constructor <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)V
    .registers 4

    invoke-direct {p0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->-$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/X509CRLSelector;

    if-eqz v0, :cond_36

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->-$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;)Ljava/security/cert/CRLSelector;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLSelector;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getCertificateChecking()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getDateAndTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setDateAndTime(Ljava/util/Date;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setIssuers(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getMinCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setMinCRLNumber(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Ljava/security/cert/X509CRLSelector;->getMaxCRL()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    :cond_36
    return-void
.end method


# virtual methods
.method public match(Ljava/security/cert/CRL;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$SelectorClone;->selector:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    if-nez v0, :cond_a

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_e

    :cond_8
    const/4 v0, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;->match(Ljava/security/cert/CRL;)Z

    move-result v0

    :goto_e
    return v0
.end method
