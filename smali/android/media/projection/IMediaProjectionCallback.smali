# classes2.dex

.class public interface abstract Landroid/media/projection/IMediaProjectionCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionCallback$Stub;,
        Landroid/media/projection/IMediaProjectionCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method