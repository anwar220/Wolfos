# classes2.dex

.class public interface abstract Landroid/media/IRemoteDisplayCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteDisplayCallback$Stub;,
        Landroid/media/IRemoteDisplayCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onStateChanged(Landroid/media/RemoteDisplayState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
