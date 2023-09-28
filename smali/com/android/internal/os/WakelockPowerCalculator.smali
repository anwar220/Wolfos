# classes4.dex

.class public Lcom/android/internal/os/WakelockPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WakelockPowerCalculator"


# instance fields
.field private final mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string v1, "cpu.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    return-void
.end method

.method private calculateApp(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V
    .registers 15

    const-wide/16 v0, 0x0

    nop

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_23

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_20

    invoke-virtual {v6, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    add-long/2addr v0, v7

    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_23
    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    iput-wide v4, p1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    iget-object v4, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    iget-wide v5, p1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    return-void
.end method

.method private calculateRemaining(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V
    .registers 22

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v1

    sub-long v1, v1, p12

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_21

    move-object v5, p0

    iget-object v3, v5, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-long v6, p10, v1

    iput-wide v6, v0, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    add-double v6, p8, v3

    iput-wide v6, v0, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    goto :goto_28

    :cond_21
    move-object v5, p0

    iput-wide v3, v0, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    :goto_28
    return-void
.end method

.method private calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J
    .registers 14

    invoke-virtual {p1, p4, p5}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v0

    nop

    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    return-wide v4
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 34

    move-object/from16 v0, p1

    new-instance v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration-IA;)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move v14, v11

    move-wide v11, v7

    :goto_22
    const/16 v8, 0xc

    if-ltz v14, :cond_6e

    invoke-virtual {v15, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v5

    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-object v4, v1

    move-object v13, v6

    move-wide/from16 v6, p3

    move v0, v8

    move/from16 v8, v16

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/WakelockPowerCalculator;->calculateApp(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;JI)V

    iget-wide v3, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v13, v0, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v0

    if-nez v0, :cond_58

    iget-wide v3, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v11, v3

    iget-wide v3, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v9, v3

    :cond_58
    invoke-virtual {v13}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v0

    if-nez v0, :cond_68

    move-object v0, v13

    iget-wide v2, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    iget-wide v4, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    move-wide/from16 v19, v2

    move-wide/from16 v17, v4

    move-object v2, v0

    :cond_68
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p1

    const/4 v13, 0x1

    goto :goto_22

    :cond_6e
    move v0, v8

    const/4 v13, 0x0

    move-object/from16 v3, p0

    move-object v4, v1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v22, v9

    move-wide/from16 v8, p5

    move v10, v13

    move-wide v13, v11

    move-wide/from16 v11, v17

    move-wide/from16 v24, v13

    move-wide/from16 v13, v19

    move-object/from16 v21, v15

    move-wide/from16 v15, v24

    invoke-direct/range {v3 .. v16}, Lcom/android/internal/os/WakelockPowerCalculator;->calculateRemaining(Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats;JJIDJJ)V

    iget-wide v3, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->powerMah:D

    if-eqz v2, :cond_99

    iget-wide v5, v1, Lcom/android/internal/os/WakelockPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v5, v0, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_99
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/os/WakelockPowerCalculator;->calculateWakeTimeMillis(Landroid/os/BatteryStats;JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_ad

    const-wide/16 v5, 0x0

    :cond_ad
    const/4 v7, 0x0

    move v8, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v7

    check-cast v7, Landroid/os/AggregateBatteryConsumer$Builder;

    move-wide/from16 v9, v22

    add-double v11, v9, v3

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    move-wide/from16 v11, v24

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v7

    check-cast v7, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/16 v0, 0xc

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
