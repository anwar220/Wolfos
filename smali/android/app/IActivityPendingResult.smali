# classes.dex

.class public interface abstract Landroid/app/IActivityPendingResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityPendingResult$Stub;,
        Landroid/app/IActivityPendingResult$Default;
    }
.end annotation


# virtual methods
.method public abstract sendResult(ILjava/lang/String;Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method