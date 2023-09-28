# classes4.dex

.class public Lcom/android/internal/power/MeasuredEnergyStats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/power/MeasuredEnergyStats$Config;,
        Lcom/android/internal/power/MeasuredEnergyStats$StandardPowerBucket;
    }
.end annotation


# static fields
.field private static final INVALID_STATE:I = -0x1

.field public static final NUMBER_STANDARD_POWER_BUCKETS:I = 0x8

.field public static final POWER_BUCKET_BLUETOOTH:I = 0x5

.field public static final POWER_BUCKET_CPU:I = 0x3

.field public static final POWER_BUCKET_GNSS:I = 0x6

.field public static final POWER_BUCKET_MOBILE_RADIO:I = 0x7

.field public static final POWER_BUCKET_SCREEN_DOZE:I = 0x1

.field public static final POWER_BUCKET_SCREEN_ON:I = 0x0

.field public static final POWER_BUCKET_SCREEN_OTHER:I = 0x2

.field public static final POWER_BUCKET_UNKNOWN:I = -0x1

.field public static final POWER_BUCKET_WIFI:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MeasuredEnergyStats"


# instance fields
.field private final mAccumulatedChargeMicroCoulomb:[J

.field private mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

.field private final mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

.field private mState:I

.field private mStateChangeTimestampMs:J


# direct methods
.method static bridge synthetic -$$Nest$smindexToCustomBucket(I)I
    .registers 1

    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->indexToCustomBucket(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidStandardBucket(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->isValidStandardBucket(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    iput-object p1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    const/4 v1, 0x0

    :goto_11
    const/16 v2, 0x8

    if-ge v1, v2, :cond_28

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v2}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmSupportedStandardBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_28
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    iput-object p1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readLongArray([J)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    if-eqz v1, :cond_36

    new-array v1, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v0, :cond_35

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    sget-object v3, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v3, v2, v1

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_35
    goto :goto_39

    :cond_36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    :goto_39
    return-void
.end method

.method private static checkValidStandardBucket(I)V
    .registers 4

    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->isValidStandardBucket(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal StandardPowerBucket "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private containsInterestingData()Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v2, v1

    if-ge v0, v2, :cond_13

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_10

    const/4 v1, 0x1

    return v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static createAndReadSummaryFromParcel(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/MeasuredEnergyStats;
    .registers 9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    if-nez p0, :cond_23

    new-instance v2, Lcom/android/internal/power/MeasuredEnergyStats;

    new-instance v3, Lcom/android/internal/power/MeasuredEnergyStats$Config;

    new-array v4, v0, [Z

    const/4 v5, 0x0

    new-array v5, v5, [I

    const-string v6, ""

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/internal/power/MeasuredEnergyStats$Config;-><init>([Z[Ljava/lang/String;[I[Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    invoke-direct {v2, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    return-object v1

    :cond_23
    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v2

    if-eq v0, v2, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of MeasuredEnergyStats parcel ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not match config ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MeasuredEnergyStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-direct {v2, p0}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    invoke-direct {v2, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    return-object v1

    :cond_5e
    new-instance v2, Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-direct {v2, p0}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;)V

    invoke-direct {v2, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->readSummaryFromParcel(Landroid/os/Parcel;)V

    invoke-direct {v2}, Lcom/android/internal/power/MeasuredEnergyStats;->containsInterestingData()Z

    move-result v3

    if-eqz v3, :cond_6d

    return-object v2

    :cond_6d
    return-object v1
.end method

.method public static createFromParcel(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)Lcom/android/internal/power/MeasuredEnergyStats;
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Lcom/android/internal/power/MeasuredEnergyStats;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;-><init>(Lcom/android/internal/power/MeasuredEnergyStats$Config;Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static customBucketToIndex(I)I
    .registers 2

    add-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static getDisplayPowerBucket(I)I
    .registers 2

    invoke-static {p0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {p0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method private static indexToCustomBucket(I)I
    .registers 2

    add-int/lit8 v0, p0, -0x8

    return v0
.end method

.method private isIndexSupported(I)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isValidStandardBucket(I)Z
    .registers 2

    if-ltz p0, :cond_8

    const/16 v0, 0x8

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    if-eqz v6, :cond_31

    sget-object v6, Lcom/android/internal/os/LongMultiStateCounter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    if-eqz v6, :cond_30

    invoke-virtual {v5}, Lcom/android/internal/os/LongMultiStateCounter;->getStateCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {v7}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->getStateNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-eq v6, v7, :cond_31

    :cond_30
    const/4 v5, 0x0

    :cond_31
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v6, v6

    if-ge v2, v6, :cond_4a

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/power/MeasuredEnergyStats;->setValueIfSupported(IJ)V

    if-eqz v5, :cond_4a

    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v6, :cond_46

    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v6, v6

    new-array v6, v6, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    :cond_46
    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v5, v6, v2

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4d
    return-void
.end method

.method private reset()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/power/MeasuredEnergyStats;->setValueIfSupported(IJ)V

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v2, :cond_19

    aget-object v2, v2, v1

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/android/internal/os/LongMultiStateCounter;->reset()V

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-void
.end method

.method public static resetIfNotNull(Lcom/android/internal/power/MeasuredEnergyStats;)V
    .registers 1

    if-eqz p0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->reset()V

    :cond_5
    return-void
.end method

.method private setValueIfSupported(IJ)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_c

    aput-wide p2, v0, p1

    :cond_c
    return-void
.end method

.method private updateEntry(IJJ)V
    .registers 13

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_50

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    iget v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_86

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    :cond_25
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v0, v0, p1

    if-nez v0, :cond_48

    new-instance v1, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v2}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v0, v1, p1

    iget v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    iget-wide v5, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mStateChangeTimestampMs:J

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    iget-wide v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mStateChangeTimestampMs:J

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    :cond_48
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2, p4, p5}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    goto :goto_86

    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to unavailable bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v1, p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/MeasuredEnergyStats$Config;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " whose value was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeasuredEnergyStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    :goto_86
    return-void
.end method

.method private writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 10

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    iget-object v4, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v5, v4

    if-ge v3, v5, :cond_3a

    aget-wide v4, v4, v3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_18

    goto :goto_37

    :cond_18
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v6, :cond_32

    aget-object v6, v6, v3

    if-eqz v6, :cond_32

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v6, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aget-object v6, v6, v3

    invoke-virtual {v6, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    :cond_32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_35
    add-int/lit8 v2, v2, 0x1

    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static writeSummaryToParcel(Lcom/android/internal/power/MeasuredEnergyStats;Landroid/os/Parcel;)V
    .registers 3

    if-nez p0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetNumberOfBuckets(Lcom/android/internal/power/MeasuredEnergyStats$Config;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->writeSummaryToParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "   "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_77

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v1, v0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$mgetBucketName(Lcom/android/internal/power/MeasuredEnergyStats$Config;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v1, v1, v0

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-direct {p0, v0}, Lcom/android/internal/power/MeasuredEnergyStats;->isIndexSupported(I)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, " (unsupported)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2b
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-eqz v1, :cond_68

    aget-object v1, v1, v0

    if-eqz v1, :cond_68

    const-string v2, " ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_39
    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_63

    if-eqz v2, :cond_49

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_49
    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_63
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_68
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_74

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_77
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getAccumulatedCustomBucketCharge(I)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->customBucketToIndex(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getAccumulatedCustomBucketCharges()[J
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/power/MeasuredEnergyStats;->getNumberCustomPowerBuckets()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_17

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-static {v1}, Lcom/android/internal/power/MeasuredEnergyStats;->customBucketToIndex(I)I

    move-result v3

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-object v0
.end method

.method public getAccumulatedStandardBucketCharge(I)J
    .registers 4

    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->checkValidStandardBucket(I)V

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getAccumulatedStandardBucketCharge(II)J
    .registers 6

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {v0, p1}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_12

    return-wide v1

    :cond_12
    aget-object v0, v0, p1

    if-nez v0, :cond_17

    return-wide v1

    :cond_17
    invoke-virtual {v0, p2}, Lcom/android/internal/os/LongMultiStateCounter;->getCount(I)J

    move-result-wide v1

    return-wide v1
.end method

.method public getNumberCustomPowerBuckets()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x8

    return v0
.end method

.method public isStandardBucketSupported(I)Z
    .registers 3

    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->checkValidStandardBucket(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isIndexSupported(I)Z

    move-result v0

    return v0
.end method

.method public isValidCustomBucket(I)Z
    .registers 4

    if-ltz p1, :cond_d

    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->customBucketToIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v1, v1

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public setState(IJ)V
    .registers 8

    iput p1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mState:I

    iput-wide p2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mStateChangeTimestampMs:J

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/os/LongMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_3f

    aget-object v1, v1, v0

    if-nez v1, :cond_37

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-virtual {v2, v0}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->isSupportedMultiStateBucket(I)Z

    move-result v2

    if-eqz v2, :cond_37

    new-instance v2, Lcom/android/internal/os/LongMultiStateCounter;

    iget-object v3, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mConfig:Lcom/android/internal/power/MeasuredEnergyStats$Config;

    invoke-static {v3}, Lcom/android/internal/power/MeasuredEnergyStats$Config;->-$$Nest$fgetmStateNames(Lcom/android/internal/power/MeasuredEnergyStats$Config;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/android/internal/os/LongMultiStateCounter;-><init>(I)V

    move-object v1, v2

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->updateValue(JJ)J

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    aput-object v1, v2, v0

    :cond_37
    if-eqz v1, :cond_3c

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/LongMultiStateCounter;->setState(IJ)V

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_3f
    return-void
.end method

.method public updateCustomBucket(IJ)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateCustomBucket(IJJ)V

    return-void
.end method

.method public updateCustomBucket(IJJ)V
    .registers 14

    invoke-virtual {p0, p1}, Lcom/android/internal/power/MeasuredEnergyStats;->isValidCustomBucket(I)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to update invalid custom bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeasuredEnergyStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->customBucketToIndex(I)I

    move-result v0

    move-object v2, p0

    move v3, v0

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/power/MeasuredEnergyStats;->updateEntry(IJJ)V

    return-void
.end method

.method public updateStandardBucket(IJ)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateStandardBucket(IJJ)V

    return-void
.end method

.method public updateStandardBucket(IJJ)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/power/MeasuredEnergyStats;->checkValidStandardBucket(I)V

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/power/MeasuredEnergyStats;->updateEntry(IJJ)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedChargeMicroCoulomb:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/android/internal/power/MeasuredEnergyStats;->mAccumulatedMultiStateChargeMicroCoulomb:[Lcom/android/internal/os/LongMultiStateCounter;

    array-length v3, v2

    move v4, v1

    :goto_18
    if-ge v4, v3, :cond_2e

    aget-object v5, v2, v4

    if-eqz v5, :cond_25

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {v5, p1, v1}, Lcom/android/internal/os/LongMultiStateCounter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_28

    :cond_25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_2e
    return-void
.end method
