# classes4.dex

.class public abstract Lcom/android/internal/os/PowerCalculator;
.super Ljava/lang/Object;


# static fields
.field protected static final DEBUG:Z = false

.field protected static final MILLIAMPHOUR_PER_MICROCOULOMB:D = 2.777777777777778E-7


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getPowerModel(J)I
    .registers 4

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method protected static getPowerModel(JLandroid/os/BatteryUsageStatsQuery;)I
    .registers 5

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Landroid/os/BatteryUsageStatsQuery;->shouldForceUsePowerProfileModel()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x2

    return v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public static printPowerMah(Ljava/io/PrintWriter;D)V
    .registers 4

    invoke-static {p1, p2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method static uCtoMah(J)D
    .registers 6

    long-to-double v0, p0

    const-wide v2, 0x3e92a42f961f79baL  # 2.777777777777778E-7

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 19

    nop

    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_24

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer$Builder;

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer$Builder;->getBatteryStatsUid()Landroid/os/BatteryStats$Uid;

    move-result-object v5

    move-object v3, p0

    move-object v4, v2

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;JJLandroid/os/BatteryUsageStatsQuery;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_24
    return-void
.end method

.method protected calculateApp(Landroid/os/UidBatteryConsumer$Builder;Landroid/os/BatteryStats$Uid;JJLandroid/os/BatteryUsageStatsQuery;)V
    .registers 8

    return-void
.end method

.method public abstract isPowerComponentSupported(I)Z
.end method

.method public reset()V
    .registers 1

    return-void
.end method
