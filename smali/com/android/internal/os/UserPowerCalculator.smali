# classes4.dex

.class public Lcom/android/internal/os/UserPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 15

    invoke-virtual {p7}, Landroid/os/BatteryUsageStatsQuery;->getUserIds()[I

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_c

    return-void

    :cond_c
    nop

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_4a

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_47

    :cond_26
    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_33

    goto :goto_47

    :cond_33
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_47

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer$Builder;->excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {p1, v5}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/UserBatteryConsumer$Builder;->addUidBatteryConsumer(Landroid/os/UidBatteryConsumer$Builder;)V

    :cond_47
    :goto_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_4a
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
