# classes.dex

.class public interface abstract Landroid/content/IOnPrimaryClipChangedListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IOnPrimaryClipChangedListener$Stub;,
        Landroid/content/IOnPrimaryClipChangedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract dispatchPrimaryClipChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
