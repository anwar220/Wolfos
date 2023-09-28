# classes4.dex

.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/CpuPowerCalculator$Result;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"

.field private static final UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field private final mCpuActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mNumCpuClusters:I

.field private final mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

.field private final mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Lcom/android/internal/os/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 10

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    new-instance v1, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string v2, "cpu.active"

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-array v0, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    const/4 v0, 0x0

    :goto_1b
    iget v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v2, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCluster(I)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2f
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_31
    iget v2, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v1, v2, :cond_3d

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_3d
    new-array v1, v2, [[Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_47
    iget v3, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v2, v3, :cond_74

    invoke-virtual {p1, v2}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-array v5, v3, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    aput-object v5, v4, v2

    const/4 v4, 0x0

    :goto_56
    if-ge v4, v3, :cond_71

    new-instance v5, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {p1, v2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iget-object v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v6, v6, v2

    aput-object v5, v6, v4

    iget-object v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    add-int/lit8 v7, v1, 0x1

    aput-object v5, v6, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_56

    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_74
    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Landroid/os/BatteryUsageStatsQuery;Lcom/android/internal/os/CpuPowerCalculator$Result;[Landroid/os/BatteryConsumer$Key;)V
    .registers 16

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCpuMeasuredBatteryConsumptionUC()J

    move-result-wide v7

    invoke-static {v7, v8, p3}, Lcom/android/internal/os/CpuPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v9

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, v9

    move-wide v3, v7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/CpuPowerCalculator;->calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJILcom/android/internal/os/CpuPowerCalculator$Result;)V

    iget-wide v0, p4, Lcom/android/internal/os/CpuPowerCalculator$Result;->powerMah:D

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1, v9}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    iget-wide v3, p4, Lcom/android/internal/os/CpuPowerCalculator$Result;->durationMs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/UidBatteryConsumer$Builder;

    iget-object v1, p4, Lcom/android/internal/os/CpuPowerCalculator$Result;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setPackageWithHighestDrain(Ljava/lang/String;)Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {p3}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p5, :cond_3a

    packed-switch v9, :pswitch_data_3c

    goto :goto_3a

    :pswitch_33  #0x2
    invoke-direct {p0, p1, p2, p5}, Lcom/android/internal/os/CpuPowerCalculator;->calculateMeasuredPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;)V

    goto :goto_3a

    :pswitch_37  #0x1
    invoke-direct {p0, p1, p2, p5, p4}, Lcom/android/internal/os/CpuPowerCalculator;->calculateModeledPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;Lcom/android/internal/os/CpuPowerCalculator$Result;)V

    :cond_3a
    :goto_3a
    return-void

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_37  #00000001
        :pswitch_33  #00000002
    .end packed-switch
.end method

