# classes2.dex

.class public interface abstract Landroid/hardware/location/IActivityRecognitionHardwareSink;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;,
        Landroid/hardware/location/IActivityRecognitionHardwareSink$Default;
    }
.end annotation


# virtual methods
.method public abstract onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method