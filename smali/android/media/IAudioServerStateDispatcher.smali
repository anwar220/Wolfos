# classes2.dex

.class public interface abstract Landroid/media/IAudioServerStateDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioServerStateDispatcher$Stub;,
        Landroid/media/IAudioServerStateDispatcher$Default;
    }
.end annotation


# virtual methods
.method public abstract dispatchAudioServerStateChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
