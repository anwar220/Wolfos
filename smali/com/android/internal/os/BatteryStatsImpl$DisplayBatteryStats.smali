# classes4.dex

.class public Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayBatteryStats"
.end annotation


# instance fields
.field public screenBrightnessBin:I

.field public screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field public screenState:I

.field public screenStateAtLastEnergyMeasurement:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 18

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessBin:I

    const/4 v2, 0x5

    new-array v3, v2, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenStateAtLastEnergyMeasurement:I

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v4, v1

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v9, v1

    move-object/from16 v10, p1

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v2, :cond_47

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v10, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v6, 0x0

    rsub-int/lit8 v7, v1, -0x64

    const/4 v8, 0x0

    move-object v4, v10

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v10, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_47
    return-void
.end method


# virtual methods
.method public reset(J)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenDozeTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    const/4 v0, 0x0

    :goto_c
    const/4 v2, 0x5

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DisplayBatteryStats;->screenBrightnessTimers:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    return-void
.end method
