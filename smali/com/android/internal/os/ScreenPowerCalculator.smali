# classes4.dex

.class public Lcom/android/internal/os/ScreenPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final MIN_ACTIVE_TIME_FOR_SMEARING:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "ScreenPowerCalculator"


# instance fields
.field private final mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_35

    iget-object v2, p0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v4, "screen.full.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_35
    return-void
.end method

.method private calculateAppUsingMeasuredEnergy(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V
    .registers 9

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/os/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getScreenOnMeasuredBatteryConsumptionUC()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1c

    const-string v2, "ScreenPowerCalculator"

    const-string v3, "Screen energy not supported, so calculateApp shouldn\'t de called"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    return-void

    :cond_1c
    invoke-static {v0, v1}, Lcom/android/internal/os/ScreenPowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    return-void
.end method

.method private calculateDuration(Landroid/os/BatteryStats;JI)J
    .registers 9

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private calculateTotalDurationAndPower(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V
    .registers 11

    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/internal/os/ScreenPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    packed-switch p2, :pswitch_data_18

    invoke-direct {p0, p3, p4, p5}, Lcom/android/internal/os/ScreenPowerCalculator;->calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    goto :goto_17

    :pswitch_10  #0x2
    invoke-static {p7, p8}, Lcom/android/internal/os/ScreenPowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    nop

    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_10  #00000002
    .end packed-switch
.end method

.method private calculateTotalPowerFromBrightness(Landroid/os/BatteryStats;J)D
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v4, v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v4, :cond_41

    invoke-virtual {v1, v7, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget-object v12, v0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v12, v12, v7

    invoke-virtual {v12, v8, v9}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v12

    add-double/2addr v5, v12

    const/4 v12, 0x0

    :goto_1f
    const/4 v13, 0x5

    if-ge v12, v13, :cond_3e

    invoke-virtual {v1, v7, v12, v2, v3}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v13

    div-long/2addr v13, v10

    iget-object v15, v0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v15, v15, v7

    invoke-virtual {v15, v13, v14}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v15

    int-to-float v10, v12

    const/high16 v11, 0x3f000000  # 0.5f

    add-float/2addr v10, v11

    float-to-double v10, v10

    mul-double/2addr v15, v10

    const-wide/high16 v10, 0x4014000000000000L  # 5.0

    div-double/2addr v15, v10

    add-double/2addr v5, v15

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v10, 0x3e8

    goto :goto_1f

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_41
    return-wide v5
.end method

.method private smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;J)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/UidBatteryConsumer$Builder;",
            ">;",
            "Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;",
            "J)V"
        }
    .end annotation

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    new-instance v3, Landroid/util/SparseLongArray;

    invoke-direct {v3}, Landroid/util/SparseLongArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_f
    if-ltz v4, :cond_34

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v7

    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    invoke-virtual {v8, v7, v9, v10}, Lcom/android/internal/os/ScreenPowerCalculator;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v11

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    invoke-virtual {v3, v13, v11, v12}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v13

    if-nez v13, :cond_31

    add-long/2addr v1, v11

    :cond_31
    add-int/lit8 v4, v4, -0x1

    goto :goto_f

    :cond_34
    move-object/from16 v8, p0

    move-wide/from16 v9, p3

    const-wide/32 v6, 0x927c0

    cmp-long v4, v1, v6

    if-ltz v4, :cond_79

    move-object/from16 v4, p2

    iget-wide v6, v4, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual/range {p1 .. p1}, Landroid/util/SparseArray;->size()I

    move-result v11

    sub-int/2addr v11, v5

    :goto_48
    if-ltz v11, :cond_75

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v13

    const-wide/16 v14, 0x0

    invoke-virtual {v3, v13, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v13

    move-object v15, v3

    long-to-double v3, v13

    mul-double/2addr v3, v6

    move-wide/from16 v16, v6

    long-to-double v5, v1

    div-double/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v3, v4, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v4, p2

    move v5, v7

    move-object v3, v15

    move-wide/from16 v6, v16

    goto :goto_48

    :cond_75
    move-object v15, v3

    move-wide/from16 v16, v6

    goto :goto_7a

    :cond_79
    move-object v15, v3

    :goto_7a
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 27

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p3

    new-instance v0, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration-IA;)V

    move-object v14, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenOnMeasuredBatteryConsumptionUC()J

    move-result-wide v7

    move-object/from16 v15, p7

    invoke-static {v7, v8, v15}, Lcom/android/internal/os/ScreenPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v6

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v6

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move v13, v6

    move/from16 v6, v16

    move-wide/from16 v17, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/os/ScreenPowerCalculator;->calculateTotalDurationAndPower(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JIJ)V

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x1

    packed-switch v13, :pswitch_data_ae

    move-object/from16 v5, p0

    move-wide/from16 v6, p3

    invoke-direct {v5, v4, v14, v6, v7}, Lcom/android/internal/os/ScreenPowerCalculator;->smearScreenBatteryDrain(Landroid/util/SparseArray;Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;J)V

    iget-wide v0, v14, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    iget-wide v2, v14, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    goto :goto_86

    :pswitch_42  #0x2
    new-instance v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration-IA;)V

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_4d
    if-ltz v8, :cond_82

    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v6

    invoke-direct {v9, v7, v6, v11, v12}, Lcom/android/internal/os/ScreenPowerCalculator;->calculateAppUsingMeasuredEnergy(Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V

    iget-wide v9, v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v9

    check-cast v9, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v10, v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {v9, v6, v10, v11, v13}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v6

    if-nez v6, :cond_78

    iget-wide v9, v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v0, v9

    iget-wide v9, v7, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v2, v9

    :cond_78
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide/from16 v11, p3

    const/4 v5, 0x1

    goto :goto_4d

    :cond_82
    move-object/from16 v5, p0

    move-wide/from16 v6, p3

    :goto_86
    move-object/from16 v8, p1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    iget-wide v11, v14, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-virtual {v10, v9, v11, v12, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v10

    check-cast v10, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v11, v14, Lcom/android/internal/os/ScreenPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v10, v9, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    invoke-virtual {v10, v9, v0, v1, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v10

    check-cast v10, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v10, v9, v2, v3}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void

    nop

    :pswitch_data_ae
    .packed-switch 0x2
        :pswitch_42  #00000002
    .end packed-switch
.end method

.method public calculateScreenPowerWithPAK(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/util/ArrayMap;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    iget-object v3, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;

    array-length v3, v3

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_19

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_16

    move v2, v4

    goto :goto_19

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_19
    :goto_19
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1e

    const/4 v4, 0x0

    return-object v4

    :cond_1e
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iget-object v5, v1, Lcom/android/internal/os/BatteryStatsImpl;->mPackageStats:Landroid/util/ArrayMap;

    const/4 v6, 0x0

    :goto_26
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_91

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    :goto_37
    const/4 v13, 0x5

    if-ge v12, v13, :cond_74

    iget-object v13, v7, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->sts:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v13, v13, v12

    if-nez v13, :cond_45

    move-object/from16 v17, v5

    move/from16 v18, v6

    goto :goto_6b

    :cond_45
    iget-object v13, v7, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->sts:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v13, v13, v12

    const-wide/16 v14, -0x1

    const/4 v1, 0x0

    invoke-virtual {v13, v14, v15, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    iget-object v1, v0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenFullPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v1, v1, v2

    invoke-virtual {v1, v13, v14}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v15

    int-to-float v1, v12

    const/high16 v17, 0x3f000000  # 0.5f

    add-float v1, v1, v17

    move-object/from16 v17, v5

    move/from16 v18, v6

    float-to-double v5, v1

    mul-double/2addr v15, v5

    const-wide/high16 v5, 0x4014000000000000L  # 5.0

    div-double/2addr v15, v5

    add-double/2addr v8, v15

    add-long/2addr v10, v13

    :goto_6b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v17

    move/from16 v6, v18

    goto :goto_37

    :cond_74
    move-object/from16 v17, v5

    move/from16 v18, v6

    iget-object v1, v0, Lcom/android/internal/os/ScreenPowerCalculator;->mScreenOnPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v1, v1, v2

    invoke-virtual {v1, v10, v11}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v5

    add-double/2addr v8, v5

    iget-object v1, v7, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->name:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v17

    goto :goto_26

    :cond_91
    return-object v4
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .registers 7

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    return-wide v1
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .registers 13

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const-wide/16 v2, 0x0

    array-length v4, v0

    move v5, v1

    :goto_a
    if-ge v5, v4, :cond_16

    aget v6, v0, v5

    invoke-virtual {p1, v6, p2, p3, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    add-long/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/ScreenPowerCalculator;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    return-wide v4
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
