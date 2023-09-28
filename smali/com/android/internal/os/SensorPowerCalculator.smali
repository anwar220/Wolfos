# classes4.dex

.class public Lcom/android/internal/os/SensorPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# instance fields
.field private final mSensors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2c
    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;J)D
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/os/SensorPowerCalculator;->calculatePowerMah(Landroid/os/BatteryStats$Uid;JI)D

    move-result-wide v1

    nop

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/os/SensorPowerCalculator;->calculateDuration(Landroid/os/BatteryStats$Uid;JI)J

    move-result-wide v3

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-wide v1
.end method

.method private calculateDuration(Landroid/os/BatteryStats$Uid;JI)J
    .registers 20

    const-wide/16 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_33

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const/16 v6, -0x2710

    if-ne v5, v6, :cond_1a

    move-wide/from16 v8, p2

    move/from16 v10, p4

    goto :goto_30

    :cond_1a
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    move-wide/from16 v8, p2

    move/from16 v10, p4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    add-long/2addr v0, v11

    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_33
    move-wide/from16 v8, p2

    move/from16 v10, p4

    return-wide v0
.end method

.method private calculatePowerMah(Landroid/os/BatteryStats$Uid;JI)D
    .registers 23

    const-wide/16 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_6c

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    const/16 v6, -0x2710

    if-ne v5, v6, :cond_20

    move-object/from16 v13, p0

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-object/from16 v16, v2

    move/from16 v17, v3

    goto :goto_65

    :cond_20
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    move-wide/from16 v8, p2

    move/from16 v10, p4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-eqz v13, :cond_5f

    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/Sensor;

    if-eqz v14, :cond_5a

    long-to-float v15, v11

    invoke-virtual {v14}, Landroid/hardware/Sensor;->getPower()F

    move-result v16

    mul-float v15, v15, v16

    const v16, 0x4a5bba00  # 3600000.0f

    div-float v15, v15, v16

    move-object/from16 v16, v2

    move/from16 v17, v3

    float-to-double v2, v15

    add-double/2addr v0, v2

    goto :goto_65

    :cond_5a
    move-object/from16 v16, v2

    move/from16 v17, v3

    goto :goto_65

    :cond_5f
    move-object/from16 v13, p0

    move-object/from16 v16, v2

    move/from16 v17, v3

    :goto_65
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v17

    goto :goto_b

    :cond_6c
    return-wide v0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 16

    const-wide/16 v0, 0x0

    nop

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_d
    if-ltz v3, :cond_27

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v6

    if-nez v6, :cond_24

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v6

    invoke-direct {p0, v5, v6, p3, p4}, Lcom/android/internal/os/SensorPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;J)D

    move-result-wide v6

    add-double/2addr v0, v6

    :cond_24
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    :cond_27
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1, v4}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    invoke-virtual {v3, v5, v0, v1}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
