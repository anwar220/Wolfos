# classes4.dex

.class public Lcom/android/internal/os/CustomMeasuredPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomMeasuredPowerCalc"


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    return-void
.end method

.method private calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[D)[D
    .registers 11

    const/4 v0, 0x0

    nop

    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCustomConsumerMeasuredBatteryConsumptionUC()[J

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;->calculateMeasuredEnergiesMah([J)[D

    move-result-object v1

    if-eqz v1, :cond_5c

    if-nez p3, :cond_12

    array-length v2, v1

    new-array v0, v2, [D

    goto :goto_41

    :cond_12
    array-length v2, p3

    array-length v3, v1

    if-eq v2, v3, :cond_40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of custom energy components is not the same for all apps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CustomMeasuredPowerCalc"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, v1

    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    goto :goto_41

    :cond_40
    move-object v0, p3

    :goto_41
    const/4 v2, 0x0

    :goto_42
    array-length v3, v1

    if-ge v2, v3, :cond_5c

    add-int/lit16 v3, v2, 0x3e8

    aget-wide v4, v1, v2

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/UidBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    move-result v3

    if-nez v3, :cond_59

    aget-wide v3, v0, v2

    aget-wide v5, v1, v2

    add-double/2addr v3, v5

    aput-wide v3, v0, v2

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_5c
    return-object v0
.end method

.method private calculateMeasuredEnergiesMah([J)[D
    .registers 6

    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p1

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_16

    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;->uCtoMah(J)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    nop

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_e
    if-ltz v4, :cond_21

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v7

    invoke-direct {p0, v6, v7, v2}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;[D)[D

    move-result-object v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_21
    nop

    invoke-virtual {p2}, Landroid/os/BatteryStats;->getCustomConsumerMeasuredBatteryConsumptionUC()[J

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;->calculateMeasuredEnergiesMah([J)[D

    move-result-object v4

    if-eqz v4, :cond_3f

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v6

    const/4 v7, 0x0

    :goto_32
    array-length v8, v4

    if-ge v7, v8, :cond_3f

    add-int/lit16 v8, v7, 0x3e8

    aget-wide v9, v4, v7

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3f
    if-eqz v2, :cond_54

    nop

    invoke-virtual {p1, v5}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v5

    const/4 v6, 0x0

    :goto_47
    array-length v7, v2

    if-ge v6, v7, :cond_54

    add-int/lit16 v7, v6, 0x3e8

    aget-wide v8, v2, v6

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPowerForCustomComponent(ID)Landroid/os/BatteryConsumer$BaseBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_54
    return-void
.end method

.method public isPowerComponentSupported(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
