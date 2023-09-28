# classes2.dex

.class public interface abstract Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;,
        Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onStatusChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
