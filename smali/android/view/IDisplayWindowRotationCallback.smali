# classes3.dex

.class public interface abstract Landroid/view/IDisplayWindowRotationCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowRotationCallback$Stub;,
        Landroid/view/IDisplayWindowRotationCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayWindowRotationCallback"


# virtual methods
.method public abstract continueRotateDisplay(ILandroid/window/WindowContainerTransaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
