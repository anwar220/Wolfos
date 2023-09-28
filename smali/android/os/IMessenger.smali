# classes3.dex

.class public interface abstract Landroid/os/IMessenger;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IMessenger$Stub;,
        Landroid/os/IMessenger$Default;
    }
.end annotation


# virtual methods
.method public abstract send(Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
