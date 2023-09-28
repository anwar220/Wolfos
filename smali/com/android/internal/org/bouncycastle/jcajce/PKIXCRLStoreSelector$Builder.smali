# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseSelector:Ljava/security/cert/CRLSelector;

.field private completeCRLEnabled:Z

.field private deltaCRLIndicator:Z

.field private issuingDistributionPoint:[B

.field private issuingDistributionPointEnabled:Z

.field private maxBaseCRLNumber:Ljava/math/BigInteger;


# direct methods
.method static bridge synthetic -$$Nest$fgetbaseSelector(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/security/cert/CRLSelector;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcompleteCRLEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdeltaCRLIndicator(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetissuingDistributionPoint(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)[B
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetissuingDistributionPointEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxBaseCRLNumber(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;)Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-object p0
.end method

.method public constructor <init>(Ljava/security/cert/CRLSelector;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    invoke-interface {p1}, Ljava/security/cert/CRLSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRLSelector;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->baseSelector:Ljava/security/cert/CRLSelector;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector<",
            "+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector-IA;)V

    return-object v0
.end method

.method public setCompleteCRLEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->completeCRLEnabled:Z

    return-object p0
.end method

.method public setDeltaCRLIndicatorEnabled(Z)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->deltaCRLIndicator:Z

    return-object p0
.end method

.method public setIssuingDistributionPoint([B)V
    .registers 3

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPoint:[B

    return-void
.end method

.method public setIssuingDistributionPointEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->issuingDistributionPointEnabled:Z

    return-void
.end method

.method public setMaxBaseCRLNumber(Ljava/math/BigInteger;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->maxBaseCRLNumber:Ljava/math/BigInteger;

    return-void
.end method
