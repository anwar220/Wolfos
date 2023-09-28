# classes4.dex

.class public Lcom/android/internal/os/SystemServicePowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemServicePowerCalc"


# instance fields
.field private final mCpuPowerCalculator:Lcom/android/internal/os/CpuPowerCalculator;

.field private final mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 13

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    new-instance v0, Lcom/android/internal/os/CpuPowerCalculator;

    invoke-direct {v0, p1}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v0, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mCpuPowerCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_1a

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_1a
    new-array v2, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v2, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_3f

    invoke-virtual {p1, v3}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v4, :cond_3c

    iget-object v6, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    add-int/lit8 v7, v2, 0x1

    new-instance v8, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {p1, v3, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v8, v6, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_27

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3f
    return-void
.end method

.method private calculatePowerUsingMeasuredConsumption(Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;J)D
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/internal/os/SystemServicePowerCalculator;->calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mCpuPowerCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/os/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_18

    invoke-static {p3, p4}, Lcom/android/internal/os/SystemServicePowerCalculator;->uCtoMah(J)D

    move-result-wide v4

    mul-double/2addr v4, v0

    div-double/2addr v4, v2

    return-wide v4

    :cond_18
    return-wide v4
.end method

.method private calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D
    .registers 12

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getSystemServiceTimeAtCpuSpeeds()[J

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v1, 0x0

    return-wide v1

    :cond_9
    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v3, v3

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_27

    iget-object v5, p0, Lcom/android/internal/os/SystemServicePowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v5, v5, v4

    aget-wide v6, v0, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_27
    return-wide v1
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    if-nez v3, :cond_15

    return-void

    :cond_15
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCpuMeasuredBatteryConsumptionUC()J

    move-result-wide v5

    move-object/from16 v7, p7

    invoke-static {v5, v6, v7}, Lcom/android/internal/os/SystemServicePowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_27

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/android/internal/os/SystemServicePowerCalculator;->calculatePowerUsingMeasuredConsumption(Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;J)D

    move-result-wide v9

    goto :goto_2b

    :cond_27
    invoke-direct {v0, v2}, Lcom/android/internal/os/SystemServicePowerCalculator;->calculatePowerUsingPowerProfile(Landroid/os/BatteryStats;)D

    move-result-wide v9

    :goto_2b
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer$Builder;

    if-eqz v4, :cond_47

    nop

    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer$Builder;->getTotalPower()D

    move-result-wide v12

    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    const/16 v12, 0x11

    neg-double v13, v9

    invoke-virtual {v4, v12, v13, v14, v8}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_47
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    :goto_4d
    const/4 v14, 0x7

    if-ltz v12, :cond_72

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UidBatteryConsumer$Builder;

    if-eq v15, v4, :cond_69

    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v16

    nop

    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$Uid;->getProportionalSystemServiceUsage()D

    move-result-wide v17

    move-object/from16 v19, v3

    mul-double v2, v9, v17

    invoke-virtual {v15, v14, v2, v3, v8}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    goto :goto_6b

    :cond_69
    move-object/from16 v19, v3

    :goto_6b
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    goto :goto_4d

    :cond_72
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    invoke-virtual {v2, v14, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {v1, v13}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    invoke-virtual {v2, v14, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method
