# classes.dex

.class public Landroid/content/pm/parsing/ApkLite;
.super Ljava/lang/Object;


# instance fields
.field private final mConfigForSplit:Ljava/lang/String;

.field private final mCoreApp:Z

.field private final mDebuggable:Z

.field private final mExtractNativeLibs:Z

.field private final mFeatureSplit:Z

.field private final mHasDeviceAdminReceiver:Z

.field private final mInstallLocation:I

.field private final mIsSdkLibrary:Z

.field private final mIsolatedSplits:Z

.field private final mMinSdkVersion:I

.field private final mMultiArch:Z

.field private final mOverlayIsStatic:Z

.field private final mOverlayPriority:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mProfileableByShell:Z

.field private final mRequiredSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequiredSystemPropertyName:Ljava/lang/String;

.field private final mRequiredSystemPropertyValue:Ljava/lang/String;

.field private final mRevisionCode:I

.field private final mRollbackDataPolicy:I

.field private final mSigningDetails:Landroid/content/pm/SigningDetails;

.field private final mSplitName:Ljava/lang/String;

.field private final mSplitRequired:Z

.field private final mSplitTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetPackageName:Ljava/lang/String;

.field private final mTargetSdkVersion:I

.field private final mUse32bitAbi:Z

.field private final mUseEmbeddedDex:Z

.field private final mUsesSplitName:Ljava/lang/String;

.field private final mVerifiers:[Landroid/content/pm/VerifierInfo;

.field private final mVersionCode:I

.field private final mVersionCodeMajor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZ)V
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/SigningDetails;",
            "ZZZZZZZZ",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    move-object/from16 v4, p31

    iput-object v4, v0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    move/from16 v5, p4

    iput-boolean v5, v0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    move-object/from16 v6, p5

    iput-object v6, v0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    move-object/from16 v7, p6

    iput-object v7, v0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    move-object/from16 v8, p30

    iput-object v8, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    if-nez p7, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/content/pm/parsing/ApkLite;->hasAnyRequiredSplitTypes()Z

    move-result v9

    if-eqz v9, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v9, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v9, 0x1

    :goto_31
    iput-boolean v9, v0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    move/from16 v9, p8

    iput v9, v0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    move/from16 v10, p9

    iput v10, v0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    move/from16 v11, p10

    iput v11, v0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    move/from16 v12, p11

    iput v12, v0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/pm/VerifierInfo;

    move-object/from16 v14, p12

    invoke-interface {v14, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/VerifierInfo;

    iput-object v13, v0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move/from16 v15, p14

    iput-boolean v15, v0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    move/from16 v1, p21

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    move/from16 v1, p23

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    move/from16 v1, p24

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    move/from16 v1, p27

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    move/from16 v1, p28

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    move/from16 v1, p29

    iput v1, v0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    move/from16 v1, p32

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    move/from16 v1, p33

    iput-boolean v1, v0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private hasAnyRequiredSplitTypes()Z
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public getConfigForSplit()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mConfigForSplit:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallLocation()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mInstallLocation:I

    return v0
.end method

.method public getLongVersionCode()J
    .registers 3

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    iget v1, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinSdkVersion()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mMinSdkVersion:I

    return v0
.end method

.method public getOverlayPriority()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayPriority:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredSplitTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getRequiredSystemPropertyName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiredSystemPropertyValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mRequiredSystemPropertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRevisionCode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mRevisionCode:I

    return v0
.end method

.method public getRollbackDataPolicy()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mRollbackDataPolicy:I

    return v0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSdkVersion()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mTargetSdkVersion:I

    return v0
.end method

.method public getUsesSplitName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mUsesSplitName:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifiers()[Landroid/content/pm/VerifierInfo;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ApkLite;->mVerifiers:[Landroid/content/pm/VerifierInfo;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCode:I

    return v0
.end method

.method public getVersionCodeMajor()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ApkLite;->mVersionCodeMajor:I

    return v0
.end method

.method public isCoreApp()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mCoreApp:Z

    return v0
.end method

.method public isDebuggable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mDebuggable:Z

    return v0
.end method

.method public isExtractNativeLibs()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mExtractNativeLibs:Z

    return v0
.end method

.method public isFeatureSplit()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mFeatureSplit:Z

    return v0
.end method

.method public isHasDeviceAdminReceiver()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mHasDeviceAdminReceiver:Z

    return v0
.end method

.method public isIsSdkLibrary()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsSdkLibrary:Z

    return v0
.end method

.method public isIsolatedSplits()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mIsolatedSplits:Z

    return v0
.end method

.method public isMultiArch()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mMultiArch:Z

    return v0
.end method

.method public isOverlayIsStatic()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mOverlayIsStatic:Z

    return v0
.end method

.method public isProfileableByShell()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mProfileableByShell:Z

    return v0
.end method

.method public isSplitRequired()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mSplitRequired:Z

    return v0
.end method

.method public isUse32bitAbi()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUse32bitAbi:Z

    return v0
.end method

.method public isUseEmbeddedDex()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ApkLite;->mUseEmbeddedDex:Z

    return v0
.end method
