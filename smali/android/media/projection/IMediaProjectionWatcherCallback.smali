# classes2.dex

.class public interface abstract Landroid/media/projection/IMediaProjectionWatcherCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;,
        Landroid/media/projection/IMediaProjectionWatcherCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method