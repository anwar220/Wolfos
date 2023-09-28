# classes4.dex

.class public interface abstract Lcom/android/internal/os/BatteryStatsManagerStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;
    }
.end annotation


# direct methods
.method public static getInstance(Lcom/android/internal/os/BatteryStatsImpl;I)Lcom/android/internal/os/BatteryStatsManagerStub;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatsManagerStub:Lcom/android/internal/os/BatteryStatsManagerStub;

    if-nez v0, :cond_e

    const-class v0, Lcom/android/internal/os/BatteryStatsManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsManagerStub;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatsManagerStub:Lcom/android/internal/os/BatteryStatsManagerStub;

    :cond_e
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatsManagerStub:Lcom/android/internal/os/BatteryStatsManagerStub;

    return-object v0
.end method


# virtual methods
.method public getBacklightLevel(I)I
    .registers 3

    div-int/lit8 v0, p1, 0x33

    return v0
.end method

.method public abstract getDefaultDataSlotId()I
.end method

.method public getProcessName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method public abstract noteAudioOffLocked(I)V
.end method

.method public abstract noteAudioOnLocked(I)V
.end method

.method public abstract noteResetAudioLocked()V
.end method

.method public abstract noteStartGpsLocked(I)V
.end method

.method public abstract noteStopGpsLocked(I)V
.end method

.method public abstract noteSyncStart(Ljava/lang/String;IZ)V
.end method

.method public abstract setActiveCallback(Lcom/android/internal/os/BatteryStatsManagerStub$ActiveCallback;)V
.end method
