# classes.dex

.class public interface abstract Landroid/hardware/ISensorPrivacyListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ISensorPrivacyListener$Stub;,
        Landroid/hardware/ISensorPrivacyListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ISensorPrivacyListener"


# virtual methods
.method public abstract onSensorPrivacyChanged(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
