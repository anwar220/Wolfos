# classes4.dex

.class public interface abstract Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeBaseObs"
.end annotation


# virtual methods
.method public abstract detach()V
.end method

.method public abstract onTimeStarted(JJJ)V
.end method

.method public abstract onTimeStopped(JJJ)V
.end method

.method public reset(Z)Z
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-interface {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;->reset(ZJ)Z

    move-result v0

    return v0
.end method

.method public abstract reset(ZJ)Z
.end method
