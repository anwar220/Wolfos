# classes4.dex

.class public Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
.super Landroid/os/BatteryStats$ControllerActivityCounter;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerActivityCounterImpl"
.end annotation


# instance fields
.field private final mClock:Lcom/android/internal/os/Clock;

.field private mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field private final mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mNumTxStates:I

.field private final mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mProcessState:I

.field private mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

.field private final mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field private mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;


# direct methods
.method static bridge synthetic -$$Nest$mgetOrCreateIdleTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOrCreateRxTimeCounter(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOrCreateTxTimeCounters(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;)[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getOrCreateTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->setState(IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V
    .registers 5

    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V
    .registers 6

    invoke-direct {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    invoke-direct {p0, p4, p2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {p0, p4, p2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p4, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v0, p2, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-void
.end method

.method private createTimeMultiStateCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v7

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v1, v0

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJLcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter-IA;)V

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    invoke-static {v1}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v1

    invoke-static {v0, v1, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mupdate(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;JJ)J

    return-object v0
.end method

.method private getOrCreateIdleTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private getOrCreateRxTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    :cond_a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private getOrCreateTxTimeCounters()[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    const/4 v0, 0x0

    :goto_b
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->createTimeMultiStateCounter()Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    return-object v0
.end method

.method private readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;
    .registers 11

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, p3, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    new-array v2, v0, [Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_28

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {p1, p2, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$smreadFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;IJ)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v4

    if-eqz v4, :cond_24

    aput-object v4, v2, v3

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_28
    if-eqz v1, :cond_2b

    return-object v2

    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method private setState(IJ)V
    .registers 7

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mProcessState:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_9

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    :cond_9
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_10

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    :cond_10
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    :goto_15
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    aget-object v1, v1, v0

    invoke-static {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$msetState(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_22
    return-void
.end method

.method private writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V
    .registers 4

    if-eqz p2, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-static {p2, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    goto :goto_e

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_e
    return-void
.end method

.method private writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_16

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    array-length v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    array-length v1, p2

    :goto_c
    if-ge v0, v1, :cond_19

    aget-object v2, p2, v0

    invoke-static {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;->-$$Nest$mwriteToParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public detach()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    return-void
.end method

.method public getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v0
.end method

.method public bridge synthetic getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getMonitoredRailChargeConsumedMaMs()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoredRailChargeConsumedMaMs()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic getPowerCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public getPowerCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v0
.end method

.method public bridge synthetic getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getScanTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public getScanTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public bridge synthetic getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->getSleepTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    return-object v0
.end method

.method public getSleepTimeCounter()Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method public getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$sfgetZERO_LONG_COUNTER_ARRAY()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v0
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mNumTxStates:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->readTimeMultiStateCounters(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public reset(ZJ)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$smresetIfNotNull([Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mIdleTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mScanTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mSleepTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mRxTimeMillis:Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounter(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mTxTimeMillis:[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeTimeMultiStateCounters(Landroid/os/Parcel;[Lcom/android/internal/os/BatteryStatsImpl$TimeMultiStateCounter;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mPowerDrainMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->mMonitoredRailChargeConsumedMaMs:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method
