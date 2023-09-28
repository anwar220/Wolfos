# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    }
.end annotation


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field public static final PKIX_VALIDITY_MODEL:I


# instance fields
.field private final baseParameters:Ljava/security/cert/PKIXParameters;

.field private final date:Ljava/util/Date;

.field private final extraCRLStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final namedCRLStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation
.end field

.field private final namedCertificateStoreMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final revocationEnabled:Z

.field private final targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private final useDeltas:Z

.field private final validityDate:Ljava/util/Date;

.field private final validityModel:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/PKIXParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextraCRLStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextraCertStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnamedCRLStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnamedCertificateStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuseDeltas(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalidityModel(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    return p0
.end method

.method private constructor <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetvalidityDate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetdate(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetextraCertStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetnamedCertificateStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetextraCRLStores(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetnamedCRLStoreMap(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgettargetConstraints(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetrevocationEnabled(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetuseDeltas(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgetvalidityModel(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->-$$Nest$fgettrustAnchors(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public getCRLStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCRLStores:Ljava/util/List;

    return-object v0
.end method

.method public getCertPathCheckers()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCertStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateStores()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->extraCertStores:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .registers 4

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getInitialPolicies()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNamedCRLStoreMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCRLStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public getNamedCertificateStoreMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/android/internal/org/bouncycastle/asn1/x509/GeneralName;",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->namedCertificateStoreMap:Ljava/util/Map;

    return-object v0
.end method

.method public getPolicyQualifiersRejected()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v0

    return v0
.end method

.method public getSigProvider()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetConstraints()Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->targetConstraints:Lcom/android/internal/org/bouncycastle/jcajce/PKIXCertStoreSelector;

    return-object v0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->trustAnchors:Ljava/util/Set;

    return-object v0
.end method

.method public getValidityDate()Ljava/util/Date;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_11

    :cond_6
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :goto_11
    return-object v0
.end method

.method public getValidityModel()I
    .registers 2

    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->validityModel:I

    return v0
.end method

.method public isAnyPolicyInhibited()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v0

    return v0
.end method

.method public isExplicitPolicyRequired()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    return v0
.end method

.method public isPolicyMappingInhibited()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->baseParameters:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v0

    return v0
.end method

.method public isRevocationEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->revocationEnabled:Z

    return v0
.end method

.method public isUseDeltasEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;->useDeltas:Z

    return v0
.end method
