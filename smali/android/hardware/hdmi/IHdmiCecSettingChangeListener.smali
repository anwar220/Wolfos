# classes2.dex

.class public interface abstract Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Stub;,
        Landroid/hardware/hdmi/IHdmiCecSettingChangeListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiCecSettingChangeListener"


# virtual methods
.method public abstract onChange(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
