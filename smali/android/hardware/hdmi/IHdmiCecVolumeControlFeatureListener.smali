# classes2.dex

.class public interface abstract Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;,
        Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiCecVolumeControlFeatureListener"


# virtual methods
.method public abstract onHdmiCecVolumeControlFeature(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
