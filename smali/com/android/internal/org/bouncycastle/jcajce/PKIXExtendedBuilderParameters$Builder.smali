# classes4.dex

.class public Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

.field private excludedCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private maxPathLength:I


# direct methods
.method static bridge synthetic -$$Nest$fgetbaseParameters(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexcludedCerts(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxPathLength(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return p0
.end method

.method public constructor <init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->baseParameters:Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return-void
.end method


# virtual methods
.method public addExcludedCerts(Ljava/util/Set;)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->excludedCerts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .registers 3

    new-instance v0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters;-><init>(Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters-IA;)V

    return-object v0
.end method

.method public setMaxPathLength(I)Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .registers 4

    const/4 v0, -0x1

    if-lt p1, v0, :cond_6

    iput p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->maxPathLength:I

    return-object p0

    :cond_6
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "The maximum path length parameter can not be less than -1."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
