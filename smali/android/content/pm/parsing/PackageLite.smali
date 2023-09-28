# classes.dex

.class public Landroid/content/pm/parsing/PackageLite;
.super Ljava/lang/Object;


# instance fields
.field private final mBaseApkPath:Ljava/lang/String;

.field private final mBaseRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseRevisionCode:I

.field private final mConfigForSplit:[Ljava/lang/String;

.field private final mCoreApp:Z

.field private final mDebuggable:Z

.field private final mExtractNativeLibs:Z

.field private final mInstallLocation:I

.field private final mIsFeatureSplits:[Z

.field private final mIsSdkLibrary:Z

.field private final mIsolatedSplits:Z

.field private final mMultiArch:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mProfileableByShell:Z

.field private final mRequiredSplitTypes:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSplitApkPaths:[Ljava/lang/String;

.field private final mSplitNames:[Ljava/lang/String;

.field private final mSplitRequired:Z

.field private final mSplitRevisionCodes:[I

.field private final mSplitTypes:[Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetSdk:I

.field private final mUse32bitAbi:Z

.field private final mUseEmbeddedDex:Z

.field private final mUsesSplitNames:[Ljava/lang/String;

.field private final mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final mVersionCode:I

.field private final mVersionCodeMajor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            "[",
            "Ljava/lang/String;",
            "[Z[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[II[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/parsing/PackageLite;->mPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVersionCodeMajor()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mInstallLocation:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getVerifiers()[Landroid/content/pm/VerifierInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getRevisionCode()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRevisionCode:I

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isCoreApp()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mCoreApp:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isDebuggable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mDebuggable:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isMultiArch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mMultiArch:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isUse32bitAbi()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUse32bitAbi:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isExtractNativeLibs()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mExtractNativeLibs:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsolatedSplits()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsolatedSplits:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isUseEmbeddedDex()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUseEmbeddedDex:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    iput-object p11, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v0

    if-nez v0, :cond_6c

    invoke-direct {p0}, Landroid/content/pm/parsing/PackageLite;->hasAnyRequiredSplitTypes()Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_6c

    :cond_6a
    const/4 v0, 0x0

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 v0, 0x1

    :goto_6d
    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRequired:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isProfileableByShell()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mProfileableByShell:Z

    invoke-virtual {p3}, Landroid/content/pm/parsing/ApkLite;->isIsSdkLibrary()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsSdkLibrary:Z

    iput-object p4, p0, Landroid/content/pm/parsing/PackageLite;->mSplitNames:[Ljava/lang/String;

    iput-object p12, p0, Landroid/content/pm/parsing/PackageLite;->mSplitTypes:[Ljava/util/Set;

    iput-object p5, p0, Landroid/content/pm/parsing/PackageLite;->mIsFeatureSplits:[Z

    iput-object p6, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSplitNames:[Ljava/lang/String;

    iput-object p7, p0, Landroid/content/pm/parsing/PackageLite;->mConfigForSplit:[Ljava/lang/String;

    iput-object p8, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    iput-object p9, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRevisionCodes:[I

    iput p10, p0, Landroid/content/pm/parsing/PackageLite;->mTargetSdk:I

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private hasAnyRequiredSplitTypes()Z
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    new-instance v2, Landroid/content/pm/parsing/PackageLite$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/content/pm/parsing/PackageLite$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->find([Ljava/lang/Object;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method static synthetic lambda$hasAnyRequiredSplitTypes$0(Ljava/util/Set;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getAllApkPaths()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_17
    return-object v0
.end method

.method public getBaseApkPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseRequiredSplitTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRequiredSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getBaseRevisionCode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mBaseRevisionCode:I

    return v0
.end method

.method public getConfigForSplit()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mConfigForSplit:[Ljava/lang/String;

    return-object v0
.end method

.method public getInstallLocation()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mInstallLocation:I

    return v0
.end method

.method public getIsFeatureSplits()[Z
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsFeatureSplits:[Z

    return-object v0
.end method

.method public getLongVersionCode()J
    .registers 3

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredSplitTypes()[Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mRequiredSplitTypes:[Ljava/util/Set;

    return-object v0
.end method

.method public getSplitApkPaths()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitApkPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitRevisionCodes()[I
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRevisionCodes:[I

    return-object v0
.end method

.method public getSplitTypes()[Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitTypes:[Ljava/util/Set;

    return-object v0
.end method

.method public getTargetSdk()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mTargetSdk:I

    return v0
.end method

.method public getUsesSplitNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mUsesSplitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getVerifiers()[Landroid/content/pm/VerifierInfo;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/PackageLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCode:I

    return v0
.end method

.method public getVersionCodeMajor()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/PackageLite;->mVersionCodeMajor:I

    return v0
.end method

.method public isCoreApp()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mCoreApp:Z

    return v0
.end method

.method public isDebuggable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mDebuggable:Z

    return v0
.end method

.method public isExtractNativeLibs()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mExtractNativeLibs:Z

    return v0
.end method

.method public isIsSdkLibrary()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsSdkLibrary:Z

    return v0
.end method

.method public isIsolatedSplits()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mIsolatedSplits:Z

    return v0
.end method

.method public isMultiArch()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mMultiArch:Z

    return v0
.end method

.method public isProfileableByShell()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mProfileableByShell:Z

    return v0
.end method

.method public isSplitRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mSplitRequired:Z

    return v0
.end method

.method public isUse32bitAbi()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUse32bitAbi:Z

    return v0
.end method

.method public isUseEmbeddedDex()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/PackageLite;->mUseEmbeddedDex:Z

    return v0
.end method
