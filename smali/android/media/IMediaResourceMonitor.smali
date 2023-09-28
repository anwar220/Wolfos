# classes2.dex

.class public interface abstract Landroid/media/IMediaResourceMonitor;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaResourceMonitor$Stub;,
        Landroid/media/IMediaResourceMonitor$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyResourceGranted(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
