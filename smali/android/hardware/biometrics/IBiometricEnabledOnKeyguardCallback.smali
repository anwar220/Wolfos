# classes.dex

.class public interface abstract Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Stub;,
        Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.biometrics.IBiometricEnabledOnKeyguardCallback"


# virtual methods
.method public abstract onChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
