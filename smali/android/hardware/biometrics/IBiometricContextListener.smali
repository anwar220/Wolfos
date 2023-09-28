# classes.dex

.class public interface abstract Landroid/hardware/biometrics/IBiometricContextListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricContextListener$Stub;,
        Landroid/hardware/biometrics/IBiometricContextListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.IBiometricContextListener"


# virtual methods
.method public abstract onDozeChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
