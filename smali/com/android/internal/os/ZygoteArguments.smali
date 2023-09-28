# classes4.dex

.class Lcom/android/internal/os/ZygoteArguments;
.super Ljava/lang/Object;


# instance fields
.field mAbiListQuery:Z

.field mAllowlistedDataInfoList:[Ljava/lang/String;

.field mApiDenylistExemptions:[Ljava/lang/String;

.field mAppDataDir:Ljava/lang/String;

.field mBindMountAppDataDirs:Z

.field mBindMountAppStorageDirs:Z

.field mBootCompleted:Z

.field private mCapabilitiesSpecified:Z

.field mDisabledCompatChanges:[J

.field mEffectiveCapabilities:J

.field mGid:I

.field mGidSpecified:Z

.field mGids:[I

.field mHiddenApiAccessLogSampleRate:I

.field mHiddenApiAccessStatslogSampleRate:I

.field mInstructionSet:Ljava/lang/String;

.field mInvokeWith:Ljava/lang/String;

.field mIsTopApp:Z

.field mMountExternal:I

.field mNiceName:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPermittedCapabilities:J

.field mPidQuery:Z

.field mPkgDataInfoList:[Ljava/lang/String;

.field mPreloadApp:Ljava/lang/String;

.field mPreloadDefault:Z

.field mPreloadPackage:Ljava/lang/String;

.field mPreloadPackageCacheKey:Ljava/lang/String;

.field mPreloadPackageLibFileName:Ljava/lang/String;

.field mPreloadPackageLibs:Ljava/lang/String;

.field mRLimits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[I>;"
        }
    .end annotation
.end field

.field mRemainingArgs:[Ljava/lang/String;

.field mRuntimeFlags:I

.field mSeInfo:Ljava/lang/String;

.field private mSeInfoSpecified:Z

.field mStartChildZygote:Z

.field mTargetSdkVersion:I

.field private mTargetSdkVersionSpecified:Z

.field mUid:I

.field mUidSpecified:Z

.field mUsapPoolEnabled:Z

.field mUsapPoolStatusSpecified:Z


# direct methods
.method private constructor <init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I

    iput v0, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/ZygoteArguments;->parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    return-void
.end method

.method private static getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/os/ZygoteCommandBuffer;)Lcom/android/internal/os/ZygoteArguments;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteCommandBuffer;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    new-instance v1, Lcom/android/internal/os/ZygoteArguments;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/os/ZygoteArguments;-><init>(Lcom/android/internal/os/ZygoteCommandBuffer;I)V

    :goto_d
    return-object v1
.end method

.method private parseArgs(Lcom/android/internal/os/ZygoteCommandBuffer;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_4
    const/4 v4, 0x0

    if-ge v1, p2, :cond_392

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_392

    :cond_17
    const-string v6, "--setuid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "Duplicate arg specified"

    const/4 v8, 0x1

    if-eqz v6, :cond_3a

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    if-nez v4, :cond_34

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUidSpecified:Z

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUid:I

    goto/16 :goto_38e

    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3a
    const-string v6, "--setgid="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5a

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    if-nez v4, :cond_54

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mGidSpecified:Z

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGid:I

    goto/16 :goto_38e

    :cond_54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5a
    const-string v6, "--target-sdk-version="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    if-nez v4, :cond_74

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersionSpecified:Z

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mTargetSdkVersion:I

    goto/16 :goto_38e

    :cond_74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "Duplicate target-sdk-version specified"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7c
    const-string v6, "--runtime-args"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    const/4 v2, 0x1

    goto/16 :goto_38e

    :cond_87
    const-string v6, "--runtime-flags="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mRuntimeFlags:I

    goto/16 :goto_38e

    :cond_9b
    const-string v6, "--seinfo="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b7

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    if-nez v4, :cond_b1

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfoSpecified:Z

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mSeInfo:Ljava/lang/String;

    goto/16 :goto_38e

    :cond_b1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_b7
    const-string v6, "--capabilities="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v9, 0x2

    if-eqz v6, :cond_102

    iget-boolean v6, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    if-nez v6, :cond_fc

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mCapabilitiesSpecified:Z

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    if-ne v9, v8, :cond_e2

    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    goto :goto_fa

    :cond_e2
    aget-object v4, v7, v4

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mPermittedCapabilities:J

    aget-object v4, v7, v8

    invoke-static {v4}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/internal/os/ZygoteArguments;->mEffectiveCapabilities:J

    :goto_fa
    goto/16 :goto_38e

    :cond_fc
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_102
    const-string v6, "--rlimit="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v10, 0x3

    if-eqz v6, :cond_13e

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-ne v6, v10, :cond_136

    array-length v6, v4

    new-array v6, v6, [I

    const/4 v7, 0x0

    :goto_116
    array-length v9, v4

    if-ge v7, v9, :cond_124

    aget-object v9, v4, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_116

    :cond_124
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    if-nez v7, :cond_12f

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    :cond_12f
    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mRLimits:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_38e

    :cond_136
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--rlimit= should have 3 comma-delimited ints"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_13e
    const-string v6, "--setgroups="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16c

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    if-nez v4, :cond_166

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    array-length v6, v4

    sub-int/2addr v6, v8

    :goto_155
    if-ltz v6, :cond_164

    iget-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mGids:[I

    aget-object v9, v4, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_155

    :cond_164
    goto/16 :goto_38e

    :cond_166
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_16c
    const-string v6, "--invoke-with"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_191

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;

    if-nez v4, :cond_18b

    add-int/lit8 v1, v1, 0x1

    :try_start_17a
    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInvokeWith:Ljava/lang/String;
    :try_end_180
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17a .. :try_end_180} :catch_182

    goto/16 :goto_38e

    :catch_182
    move-exception v4

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "--invoke-with requires argument"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_18b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_191
    const-string v6, "--nice-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1ab

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    if-nez v4, :cond_1a5

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mNiceName:Ljava/lang/String;

    goto/16 :goto_38e

    :cond_1a5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1ab
    const-string v6, "--mount-external-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    iput v8, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_38e

    :cond_1b7
    const-string v6, "--mount-external-installer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c3

    iput v9, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_38e

    :cond_1c3
    const-string v6, "--mount-external-pass-through"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cf

    iput v10, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_38e

    :cond_1cf
    const-string v6, "--mount-external-android-writable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1dc

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/os/ZygoteArguments;->mMountExternal:I

    goto/16 :goto_38e

    :cond_1dc
    const-string v6, "--query-abi-list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e8

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    goto/16 :goto_38e

    :cond_1e8
    const-string v6, "--get-pid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f4

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    goto/16 :goto_38e

    :cond_1f4
    const-string v6, "--boot-completed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_200

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    goto/16 :goto_38e

    :cond_200
    const-string v6, "--instruction-set="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_210

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mInstructionSet:Ljava/lang/String;

    goto/16 :goto_38e

    :cond_210
    const-string v6, "--app-data-dir="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_220

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAppDataDir:Ljava/lang/String;

    goto/16 :goto_38e

    :cond_220
    const-string v6, "--preload-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_232

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    goto/16 :goto_38e

    :cond_232
    const-string v6, "--preload-package"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_256

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibs:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageLibFileName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackageCacheKey:Ljava/lang/String;

    goto/16 :goto_38e

    :cond_256
    const-string v6, "--preload-default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_263

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadDefault:Z

    const/4 v3, 0x0

    goto/16 :goto_38e

    :cond_263
    const-string v6, "--start-child-zygote"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26f

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    goto/16 :goto_38e

    :cond_26f
    const-string v6, "--set-api-denylist-exemptions"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_293

    sub-int v4, p2, v1

    sub-int/2addr v4, v8

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    :goto_281
    if-ge v1, p2, :cond_290

    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mApiDenylistExemptions:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_281

    :cond_290
    const/4 v3, 0x0

    goto/16 :goto_38e

    :cond_293
    const-string v6, "--hidden-api-log-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c3

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_29f
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessLogSampleRate:I
    :try_end_2a5
    .catch Ljava/lang/NumberFormatException; {:try_start_29f .. :try_end_2a5} :catch_2a9

    nop

    const/4 v3, 0x0

    goto/16 :goto_38e

    :catch_2a9
    move-exception v6

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid log sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_2c3
    const-string v6, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f3

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_2cf
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/internal/os/ZygoteArguments;->mHiddenApiAccessStatslogSampleRate:I
    :try_end_2d5
    .catch Ljava/lang/NumberFormatException; {:try_start_2cf .. :try_end_2d5} :catch_2d9

    nop

    const/4 v3, 0x0

    goto/16 :goto_38e

    :catch_2d9
    move-exception v6

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid statslog sampling rate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_2f3
    const-string v6, "--package-name="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30d

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_307

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPackageName:Ljava/lang/String;

    goto/16 :goto_38e

    :cond_307
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_30d
    const-string v6, "--usap-pool-enabled="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_324

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolStatusSpecified:Z

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/os/ZygoteArguments;->mUsapPoolEnabled:Z

    const/4 v3, 0x0

    goto/16 :goto_38e

    :cond_324
    const-string v6, "--is-top-app"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32f

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mIsTopApp:Z

    goto :goto_38e

    :cond_32f
    const-string v6, "--disabled-compat-changes="

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35b

    iget-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    if-nez v4, :cond_355

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    new-array v7, v6, [J

    iput-object v7, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    const/4 v7, 0x0

    :goto_345
    if-ge v7, v6, :cond_354

    iget-object v9, p0, Lcom/android/internal/os/ZygoteArguments;->mDisabledCompatChanges:[J

    aget-object v10, v4, v7

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_345

    :cond_354
    goto :goto_38e

    :cond_355
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_35b
    const-string v6, "--pkg-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36a

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mPkgDataInfoList:[Ljava/lang/String;

    goto :goto_38e

    :cond_36a
    const-string v6, "--allowlisted-data-info-map"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_379

    invoke-static {v5}, Lcom/android/internal/os/ZygoteArguments;->getAssignmentList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/ZygoteArguments;->mAllowlistedDataInfoList:[Ljava/lang/String;

    goto :goto_38e

    :cond_379
    const-string v6, "--bind-mount-storage-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_384

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppStorageDirs:Z

    goto :goto_38e

    :cond_384
    const-string v6, "--bind-mount-data-dirs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_391

    iput-boolean v8, p0, Lcom/android/internal/os/ZygoteArguments;->mBindMountAppDataDirs:Z

    :goto_38e
    add-int/2addr v1, v8

    goto/16 :goto_4

    :cond_391
    move-object v0, v5

    :cond_392
    :goto_392
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mBootCompleted:Z

    if-eqz v5, :cond_3a2

    if-gt p2, v1, :cond_39a

    goto/16 :goto_40c

    :cond_39a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --boot-completed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3a2
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mAbiListQuery:Z

    if-nez v5, :cond_40a

    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPidQuery:Z

    if-eqz v5, :cond_3ab

    goto :goto_40a

    :cond_3ab
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadPackage:Ljava/lang/String;

    if-eqz v5, :cond_3ba

    if-gt p2, v1, :cond_3b2

    goto :goto_40c

    :cond_3b2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-package."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3ba
    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mPreloadApp:Ljava/lang/String;

    if-eqz v5, :cond_3c9

    if-gt p2, v1, :cond_3c1

    goto :goto_40c

    :cond_3c1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --preload-app."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3c9
    if-eqz v3, :cond_40c

    if-nez v2, :cond_3ee

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected argument : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_3e1

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v6

    goto :goto_3e2

    :cond_3e1
    move-object v6, v0

    :goto_3e2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3ee
    sub-int v5, p2, v1

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v0, :cond_3fb

    aput-object v0, v5, v4

    add-int/lit8 v6, v6, 0x1

    :cond_3fb
    :goto_3fb
    sub-int v5, p2, v1

    if-ge v6, v5, :cond_40c

    iget-object v5, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/os/ZygoteCommandBuffer;->nextArg()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3fb

    :cond_40a
    :goto_40a
    if-gt p2, v1, :cond_431

    :cond_40c
    :goto_40c
    iget-boolean v5, p0, Lcom/android/internal/os/ZygoteArguments;->mStartChildZygote:Z

    if-eqz v5, :cond_430

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/os/ZygoteArguments;->mRemainingArgs:[Ljava/lang/String;

    array-length v7, v6

    :goto_414
    if-ge v4, v7, :cond_425

    aget-object v8, v6, v4

    const-string v9, "--zygote-socket="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_422

    const/4 v5, 0x1

    goto :goto_425

    :cond_422
    add-int/lit8 v4, v4, 0x1

    goto :goto_414

    :cond_425
    :goto_425
    if-eqz v5, :cond_428

    goto :goto_430

    :cond_428
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "--start-child-zygote specified without --zygote-socket="

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_430
    :goto_430
    return-void

    :cond_431
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unexpected arguments after --query-abi-list."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
