# classes4.dex

.class public interface abstract Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryCallback"
.end annotation


# virtual methods
.method public abstract batteryNeedsCpuUpdate()V
.end method

.method public abstract batteryPowerChanged(Z)V
.end method

.method public abstract batterySendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract batteryStatsReset()V
.end method
