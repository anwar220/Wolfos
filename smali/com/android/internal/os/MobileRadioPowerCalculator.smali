# classes4.dex

.class public Lcom/android/internal/os/MobileRadioPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NUM_SIGNAL_STRENGTH_LEVELS:I

.field private static final TAG:Ljava/lang/String; = "MobRadioPowerCalculator"

.field private static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final mActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v0

    sput v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 13

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    sget v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    new-array v0, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    nop

    const-string/jumbo v0, "radio.active"

    const-wide/high16 v1, -0x4010000000000000L  # -1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-nez v0, :cond_36

    const-wide/16 v5, 0x0

    const-string/jumbo v0, "modem.controller.rx"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    add-double/2addr v5, v7

    const/4 v0, 0x0

    :goto_22
    sget v7, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v0, v7, :cond_31

    const-string/jumbo v7, "modem.controller.tx"

    invoke-virtual {p1, v7, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_31
    add-int/lit8 v7, v7, 0x1

    int-to-double v7, v7

    div-double v3, v5, v7

    :cond_36
    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-direct {v0, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v0, "radio.on"

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v5

    cmpl-double v1, v5, v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x0

    :goto_49
    sget v2, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v1, v2, :cond_5d

    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v5, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_5d
    goto :goto_93

    :cond_5e
    const-string/jumbo v0, "modem.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-wide/high16 v7, 0x4039000000000000L  # 25.0

    mul-double/2addr v7, v0

    const-wide v9, 0x4066800000000000L  # 180.0

    div-double/2addr v7, v9

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v6, v2, v5

    const/4 v2, 0x1

    :goto_79
    sget v5, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    if-ge v2, v5, :cond_93

    iget-object v5, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v6, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    const-wide/high16 v9, 0x4070000000000000L  # 256.0

    div-double v9, v0, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_93
    :goto_93
    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-wide/16 v1, 0x0

    const-string/jumbo v5, "radio.scanning"

    invoke-virtual {p1, v5, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;[Landroid/os/BatteryConsumer$Key;)V
    .registers 33

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    const/4 v11, 0x0

    move-object/from16 v12, p0

    invoke-direct {v12, v8, v11}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateDuration(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getMobileRadioMeasuredBatteryConsumptionUC()J

    move-result-wide v6

    move-object/from16 v15, p4

    invoke-static {v6, v7, v15}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v4

    move v11, v4

    move-wide v4, v13

    move-wide/from16 v17, v6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculatePower(Landroid/os/BatteryStats$Uid;IJJ)D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v1

    if-nez v1, :cond_36

    iget-wide v1, v9, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    add-long/2addr v1, v13

    iput-wide v1, v9, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    iget-wide v1, v9, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v1, v6

    iput-wide v1, v9, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    :cond_36
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v13, v14}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v2, v1, v6, v7, v11}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v1

    if-eqz v1, :cond_8d

    if-eqz v10, :cond_8d

    array-length v4, v10

    const/4 v5, 0x0

    :goto_4b
    if-ge v5, v4, :cond_8a

    aget-object v3, v10, v5

    iget v2, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v2, :cond_5a

    move/from16 v23, v4

    move/from16 v24, v5

    move-wide/from16 v25, v6

    goto :goto_81

    :cond_5a
    nop

    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTimeInProcessState(I)J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    nop

    invoke-virtual {v8, v2}, Landroid/os/BatteryStats$Uid;->getMobileRadioMeasuredBatteryConsumptionUC(I)J

    move-result-wide v21

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object/from16 v2, p2

    move-object v8, v3

    move v3, v11

    move/from16 v23, v4

    move/from16 v24, v5

    move-wide/from16 v4, v19

    move-wide/from16 v25, v6

    move-wide/from16 v6, v21

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculatePower(Landroid/os/BatteryStats$Uid;IJJ)D

    move-result-wide v1

    invoke-virtual {v0, v8, v1, v2, v11}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_81
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v8, p2

    move/from16 v4, v23

    move-wide/from16 v6, v25

    goto :goto_4b

    :cond_8a
    move-wide/from16 v25, v6

    goto :goto_8f

    :cond_8d
    move-wide/from16 v25, v6

    :goto_8f
    return-void
.end method

.method private calculateDuration(Landroid/os/BatteryStats$Uid;I)J
    .registers 7

    invoke-virtual {p1, p2}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private calculatePower(Landroid/os/BatteryStats$Uid;IJJ)D
    .registers 9

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    invoke-static {p5, p6}, Lcom/android/internal/os/MobileRadioPowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    return-wide v0

    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_13

    invoke-virtual {p0, p3, p4}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calcPowerFromRadioActiveDurationMah(J)D

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private calculateRemaining(Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JJ)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-ne v2, v10, :cond_21

    invoke-static/range {p6 .. p7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->uCtoMah(J)D

    move-result-wide v10

    iget-wide v12, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    sub-double v8, v10, v12

    const-wide/16 v10, 0x0

    cmpg-double v10, v8, v10

    if-gez v10, :cond_21

    const-wide/16 v8, 0x0

    :cond_21
    const/4 v10, 0x0

    :goto_22
    sget v11, Lcom/android/internal/os/MobileRadioPowerCalculator;->NUM_SIGNAL_STRENGTH_LEVELS:I

    const/4 v12, 0x1

    const-wide/16 v13, 0x3e8

    const/4 v15, 0x0

    if-ge v10, v11, :cond_3f

    invoke-virtual {v3, v10, v4, v5, v15}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v15

    div-long v13, v15, v13

    if-ne v2, v12, :cond_37

    invoke-virtual {v0, v13, v14, v10}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calcIdlePowerAtSignalStrengthMah(JI)D

    move-result-wide v11

    add-double/2addr v8, v11

    :cond_37
    add-long/2addr v6, v13

    if-nez v10, :cond_3c

    iput-wide v13, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->noCoverageDurationMs:J

    :cond_3c
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_3f
    invoke-virtual {v3, v4, v5, v15}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v10

    div-long/2addr v10, v13

    invoke-virtual {v3, v4, v5, v15}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v15

    div-long v13, v15, v13

    iget-wide v3, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppDurationMs:J

    sub-long v3, v13, v3

    if-ne v2, v12, :cond_61

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calcScanTimePowerMah(J)D

    move-result-wide v15

    add-double/2addr v8, v15

    const-wide/16 v17, 0x0

    cmp-long v5, v3, v17

    if-lez v5, :cond_61

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calcPowerFromRadioActiveDurationMah(J)D

    move-result-wide v17

    add-double v8, v8, v17

    :cond_61
    iput-wide v13, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->durationMs:J

    iput-wide v8, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    iput-wide v6, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->signalDurationMs:J

    return-void
.end method


# virtual methods
.method public calcIdlePowerAtSignalStrengthMah(JI)D
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mIdlePowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calcPowerFromRadioActiveDurationMah(J)D
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calcScanTimePowerMah(J)D
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 24

    move-object/from16 v0, p1

    new-instance v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration-IA;)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v2

    sget-object v3, Lcom/android/internal/os/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v11, 0x1

    sub-int/2addr v4, v11

    move-object v12, v3

    move v9, v4

    :goto_17
    const/16 v13, 0x8

    if-ltz v9, :cond_46

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v10}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v14

    sget-object v3, Lcom/android/internal/os/MobileRadioPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v12, v3, :cond_38

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v10, v13}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    move-object v12, v3

    goto :goto_38

    :cond_36
    const/4 v3, 0x0

    move-object v12, v3

    :cond_38
    :goto_38
    move-object/from16 v3, p0

    move-object v4, v10

    move-object v5, v14

    move-object v6, v1

    move-object/from16 v7, p7

    move-object v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;[Landroid/os/BatteryConsumer$Key;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_17

    :cond_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getMobileRadioMeasuredBatteryConsumptionUC()J

    move-result-wide v14

    move-object/from16 v9, p7

    invoke-static {v14, v15, v9}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v10

    move-object/from16 v3, p0

    move-object v4, v1

    move v5, v10

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move v11, v10

    move-wide v9, v14

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;ILandroid/os/BatteryStats;JJ)V

    iget-wide v3, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_6b

    iget-wide v3, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_92

    :cond_6b
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v3, v13, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->remainingPowerMah:D

    iget-wide v6, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    add-double/2addr v4, v6

    invoke-virtual {v3, v13, v4, v5, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v3, v13, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/internal/os/MobileRadioPowerCalculator$PowerAndDuration;->totalAppPowerMah:D

    invoke-virtual {v3, v13, v4, v5, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_92
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
