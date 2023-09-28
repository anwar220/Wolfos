# classes4.dex

.class public Lcom/android/internal/os/BatteryChargeCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 26

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    if-gtz v3, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    div-int/lit16 v3, v4, 0x3e8

    if-gtz v3, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v3

    :cond_20
    int-to-double v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/os/BatteryUsageStats$Builder;->setBatteryCapacity(D)Landroid/os/BatteryUsageStats$Builder;

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v4

    mul-int/2addr v4, v3

    int-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L  # 100.0

    div-double/2addr v4, v6

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v8

    mul-int/2addr v8, v3

    int-to-double v8, v8

    div-double/2addr v8, v6

    nop

    invoke-virtual {v1, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/os/BatteryUsageStats$Builder;->setDischargePercentage(I)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v8, v9}, Landroid/os/BatteryUsageStats$Builder;->setDischargedPowerRange(DD)Landroid/os/BatteryUsageStats$Builder;

    move-result-object v6

    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v6, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setDischargeDurationMs(J)Landroid/os/BatteryUsageStats$Builder;

    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v6

    const-wide/16 v10, -0x1

    cmp-long v14, v6, v10

    if-eqz v14, :cond_5c

    div-long v14, v6, v12

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryUsageStats$Builder;->setBatteryTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    :cond_5c
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v14

    cmp-long v10, v14, v10

    if-eqz v10, :cond_69

    div-long v10, v14, v12

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setChargeTimeRemainingMs(J)Landroid/os/BatteryUsageStats$Builder;

    :cond_69
    invoke-virtual {v1, v2}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v10

    div-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_7f

    add-double v12, v4, v8

    const-wide/high16 v16, 0x4000000000000000L  # 2.0

    div-double v12, v12, v16

    const-wide/high16 v16, 0x3fe0000000000000L  # 0.5

    add-double v12, v12, v16

    double-to-long v10, v12

    :cond_7f
    invoke-virtual {v0, v2}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    long-to-double v12, v10

    invoke-virtual {v2, v12, v13}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
