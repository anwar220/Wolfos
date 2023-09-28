# classes4.dex

.class public Lcom/android/internal/os/WifiPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerCalculator"

.field private static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final mBatchScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mHasWifiPowerController:Z

.field private final mIdlePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mPowerOnPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mRxPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mTxPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mWifiPowerPerPacket:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/internal/os/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.on"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.scan"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.batchedscan"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mBatchScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v1, "wifi.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdlePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v1, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v2, "wifi.controller.tx"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v1, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v2, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string/jumbo v3, "wifi.controller.rx"

    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-static {p1}, Lcom/android/internal/os/WifiPowerCalculator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/os/WifiPowerCalculator;->mWifiPowerPerPacket:D

    nop

    invoke-virtual {v0}, Lcom/android/internal/os/UsageBasedPowerEstimator;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {v1}, Lcom/android/internal/os/UsageBasedPowerEstimator;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_72

    const/4 v0, 0x1

    goto :goto_73

    :cond_72
    const/4 v0, 0x0

    :goto_73
    iput-boolean v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mHasWifiPowerController:Z

    return-void
.end method

.method private calculateApp(Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;Landroid/os/BatteryStats$Uid;IJIZJ)V
    .registers 39

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->wifiRxPackets:J

    const/4 v7, 0x3

    invoke-virtual {v1, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->wifiTxPackets:J

    invoke-virtual {v1, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->wifiRxBytes:J

    invoke-virtual {v1, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->wifiTxBytes:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz p7, :cond_d2

    move-object/from16 v14, p0

    iget-boolean v9, v14, Lcom/android/internal/os/WifiPowerCalculator;->mHasWifiPowerController:Z

    if-eqz v9, :cond_d2

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v16

    if-eqz v16, :cond_c2

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v7, v7, v9

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    invoke-virtual {v6, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v17

    invoke-virtual {v7, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v19

    invoke-virtual {v15, v5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v21

    add-long v9, v21, v17

    add-long v9, v9, v19

    iput-wide v9, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    if-ne v2, v8, :cond_6a

    nop

    move-object/from16 v9, p0

    move-wide/from16 v10, v17

    move-wide/from16 v12, v19

    move-object/from16 v23, v15

    move-wide/from16 v14, v21

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/os/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    goto :goto_72

    :cond_6a
    move-object/from16 v23, v15

    invoke-static/range {p8 .. p9}, Lcom/android/internal/os/WifiPowerCalculator;->uCtoMah(J)D

    move-result-wide v9

    iput-wide v9, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    :goto_72
    iget-object v9, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->keys:[Landroid/os/BatteryConsumer$Key;

    if-eqz v9, :cond_c1

    const/4 v9, 0x0

    move v14, v9

    :goto_78
    iget-object v9, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v9, v9

    if-ge v14, v9, :cond_bf

    iget-object v9, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v9, v9, v14

    iget v15, v9, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v15, :cond_88

    move/from16 v24, v14

    goto :goto_bb

    :cond_88
    if-ne v2, v8, :cond_ac

    iget-object v12, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    invoke-virtual {v6, v15}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v10

    invoke-virtual {v7, v15}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v24

    move-object/from16 v13, v23

    invoke-virtual {v13, v15}, Landroid/os/BatteryStats$LongCounter;->getCountForProcessState(I)J

    move-result-wide v26

    move-object/from16 v9, p0

    move-object/from16 v28, v12

    move-wide/from16 v12, v24

    move/from16 v24, v14

    move v8, v15

    move-wide/from16 v14, v26

    invoke-virtual/range {v9 .. v15}, Lcom/android/internal/os/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v9

    aput-wide v9, v28, v24

    goto :goto_bb

    :cond_ac
    move/from16 v24, v14

    move v8, v15

    iget-object v9, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    invoke-virtual {v1, v8}, Landroid/os/BatteryStats$Uid;->getWifiMeasuredBatteryConsumptionUC(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/android/internal/os/WifiPowerCalculator;->uCtoMah(J)D

    move-result-wide v10

    aput-wide v10, v9, v24

    :goto_bb
    add-int/lit8 v14, v24, 0x1

    const/4 v8, 0x1

    goto :goto_78

    :cond_bf
    move/from16 v24, v14

    :cond_c1
    goto :goto_d1

    :cond_c2
    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    iput-wide v6, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    iget-object v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    if-eqz v8, :cond_d1

    iget-object v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    invoke-static {v8, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    :cond_d1
    :goto_d1
    goto :goto_11b

    :cond_d2
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v14, v8, v10

    iput-wide v14, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    const/4 v8, 0x1

    if-ne v2, v8, :cond_10a

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v8

    div-long v20, v8, v10

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    move-wide/from16 v22, v8

    :goto_ea
    const/4 v8, 0x5

    if-ge v12, v8, :cond_f7

    invoke-virtual {v1, v12, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v8

    div-long/2addr v8, v10

    add-long v22, v22, v8

    add-int/lit8 v12, v12, 0x1

    goto :goto_ea

    :cond_f7
    iget-wide v10, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->wifiRxPackets:J

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->wifiTxPackets:J

    move-object/from16 v9, p0

    move-wide/from16 v24, v14

    move-wide/from16 v16, v20

    move-wide/from16 v18, v22

    invoke-virtual/range {v9 .. v19}, Lcom/android/internal/os/WifiPowerCalculator;->calcPowerWithoutControllerDataMah(JJJJJ)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    goto :goto_112

    :cond_10a
    move-wide/from16 v24, v14

    invoke-static/range {p8 .. p9}, Lcom/android/internal/os/WifiPowerCalculator;->uCtoMah(J)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    :goto_112
    iget-object v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    if-eqz v8, :cond_11b

    iget-object v8, v0, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    invoke-static {v8, v6, v7}, Ljava/util/Arrays;->fill([DD)V

    :cond_11b
    :goto_11b
    return-void
.end method

.method private calculateRemaining(Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;ILandroid/os/BatteryStats;JIZJDJ)V
    .registers 38

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p6

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    if-ne v9, v2, :cond_11

    invoke-static/range {p12 .. p13}, Lcom/android/internal/os/WifiPowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    :cond_11
    const-wide/16 v11, 0x0

    const/4 v2, 0x1

    if-eqz p7, :cond_63

    iget-boolean v3, v7, Lcom/android/internal/os/WifiPowerCalculator;->mHasWifiPowerController:Z

    if-eqz v3, :cond_63

    nop

    invoke-virtual/range {p3 .. p3}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    invoke-virtual {v13}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v16

    invoke-virtual {v13}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v18

    add-long v3, v14, v18

    add-long v20, v3, v16

    if-ne v9, v2, :cond_62

    invoke-virtual {v13}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L  # 3600000.0

    div-double v22, v2, v4

    cmpl-double v0, v22, v11

    if-nez v0, :cond_60

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    move-wide v5, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/WifiPowerCalculator;->calcPowerFromControllerDataMah(JJJ)D

    move-result-wide v0

    goto :goto_62

    :cond_60
    move-wide/from16 v0, v22

    :cond_62
    :goto_62
    goto :goto_75

    :cond_63
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    if-ne v9, v2, :cond_73

    invoke-virtual {v7, v3, v4}, Lcom/android/internal/os/WifiPowerCalculator;->calcGlobalPowerWithoutControllerDataMah(J)D

    move-result-wide v0

    move-wide/from16 v20, v3

    goto :goto_75

    :cond_73
    move-wide/from16 v20, v3

    :goto_75
    const-wide/16 v2, 0x0

    sub-long v4, v20, p8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    sub-double v2, v0, p10

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .registers 7

    const-wide/32 v0, 0xf4240

    nop

    const-string/jumbo v2, "wifi.active"

    invoke-virtual {p0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L  # 3600.0

    div-double/2addr v2, v4

    const-wide v4, 0x404e848000000000L  # 61.03515625

    div-double v4, v2, v4

    return-wide v4
.end method


# virtual methods
.method public calcGlobalPowerWithoutControllerDataMah(J)D
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calcPowerFromControllerDataMah(JJJ)D
    .registers 11

    iget-object v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v2, p3, p4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdlePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v2, p5, p6}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public calcPowerWithoutControllerDataMah(JJJJJ)D
    .registers 15

    add-long v0, p1, p3

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mWifiPowerPerPacket:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mPowerOnPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v2, p5, p6}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v2, p7, p8}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mBatchScanPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v2, p9, p10}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 36

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    sget-object v2, Lcom/android/internal/os/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;-><init>(Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic-IA;)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v15, 0x1

    sub-int/2addr v9, v15

    move v13, v9

    :goto_1c
    const/16 v14, 0xb

    if-ltz v13, :cond_b0

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroid/os/UidBatteryConsumer$Builder;

    sget-object v9, Lcom/android/internal/os/WifiPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v2, v9, :cond_3e

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v9

    if-eqz v9, :cond_3d

    invoke-virtual {v12, v14}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v2

    iput-object v2, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v9, v2

    new-array v9, v9, [D

    iput-object v9, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :cond_3e
    :goto_3e
    nop

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWifiMeasuredBatteryConsumptionUC()J

    move-result-wide v10

    invoke-static {v10, v11, v1}, Lcom/android/internal/os/WifiPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v9

    invoke-virtual {v12}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v18

    move/from16 v19, v9

    move-object/from16 v9, p0

    move-wide/from16 v20, v10

    move-object v10, v7

    move-object/from16 v11, v16

    move-object/from16 v22, v12

    move/from16 v12, v19

    move-object/from16 v24, v8

    move/from16 v23, v13

    move v8, v14

    move-wide/from16 v13, p3

    move/from16 v15, v17

    move/from16 v16, v18

    move-wide/from16 v17, v20

    invoke-direct/range {v9 .. v18}, Lcom/android/internal/os/WifiPowerCalculator;->calculateApp(Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;Landroid/os/BatteryStats$Uid;IJIZJ)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v9

    if-nez v9, :cond_7e

    iget-wide v9, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    add-long/2addr v3, v9

    iget-wide v9, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    add-double/2addr v5, v9

    :cond_7e
    iget-wide v9, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    move-object/from16 v11, v22

    invoke-virtual {v11, v8, v9, v10}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    iget-wide v9, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    move/from16 v12, v19

    invoke-virtual {v11, v8, v9, v10, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v8

    if-eqz v8, :cond_a9

    if-eqz v2, :cond_a9

    const/4 v8, 0x0

    :goto_95
    array-length v9, v2

    if-ge v8, v9, :cond_a9

    aget-object v9, v2, v8

    iget v10, v9, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v10, :cond_9f

    goto :goto_a6

    :cond_9f
    iget-object v13, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerPerKeyMah:[D

    aget-wide v13, v13, v8

    invoke-virtual {v11, v9, v13, v14, v12}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_a6
    add-int/lit8 v8, v8, 0x1

    goto :goto_95

    :cond_a9
    add-int/lit8 v13, v23, -0x1

    move-object/from16 v8, v24

    const/4 v15, 0x1

    goto/16 :goto_1c

    :cond_b0
    move-object/from16 v24, v8

    move/from16 v23, v13

    move v8, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getWifiMeasuredBatteryConsumptionUC()J

    move-result-wide v13

    invoke-static {v13, v14, v1}, Lcom/android/internal/os/WifiPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v17

    move-object/from16 v9, p0

    move-object v10, v7

    move v11, v15

    move-object/from16 v12, p2

    move-wide/from16 v25, v13

    move-wide/from16 v13, p3

    move/from16 v27, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-wide/from16 v21, v25

    invoke-direct/range {v9 .. v22}, Lcom/android/internal/os/WifiPowerCalculator;->calculateRemaining(Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;ILandroid/os/BatteryStats;JIZJDJ)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v9

    iget-wide v10, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->durationMs:J

    invoke-virtual {v9, v8, v10, v11}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v9

    check-cast v9, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v10, v7, Lcom/android/internal/os/WifiPowerCalculator$PowerDurationAndTraffic;->powerMah:D

    add-double/2addr v10, v5

    move/from16 v12, v27

    invoke-virtual {v9, v8, v10, v11, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v9

    invoke-virtual {v9, v8, v5, v6, v12}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/16 v0, 0xb

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
