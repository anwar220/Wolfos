# classes4.dex

.class public Lcom/android/internal/os/AudioPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;
    }
.end annotation


# instance fields
.field private final mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    new-instance v0, Lcom/android/internal/os/UsageBasedPowerEstimator;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    iput-object v0, p0, Lcom/android/internal/os/AudioPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/os/AudioPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {p3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, p5, v2}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/internal/os/AudioPowerCalculator;->mPowerEstimator:Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v2

    const/4 v4, 0x4

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/UidBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v5, v4, v2, v3}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v4

    if-nez v4, :cond_2b

    iget-wide v4, p2, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    add-long/2addr v4, v0

    iput-wide v4, p2, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    iget-wide v4, p2, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    add-double/2addr v4, v2

    iput-wide v4, p2, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    :cond_2b
    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 20

    move-object v0, p1

    new-instance v1, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;-><init>(Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration-IA;)V

    nop

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    move v10, v3

    :goto_13
    if-ltz v10, :cond_2a

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v11}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v6

    move-object v3, p0

    move-object v4, v11

    move-object v5, v1

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/os/AudioPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;Landroid/os/BatteryStats$Uid;J)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_13

    :cond_2a
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    const/4 v6, 0x4

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1, v9}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;->durationMs:J

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v3

    check-cast v3, Landroid/os/AggregateBatteryConsumer$Builder;

    iget-wide v4, v1, Lcom/android/internal/os/AudioPowerCalculator$PowerAndDuration;->powerMah:D

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method
