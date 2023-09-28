# classes4.dex

.class Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiPkg"
.end annotation


# instance fields
.field index:I

.field name:Ljava/lang/String;

.field state:I

.field sts:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->state:I

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->sts:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->index:I

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method StartRun(IJ)V
    .registers 6

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->state:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->state:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p0, v0, Lcom/android/internal/os/BatteryStatsImpl;->ForegroundPkg:Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->index:I

    if-ne v0, p1, :cond_f

    return-void

    :cond_f
    const/4 v1, -0x1

    if-le v0, v1, :cond_19

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->getStopWatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_19
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->index:I

    if-ne p1, v1, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->getStopWatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method StopRun(J)V
    .registers 6

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->state:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->state:I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/os/BatteryStatsImpl;->ForegroundPkg:Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    return-void

    :cond_11
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->sts:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v2, v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_1a
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->index:I

    return-void
.end method

.method changeStartRun(IJ)V
    .registers 6

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->index:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const/4 v1, -0x1

    if-le v0, v1, :cond_f

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->getStopWatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_f
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->index:I

    if-ne p1, v1, :cond_14

    return-void

    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->getStopWatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    return-void
.end method

.method getStopWatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .registers 10

    if-ltz p1, :cond_26

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->sts:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_26

    :cond_8
    aget-object v1, v0, p1

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    const/4 v4, 0x0

    const/16 v5, -0x59

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->sts:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    return-object v0

    :cond_26
    :goto_26
    const/4 v0, 0x0

    return-object v0
.end method

.method reset(J)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->ForegroundPkg:Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;

    if-ne v1, p0, :cond_13

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->index:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_13

    :cond_e
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/os/BatteryStatsImpl;->ForegroundPkg:Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;

    :cond_13
    :goto_13
    const/4 v1, 0x0

    :goto_14
    const/4 v2, 0x5

    if-ge v1, v2, :cond_2a

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$MiuiPkg;->sts:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_27

    if-eqz v0, :cond_24

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(ZJ)Z

    goto :goto_27

    :cond_24
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2a
    return-void
.end method
