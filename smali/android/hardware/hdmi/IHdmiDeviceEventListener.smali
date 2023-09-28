# classes2.dex

.class public interface abstract Landroid/hardware/hdmi/IHdmiDeviceEventListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;,
        Landroid/hardware/hdmi/IHdmiDeviceEventListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
