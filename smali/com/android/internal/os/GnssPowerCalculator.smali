# classes4.dex

.class public Lcom/android/internal/os/GnssPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# instance fields
.field private final mAveragePowerGnssOn:D

.field private final mAveragePowerPerSignalQuality:[D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "gps.on"

    const-wide/high16 v1, -0x4010000000000000L  # -1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/GnssPowerCalculator;->mAveragePowerGnssOn:D

    const/4 v0, 0x2

    new-array v1, v0, [D

    iput-object v1, p0, Lcom/android/internal/os/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Lcom/android/internal/os/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    const-string v3, "gps.signalqualitybased"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_22
    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;IJDJ)D
    .registers 16

    const/4 v0, 0x0

    invoke-direct {p0, p2, p4, p5, v0}, Lcom/android/internal/os/GnssPowerCalculator;->computeDuration(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v0

    packed-switch p3, :pswitch_data_1e

    invoke-direct {p0, v0, v1, p6, p7}, Lcom/android/internal/os/GnssPowerCalculator;->computePower(JD)D

    move-result-wide v2

    goto :goto_12

    :pswitch_d  #0x2
    invoke-static {p8, p9}, Lcom/android/internal/os/GnssPowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    nop

    :goto_12
    const/16 v4, 0xa

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v5, v4, v2, v3, p3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-wide v2

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_d  #00000002
    .end packed-switch
.end method

.method private computeDuration(Landroid/os/BatteryStats$Uid;JI)J
    .registers 12

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Sensor;

    if-nez v1, :cond_11

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_11
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    return-wide v3
.end method

.method private computePower(JD)D
    .registers 9

    long-to-double v0, p1

    mul-double/2addr v0, p3

    const-wide v2, 0x414b774000000000L  # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getAverageGnssPower(Landroid/os/BatteryStats;JI)D
    .registers 23

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/internal/os/GnssPowerCalculator;->mAveragePowerGnssOn:D

    const-wide/high16 v3, -0x4010000000000000L  # -1.0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_b

    return-wide v1

    :cond_b
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    :goto_12
    const/4 v8, 0x2

    if-ge v7, v8, :cond_30

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    invoke-virtual {v8, v7, v9, v10, v11}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v12

    add-long/2addr v3, v12

    iget-object v14, v0, Lcom/android/internal/os/GnssPowerCalculator;->mAveragePowerPerSignalQuality:[D

    aget-wide v14, v14, v7

    move-wide/from16 v16, v1

    long-to-double v0, v12

    mul-double/2addr v14, v0

    add-double/2addr v5, v14

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    goto :goto_12

    :cond_30
    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    move/from16 v11, p4

    move-wide/from16 v16, v1

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_42

    long-to-double v0, v3

    div-double v1, v5, v0

    goto :goto_44

    :cond_42
    move-wide/from16 v1, v16

    :goto_44
    return-wide v1
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 32

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move-wide/from16 v11, p3

    invoke-direct {v15, v13, v11, v12, v4}, Lcom/android/internal/os/GnssPowerCalculator;->getAverageGnssPower(Landroid/os/BatteryStats;JI)D

    move-result-wide v16

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    move v10, v5

    :goto_1d
    if-ltz v10, :cond_61

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroid/os/UidBatteryConsumer$Builder;

    nop

    invoke-virtual/range {v18 .. v18}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getGnssMeasuredBatteryConsumptionUC()J

    move-result-wide v7

    invoke-static {v7, v8, v1}, Lcom/android/internal/os/GnssPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v20

    move-object/from16 v5, p0

    move-object/from16 v6, v18

    move-wide/from16 v21, v7

    move-object/from16 v7, v20

    move/from16 v8, v19

    move/from16 v20, v10

    move-wide/from16 v9, p3

    move-wide/from16 v11, v16

    move-object/from16 v23, v14

    move-wide/from16 v13, v21

    invoke-direct/range {v5 .. v14}, Lcom/android/internal/os/GnssPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;IJDJ)D

    move-result-wide v5

    invoke-virtual/range {v18 .. v18}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v7

    if-nez v7, :cond_57

    add-double/2addr v2, v5

    :cond_57
    add-int/lit8 v10, v20, -0x1

    move-object/from16 v13, p2

    move-wide/from16 v11, p3

    move-object/from16 v14, v23

    const/4 v9, 0x1

    goto :goto_1d

    :cond_61
    move/from16 v20, v10

    move-object/from16 v23, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getGnssMeasuredBatteryConsumptionUC()J

    move-result-wide v5

    invoke-static {v5, v6, v1}, Lcom/android/internal/os/GnssPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_75

    invoke-static {v5, v6}, Lcom/android/internal/os/GnssPowerCalculator;->uCtoMah(J)D

    move-result-wide v8

    goto :goto_76

    :cond_75
    move-wide v8, v2

    :goto_76
    invoke-virtual {v0, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    const/16 v10, 0xa

    invoke-virtual {v4, v10, v8, v9, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v4

    invoke-virtual {v4, v10, v2, v3, v7}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
