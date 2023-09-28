# classes4.dex

.class public Lcom/android/internal/os/AmbientDisplayPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# instance fields
.field private final mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumDisplays()I

    move-result v0

    new-array v1, v0, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v1, p0, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v3, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string v4, "ambient.on.display"

    invoke-virtual {p1, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForOrdinal(Ljava/lang/String;I)D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    return-void
.end method

.method private calculateDuration(Landroid/os/BatteryStats;JI)J
    .registers 9

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private calculateEstimatedPower(Landroid/os/BatteryStats;J)D
    .registers 12

    iget-object v0, p0, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v0, v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_1b

    invoke-virtual {p1, v3, p2, p3}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    aget-object v6, v6, v3

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v6

    add-double/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1b
    return-wide v1
.end method

.method private calculateTotalPower(ILandroid/os/BatteryStats;JJ)D
    .registers 9

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->calculateEstimatedPower(Landroid/os/BatteryStats;J)D

    move-result-wide v0

    return-wide v0

    :pswitch_8  #0x2
    invoke-static {p5, p6}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->uCtoMah(J)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_8  #00000002
    .end packed-switch
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 26

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getScreenDozeMeasuredBatteryConsumptionUC()J

    move-result-wide v7

    move-object/from16 v9, p7

    invoke-static {v7, v8, v9}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-wide/from16 v14, p3

    invoke-direct {v12, v13, v14, v15, v11}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v5

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v16, v5

    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;->calculateTotalPower(ILandroid/os/BatteryStats;JJ)D

    move-result-wide v0

    move-object/from16 v2, p1

    invoke-virtual {v2, v11}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    const/16 v4, 0xf

    move-wide/from16 v5, v16

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v3, v4, v0, v1, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(IDI)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
