# classes.dex

.class public interface abstract Landroid/database/IContentObserver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/IContentObserver$Stub;,
        Landroid/database/IContentObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract onChange(ZLandroid/net/Uri;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onChangeEtc(Z[Landroid/net/Uri;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
