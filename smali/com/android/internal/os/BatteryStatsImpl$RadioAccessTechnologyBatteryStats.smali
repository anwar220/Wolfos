# classes4.dex

.class Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RadioAccessTechnologyBatteryStats"
.end annotation


# instance fields
.field private mActive:Z

.field private mFrequencyRange:I

.field private mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mSignalStrength:I

.field public final perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method static bridge synthetic -$$Nest$mgetRxDurationCounter(Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTxDurationCounter(Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(ILcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x5

    aput v3, v1, v2

    aput p1, v1, v0

    const-class v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v0, 0x0

    :goto_23
    if-ge v0, p1, :cond_3f

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v3, :cond_3c

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v4, v10

    move-object v5, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_3f
    return-void
.end method

.method private getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    if-nez v0, :cond_28

    if-nez p2, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    new-array v3, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_28

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v5, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_28
    if-ltz p1, :cond_36

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    if-lt p1, v0, :cond_31

    goto :goto_36

    :cond_31
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    return-object v0

    :cond_36
    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected frequency range ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") requested in getRxDurationCounter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryStatsImpl"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .registers 13

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_3f

    if-nez p3, :cond_9

    return-object v1

    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    array-length v4, v3

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v0, v5, v2

    const-class v6, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    :goto_29
    if-ge v5, v0, :cond_3f

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v4, :cond_3c

    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v7, v7, v5

    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-direct {v8, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_3f
    const-string v0, ") requested in getTxDurationCounter"

    const-string v3, "BatteryStatsImpl"

    if-ltz p1, :cond_78

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getFrequencyRangeCount()I

    move-result v4

    if-lt p1, v4, :cond_4c

    goto :goto_78

    :cond_4c
    if-ltz p2, :cond_5d

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v4, v2

    array-length v2, v2

    if-lt p2, v2, :cond_56

    goto :goto_5d

    :cond_56
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0

    :cond_5d
    :goto_5d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected signal strength ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_78
    :goto_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected frequency range ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public getFrequencyRangeCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    return v0
.end method

.method public getTimeSinceMark(IIJ)J
    .registers 10

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    const-wide/16 v1, 0x3e8

    mul-long v3, p3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTimeSinceMarkLocked(J)J

    move-result-wide v3

    div-long/2addr v3, v1

    return-wide v3
.end method

.method public incrementRxDuration(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public incrementTxDuration(IIJ)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    return-void
.end method

.method public noteActive(ZJ)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_24

    :cond_17
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :goto_24
    return-void
.end method

.method public noteFrequencyRange(IJ)V
    .registers 6

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_c

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    return-void
.end method

.method public noteSignalStrength(IJ)V
    .registers 7

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mActive:Z

    if-nez v1, :cond_c

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    return-void

    :cond_c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mFrequencyRange:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mSignalStrength:I

    return-void
.end method

.method public readSummaryFromParcel(Landroid/os/Parcel;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v4, v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    :goto_11
    const/4 v7, 0x5

    if-ge v6, v2, :cond_3f

    const/4 v8, 0x0

    :goto_15
    if-ge v8, v3, :cond_3c

    if-ge v6, v4, :cond_26

    if-lt v8, v7, :cond_1c

    goto :goto_26

    :cond_1c
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v9, v9, v6

    aget-object v9, v9, v8

    invoke-virtual {v9, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_39

    :cond_26
    :goto_26
    new-instance v9, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    invoke-virtual {v9, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    nop

    :goto_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_3f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_70

    const/4 v6, 0x0

    :goto_47
    if-ge v6, v2, :cond_70

    const/4 v9, 0x0

    :goto_4a
    if-ge v9, v3, :cond_6d

    if-ge v6, v4, :cond_50

    if-lt v9, v7, :cond_63

    :cond_50
    new-instance v16, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v15}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object/from16 v10, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    invoke-virtual {v10, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :cond_63
    invoke-direct {v0, v6, v9, v8}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getTxDurationCounter(IIZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_70
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v8, :cond_98

    const/4 v6, 0x0

    :goto_77
    if-ge v6, v2, :cond_98

    if-lt v6, v4, :cond_8e

    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    new-instance v14, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v14}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;-><init>()V

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    goto :goto_95

    :cond_8e
    invoke-direct {v0, v6, v8}, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->getRxDurationCounter(IZ)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    :goto_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    :cond_98
    return-void
.end method

.method public reset(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_30

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ge v2, v3, :cond_23

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v3, :cond_19

    goto :goto_20

    :cond_19
    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v2, :cond_28

    goto :goto_2d

    :cond_28
    aget-object v2, v2, v1

    invoke-virtual {v2, v4, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(ZJ)Z

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_30
    return-void
.end method

.method public setMark(J)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_19

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x5

    if-ge v2, v3, :cond_16

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->setMark(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_19
    return-void
.end method

.method public writeSummaryToParcel(Landroid/os/Parcel;J)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1f

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_1c

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->perStateTimers:[[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_29

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    :cond_29
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_2d
    if-ge v2, v0, :cond_41

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v1, :cond_3e

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerStateTxDurationMs:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v6, v6, v2

    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_41
    :goto_41
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v1, :cond_49

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    :cond_49
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_4d
    if-ge v1, v0, :cond_59

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$RadioAccessTechnologyBatteryStats;->mPerFrequencyRxDurationMs:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeSummaryFromParcelLocked(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    :cond_59
    :goto_59
    return-void
.end method
