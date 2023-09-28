# classes3.dex

.class public interface abstract Landroid/view/IDisplayWindowRotationController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowRotationController$Stub;,
        Landroid/view/IDisplayWindowRotationController$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayWindowRotationController"


# virtual methods
.method public abstract onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