.method private calculateMeasuredPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;)V
    .registers 12

    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_22

    aget-object v2, p3, v1

    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v3, :cond_b

    goto :goto_1f

    :cond_b
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-virtual {p2, v3}, Landroid/os/BatteryStats$Uid;->getCpuMeasuredBatteryConsumptionUC(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1f

    invoke-static {v3, v4}, Lcom/android/internal/os/CpuPowerCalculator;->uCtoMah(J)D

    move-result-wide v5

    const/4 v7, 0x2

    invoke-virtual {p1, v2, v5, v6, v7}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    :cond_1f
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return-void
.end method

.method private calculateModeledPowerPerProcessState(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[Landroid/os/BatteryConsumer$Key;Lcom/android/internal/os/CpuPowerCalculator$Result;)V
    .registers 21

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget-object v0, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    if-nez v0, :cond_10

    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    goto :goto_17

    :cond_10
    iget-object v0, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    :goto_17
    const/4 v0, 0x0

    move v9, v0

    :goto_19
    const/4 v0, 0x7

    if-ge v9, v0, :cond_46

    nop

    invoke-static {v9}, Landroid/os/BatteryStats;->mapUidProcessStateToBatteryConsumerProcessState(I)I

    move-result v10

    if-nez v10, :cond_24

    goto :goto_43

    :cond_24
    const/4 v11, 0x0

    iget-object v0, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    invoke-virtual {v6, v0, v9}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v12

    if-nez v11, :cond_2f

    if-eqz v12, :cond_43

    :cond_2f
    iget-object v13, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    aget-wide v14, v13, v10

    const-wide/16 v2, 0x0

    iget-object v5, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v4, v11

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v0

    add-double/2addr v14, v0

    aput-wide v14, v13, v10

    :cond_43
    :goto_43
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_46
    array-length v0, v7

    const/4 v1, 0x0

    :goto_48
    if-ge v1, v0, :cond_79

    aget-object v2, v7, v1

    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    if-nez v3, :cond_55

    move-object/from16 v5, p0

    move-object/from16 v12, p1

    goto :goto_76

    :cond_55
    iget v3, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    invoke-virtual {v6, v3}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime(I)J

    move-result-wide v3

    iget-object v5, v8, Lcom/android/internal/os/CpuPowerCalculator$Result;->perProcStatePowerMah:[D

    iget v9, v2, Landroid/os/BatteryConsumer$Key;->processState:I

    aget-wide v9, v5, v9

    move-object/from16 v5, p0

    iget-object v11, v5, Lcom/android/internal/os/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v11, v3, v4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v11

    add-double/2addr v9, v11

    const/4 v11, 0x1

    move-object/from16 v12, p1

    invoke-virtual {v12, v2, v9, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(Landroid/os/BatteryConsumer$Key;DI)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v11

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v11, v2, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(Landroid/os/BatteryConsumer$Key;J)Landroid/os/BatteryConsumer$BaseBuilder;

    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_79
    move-object/from16 v5, p0

    move-object/from16 v12, p1

    return-void
.end method

.method private calculatePowerAndDuration(Landroid/os/BatteryStats$Uid;IJILcom/android/internal/os/CpuPowerCalculator$Result;)V
    .registers 28

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    packed-switch p2, :pswitch_data_9e

    move-object/from16 v5, p0

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/os/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D

    move-result-wide v6

    goto :goto_23

    :pswitch_1c  #0x2
    invoke-static/range {p3 .. p4}, Lcom/android/internal/os/CpuPowerCalculator;->uCtoMah(J)D

    move-result-wide v5

    move-wide v6, v5

    move-object/from16 v5, p0

    :goto_23
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_31
    if-ge v15, v14, :cond_8d

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v16

    add-long v11, v11, v16

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v16

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v18

    add-long v16, v16, v18

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v18

    move-object/from16 v20, v0

    add-long v0, v16, v18

    if-eqz v10, :cond_7a

    move-wide/from16 v16, v11

    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6a

    move-object/from16 v18, v13

    goto :goto_7e

    :cond_6a
    move-object/from16 v18, v13

    long-to-double v12, v0

    cmpg-double v12, v8, v12

    if-gez v12, :cond_80

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_80

    long-to-double v8, v0

    move-object v10, v5

    goto :goto_80

    :cond_7a
    move-wide/from16 v16, v11

    move-object/from16 v18, v13

    :goto_7e
    long-to-double v8, v0

    move-object v10, v5

    :cond_80
    :goto_80
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, p0

    move-object/from16 v0, p1

    move/from16 v1, p5

    move-wide/from16 v11, v16

    move-object/from16 v13, v18

    goto :goto_31

    :cond_8d
    move-object/from16 v18, v13

    cmp-long v0, v11, v3

    if-lez v0, :cond_94

    move-wide v3, v11

    :cond_94
    iput-wide v3, v2, Lcom/android/internal/os/CpuPowerCalculator$Result;->durationMs:J

    iput-wide v11, v2, Lcom/android/internal/os/CpuPowerCalculator$Result;->durationFgMs:J

    iput-wide v6, v2, Lcom/android/internal/os/CpuPowerCalculator$Result;->powerMah:D

    iput-object v10, v2, Lcom/android/internal/os/CpuPowerCalculator$Result;->packageWithHighestDrain:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_1c  #00000002
    .end packed-switch
.end method

.method private calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D
    .registers 15

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/os/CpuPowerCalculator;->calculateActiveCpuPowerMah(J)D

    move-result-wide v0

    const-string v2, " actual # "

    const-string v3, "UID "

    const-string v4, "CpuPowerCalculator"

    if-eqz p4, :cond_52

    array-length v5, p4

    iget v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ne v5, v6, :cond_25

    const/4 v5, 0x0

    :goto_12
    iget v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    if-ge v5, v6, :cond_24

    iget-object v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v6, v6, v5

    aget-wide v7, p4, v5

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v6

    add-double/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_24
    goto :goto_52

    :cond_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CPU cluster # mismatch: Power Profile # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mNumCpuClusters:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_52
    if-eqz p5, :cond_9b

    array-length v5, p5

    iget-object v6, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v6, v6

    if-ne v5, v6, :cond_6d

    const/4 v2, 0x0

    :goto_5b
    array-length v3, p5

    if-ge v2, v3, :cond_6c

    iget-object v3, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v3, v3, v2

    aget-wide v4, p5, v2

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_6c
    goto :goto_9b

    :cond_6d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " CPU freq # mismatch: Power Profile # "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    :goto_9b
    return-wide v0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 23

    move-object/from16 v0, p1

    const-wide/16 v1, 0x0

    sget-object v3, Lcom/android/internal/os/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    new-instance v4, Lcom/android/internal/os/CpuPowerCalculator$Result;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/os/CpuPowerCalculator$Result;-><init>(Lcom/android/internal/os/CpuPowerCalculator$Result-IA;)V

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, v4, Lcom/android/internal/os/CpuPowerCalculator$Result;->cpuFreqTimes:[J

    :cond_1a
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    move v13, v6

    :goto_26
    if-ltz v13, :cond_58

    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Landroid/os/UidBatteryConsumer$Builder;

    sget-object v6, Lcom/android/internal/os/CpuPowerCalculator;->UNINITIALIZED_KEYS:[Landroid/os/BatteryConsumer$Key;

    if-ne v3, v6, :cond_3f

    invoke-virtual/range {p7 .. p7}, Landroid/os/BatteryUsageStatsQuery;->isProcessStateDataNeeded()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v14, v12}, Landroid/os/UidBatteryConsumer$Builder;->getKeys(I)[Landroid/os/BatteryConsumer$Key;

    move-result-object v3

    goto :goto_3f

    :cond_3e
    const/4 v3, 0x0

    :cond_3f
    :goto_3f
    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v8

    move-object v6, p0

    move-object v7, v14

    move-object/from16 v9, p7

    move-object v10, v4

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/os/CpuPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;Landroid/os/BatteryUsageStatsQuery;Lcom/android/internal/os/CpuPowerCalculator$Result;[Landroid/os/BatteryConsumer$Key;)V

    invoke-virtual {v14}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v6

    if-nez v6, :cond_55

    iget-wide v6, v4, Lcom/android/internal/os/CpuPowerCalculator$Result;->powerMah:D

    add-double/2addr v1, v6

    :cond_55
    add-int/lit8 v13, v13, -0x1

    goto :goto_26

    :cond_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getCpuMeasuredBatteryConsumptionUC()J

    move-result-wide v6

    move-object/from16 v8, p7

    invoke-static {v6, v7, v8}, Lcom/android/internal/os/CpuPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v9

    invoke-virtual {v0, v12}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    invoke-virtual {v10, v12, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v10

    const/4 v11, 0x2

    if-ne v9, v11, :cond_76

    invoke-static {v6, v7}, Lcom/android/internal/os/CpuPowerCalculator;->uCtoMah(J)D

    move-result-wide v13

    goto :goto_77

    :cond_76
    move-wide v13, v1

    :goto_77
    invoke-virtual {v10, v12, v13, v14, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public calculateActiveCpuPowerMah(J)D
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mCpuActivePowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculatePerCpuClusterPowerMah(IJ)D
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerClusterPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculatePerCpuFreqPowerMah(IIJ)D
    .registers 7

    iget-object v0, p0, Lcom/android/internal/os/CpuPowerCalculator;->mPerCpuFreqPowerEstimatorsByCluster:[[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;I)D
    .registers 9

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    move-result-object v4

    invoke-virtual {p1, p2}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/CpuPowerCalculator;->calculateUidModeledPowerMah(Landroid/os/BatteryStats$Uid;J[J[J)D

    move-result-wide v0

    return-wide v0
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
