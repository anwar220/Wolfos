# classes2.dex

.class public interface abstract Landroid/media/IMediaHTTPService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IMediaHTTPService$Stub;,
        Landroid/media/IMediaHTTPService$Default;
    }
.end annotation


# virtual methods
.method public abstract makeHTTPConnection()Landroid/media/IMediaHTTPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
