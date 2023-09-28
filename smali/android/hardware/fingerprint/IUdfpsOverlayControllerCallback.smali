# classes.dex

.class public interface abstract Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Stub;,
        Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.fingerprint.IUdfpsOverlayControllerCallback"


# virtual methods
.method public abstract onUserCanceled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
