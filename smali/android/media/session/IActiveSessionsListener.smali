# classes2.dex

.class public interface abstract Landroid/media/session/IActiveSessionsListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/IActiveSessionsListener$Stub;,
        Landroid/media/session/IActiveSessionsListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onActiveSessionsChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method