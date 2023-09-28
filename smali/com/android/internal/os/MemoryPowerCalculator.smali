# classes4.dex

.class public Lcom/android/internal/os/MemoryPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# static fields
.field public static final TAG:Ljava/lang/String; = "MemoryPowerCalculator"


# instance fields
.field private final mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 9

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string/jumbo v0, "memory.bandwidths"

    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getNumElements(Ljava/lang/String;)I

    move-result v1

    new-array v2, v1, [Lcom/android/internal/os/UsageBasedPowerEstimator;

    iput-object v2, p0, Lcom/android/internal/os/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_21

    iget-object v3, p0, Lcom/android/internal/os/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    new-instance v4, Lcom/android/internal/os/UsageBasedPowerEstimator;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Lcom/android/internal/os/UsageBasedPowerEstimator;-><init>(D)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_21
    return-void
.end method

.method private calculateDuration(Landroid/os/BatteryStats;JI)J
    .registers 11

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_22

    iget-object v4, p0, Lcom/android/internal/os/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v5, v4

    if-ge v3, v5, :cond_22

    aget-object v4, v4, v3

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v4, v5, p2, p3, p4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_22
    return-wide v0
.end method

.method private calculatePower(Landroid/os/BatteryStats;JI)D
    .registers 14

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2c

    iget-object v4, p0, Lcom/android/internal/os/MemoryPowerCalculator;->mPowerEstimators:[Lcom/android/internal/os/UsageBasedPowerEstimator;

    array-length v5, v4

    if-ge v3, v5, :cond_2c

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    long-to-int v5, v5

    aget-object v4, v4, v5

    nop

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v4, v5, p2, p3, p4}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculateDuration(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/os/UsageBasedPowerEstimator;->calculatePower(J)D

    move-result-wide v7

    add-double/2addr v0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_2c
    return-wide v0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 14

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/os/MemoryPowerCalculator;->calculateDuration(Landroid/os/BatteryStats;JI)J

    move-result-wide v1

    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/internal/os/MemoryPowerCalculator;->calculatePower(Landroid/os/BatteryStats;JI)D

    move-result-wide v3

    invoke-virtual {p1, v0}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v0

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/AggregateBatteryConsumer$Builder;->setUsageDurationMillis(IJ)Landroid/os/BatteryConsumer$BaseBuilder;

    move-result-object v0

    check-cast v0, Landroid/os/AggregateBatteryConsumer$Builder;

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
