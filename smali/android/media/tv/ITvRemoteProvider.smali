# classes2.dex

.class public interface abstract Landroid/media/tv/ITvRemoteProvider;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteProvider$Stub;,
        Landroid/media/tv/ITvRemoteProvider$Default;
    }
.end annotation


# virtual methods
.method public abstract onInputBridgeConnected(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRemoteServiceInputSink(Landroid/media/tv/ITvRemoteServiceInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method