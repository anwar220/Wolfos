# classes4.dex

.class public interface abstract Landroid/window/IRemoteTransitionFinishedCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/IRemoteTransitionFinishedCallback$Stub;,
        Landroid/window/IRemoteTransitionFinishedCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.window.IRemoteTransitionFinishedCallback"


# virtual methods
.method public abstract onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
