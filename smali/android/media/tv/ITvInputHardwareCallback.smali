# classes2.dex

.class public interface abstract Landroid/media/tv/ITvInputHardwareCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputHardwareCallback$Stub;,
        Landroid/media/tv/ITvInputHardwareCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onReleased()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method