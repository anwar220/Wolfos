# classes4.dex

.class public Lcom/android/internal/os/BluetoothPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothPowerCalc"

.field private static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final mHasBluetoothPowerController:Z

.field private final mIdleMa:D

.field private final mRxMa:D

.field private final mTxMa:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/internal/os/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 10

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "bluetooth.controller.idle"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    const-string v2, "bluetooth.controller.rx"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    const-string v4, "bluetooth.controller.tx"

    invoke-virtual {p1, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_2b

    cmpl-double v0, v2, v6

    if-eqz v0, :cond_2b

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;)V
    .registers 16

    nop

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getBluetoothMeasuredBatteryConsumptionUC()J

    move-result-wide v9

    invoke-static {v9, v10, p3}, Lcom/android/internal/os/BluetoothPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v0

    nop

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v11

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v7

    move-object v1, p0

    move v3, v0

    move-wide v4, v9

    move-object v6, v11

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;)V

    iget-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v1

    check-cast v1, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v4, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v1

    if-nez v1, :cond_48

    iget-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    iget-wide v3, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    iget-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    iget-wide v3, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v1, v3

    iput-wide v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    :cond_48
    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v1, :cond_6b

    const/4 v1, 0x0

    :goto_53
    iget-object v2, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v2, v2

    if-ge v1, v2, :cond_6b

    iget-object v2, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v2, v2, v1

    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v3, :cond_61

    goto :goto_68

    :cond_61
    iget-object v4, p2, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    aget-wide v4, v4, v1

    invoke-virtual {p1, v2, v4, v5, v0}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_6b
    return-void
.end method

.method private calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;)V
    .registers 36

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    const-wide/16 v2, 0x0

    if-nez p5, :cond_18

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    iput-wide v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-object v4, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v4, :cond_17

    iget-object v4, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-static {v4, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :cond_17
    return-void

    :cond_18
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v15

    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v19

    add-long v8, v15, v17

    add-long v8, v8, v19

    iput-wide v8, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 v8, 0x2

    move/from16 v13, p2

    if-ne v13, v8, :cond_70

    invoke-static/range {p3 .. p4}, Lcom/android/internal/os/BluetoothPowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    if-eqz v0, :cond_6c

    iget-object v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v2, :cond_6c

    const/4 v2, 0x0

    :goto_4b
    iget-object v3, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_68

    iget-object v3, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v3, v3, v2

    iget v7, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v7, :cond_59

    goto :goto_65

    :cond_59
    iget-object v8, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats$Uid;->getBluetoothMeasuredBatteryConsumptionUC(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/internal/os/BluetoothPowerCalculator;->uCtoMah(J)D

    move-result-wide v9

    aput-wide v9, v8, v2

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_68
    move-object/from16 v7, p0

    goto/16 :goto_dd

    :cond_6c
    move-object/from16 v7, p0

    goto/16 :goto_dd

    :cond_70
    if-nez p6, :cond_92

    nop

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    long-to-double v7, v7

    const-wide v9, 0x414b774000000000L  # 3600000.0

    div-double/2addr v7, v9

    cmpl-double v9, v7, v2

    if-eqz v9, :cond_92

    iput-wide v7, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-object v9, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v9, :cond_91

    iget-object v9, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-static {v9, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :cond_91
    return-void

    :cond_92
    move-object/from16 v7, p0

    iget-boolean v8, v7, Lcom/android/internal/os/BluetoothPowerCalculator;->mHasBluetoothPowerController:Z

    if-eqz v8, :cond_d2

    move-object/from16 v8, p0

    move-wide/from16 v9, v17

    move-wide/from16 v11, v19

    move-wide v13, v15

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-object v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v2, :cond_dd

    const/4 v2, 0x0

    :goto_aa
    iget-object v3, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v3

    if-ge v2, v3, :cond_d1

    iget-object v3, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v3, v3, v2

    iget v8, v3, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v8, :cond_b8

    goto :goto_ce

    :cond_b8
    iget-object v9, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-virtual {v5, v8}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v22

    invoke-virtual {v6, v8}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v24

    invoke-virtual {v4, v8}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v26

    move-object/from16 v21, p0

    invoke-virtual/range {v21 .. v27}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculatePowerMah(JJJ)D

    move-result-wide v10

    aput-wide v10, v9, v2

    :goto_ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    :cond_d1
    goto :goto_dd

    :cond_d2
    iput-wide v2, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-object v8, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    if-eqz v8, :cond_dd

    iget-object v8, v1, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    invoke-static {v8, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :cond_dd
    :goto_dd
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 28

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    sget-object v2, Lcom/android/internal/os/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    new-instance v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration-IA;)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    :goto_1e
    const/4 v14, 0x2

    if-ltz v5, :cond_46

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    sget-object v7, Lcom/android/internal/os/BluetoothPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v2, v7, :cond_3e

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-virtual {v6, v14}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    iput-object v2, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v7, v2

    new-array v7, v7, [D

    iput-object v7, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerPerKeyMah:[D

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :cond_3e
    :goto_3e
    move-object/from16 v15, p0

    invoke-direct {v15, v6, v3, v1}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;Landroid/os/BatteryUsageStatsQuery;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    :cond_46
    move-object/from16 v15, p0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothMeasuredBatteryConsumptionUC()J

    move-result-wide v11

    invoke-static {v11, v12, v1}, Lcom/android/internal/os/BluetoothPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v10

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v16

    const/4 v6, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v17

    move-object/from16 v5, p0

    move v7, v10

    move-wide v8, v11

    move v13, v10

    move-object/from16 v10, v16

    move-wide/from16 v18, v11

    move/from16 v11, v17

    move-object v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/android/internal/os/BluetoothPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJLandroid/os/BatteryStats$ControllerActivityCounter;ZLcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;)V

    const-wide/16 v5, 0x0

    iget-wide v7, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    iget-wide v9, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    sub-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    iget-wide v8, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v7, v14, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v7

    check-cast v7, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v8, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->powerMah:D

    iget-wide v10, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-virtual {v7, v14, v8, v9, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v7

    iget-wide v8, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalDurationMs:J

    invoke-virtual {v7, v14, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v7

    check-cast v7, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v8, v3, Lcom/android/internal/os/BluetoothPowerCalculator$PowerAndDuration;->totalPowerMah:D

    invoke-virtual {v7, v14, v8, v9, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public calculatePowerMah(JJJ)D
    .registers 13

    long-to-double v0, p5

    iget-wide v2, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mIdleMa:D

    mul-double/2addr v0, v2

    long-to-double v2, p1

    iget-wide v4, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mRxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    long-to-double v2, p3

    iget-wide v4, p0, Lcom/android/internal/os/BluetoothPowerCalculator;->mTxMa:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide v2, 0x414b774000000000L  # 3600000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method
