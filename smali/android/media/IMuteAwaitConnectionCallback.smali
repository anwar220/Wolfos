# classes2.dex

.class public interface abstract Landroid/media/IMuteAwaitConnectionCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMuteAwaitConnectionCallback$Stub;,
        Landroid/media/IMuteAwaitConnectionCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.media.IMuteAwaitConnectionCallback"


# virtual methods
.method public abstract dispatchOnMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
