# classes3.dex

.class public interface abstract Landroid/os/IRemoteCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRemoteCallback$Stub;,
        Landroid/os/IRemoteCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract sendResult(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
