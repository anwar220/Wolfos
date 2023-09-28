# classes4.dex

.class public Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuDeltaPowerAccumulator"
.end annotation


# instance fields
.field private mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

.field private final mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

.field private mUidClusterCache:[D

.field public final perUidCpuClusterChargesMah:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "[D>;"
        }
    .end annotation
.end field

.field public final totalClusterChargesMah:[D


# direct methods
.method constructor <init>(Lcom/android/internal/os/CpuPowerCalculator;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    new-array v0, p2, [D

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    return-void
.end method

.method private getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D
    .registers 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_1b

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    array-length v1, v1

    new-array v0, v1, [D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->perUidCpuClusterChargesMah:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCachedUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mUidClusterCache:[D

    return-object v0
.end method


# virtual methods
.method public addCpuClusterDurationsMs(Lcom/android/internal/os/BatteryStatsImpl$Uid;[J)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    array-length v2, p2

    if-ge v1, v2, :cond_1f

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    aget-wide v3, p2, v1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/os/CpuPowerCalculator;->calculatePerCpuClusterPowerMah(IJ)D

    move-result-wide v2

    aget-wide v4, v0, v1

    add-double/2addr v4, v2

    aput-wide v4, v0, v1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    aget-wide v5, v4, v1

    add-double/2addr v5, v2

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1f
    return-void
.end method

.method public addCpuClusterSpeedDurationsMs(Lcom/android/internal/os/BatteryStatsImpl$Uid;IIJ)V
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->getOrCreateUidCpuClusterCharges(Lcom/android/internal/os/BatteryStatsImpl$Uid;)[D

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->mCalculator:Lcom/android/internal/os/CpuPowerCalculator;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/internal/os/CpuPowerCalculator;->calculatePerCpuFreqPowerMah(IIJ)D

    move-result-wide v1

    aget-wide v3, v0, p2

    add-double/2addr v3, v1

    aput-wide v3, v0, p2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$CpuDeltaPowerAccumulator;->totalClusterChargesMah:[D

    aget-wide v4, v3, p2

    add-double/2addr v4, v1

    aput-wide v4, v3, p2

    return-void
.end method
