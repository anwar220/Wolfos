# classes2.dex

.class public interface abstract Landroid/media/IAudioRoutesObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioRoutesObserver$Stub;,
        Landroid/media/IAudioRoutesObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
