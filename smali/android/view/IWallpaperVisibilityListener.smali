# classes3.dex

.class public interface abstract Landroid/view/IWallpaperVisibilityListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWallpaperVisibilityListener$Stub;,
        Landroid/view/IWallpaperVisibilityListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onWallpaperVisibilityChanged(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
