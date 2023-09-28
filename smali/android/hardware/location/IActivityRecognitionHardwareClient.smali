# classes2.dex

.class public interface abstract Landroid/hardware/location/IActivityRecognitionHardwareClient;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardwareClient$Stub;,
        Landroid/hardware/location/IActivityRecognitionHardwareClient$Default;
    }
.end annotation


# virtual methods
.method public abstract onAvailabilityChanged(ZLandroid/hardware/location/IActivityRecognitionHardware;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
