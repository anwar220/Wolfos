# classes4.dex

.class public interface abstract Lcom/android/server/DeviceIdleInternal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceIdleInternal$StationaryListener;
    }
.end annotation


# virtual methods
.method public abstract addPowerSaveTempWhitelistApp(ILjava/lang/String;JIIZILjava/lang/String;)V
.end method

.method public abstract addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V
.end method

.method public abstract addPowerSaveTempWhitelistAppDirect(IJIZILjava/lang/String;I)V
.end method

.method public abstract exitIdle(Ljava/lang/String;)V
.end method

.method public abstract getNotificationAllowlistDuration()J
.end method

.method public abstract getPowerSaveTempWhitelistAppIds()[I
.end method

.method public abstract getPowerSaveWhitelistUserAppIds()[I
.end method

.method public abstract getTempAllowListType(II)I
.end method

.method public abstract isAppOnWhitelist(I)Z
.end method

.method public abstract onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
.end method

.method public abstract registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
.end method

.method public abstract registerStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
.end method

.method public abstract setAlarmsActive(Z)V
.end method

.method public abstract setJobsActive(Z)V
.end method

.method public abstract unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
.end method

.method public abstract unregisterStationaryListener(Lcom/android/server/DeviceIdleInternal$StationaryListener;)V
.end method
