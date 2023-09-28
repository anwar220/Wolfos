# classes.dex

.class public interface abstract Landroid/companion/virtual/IVirtualDeviceActivityListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/IVirtualDeviceActivityListener$Stub;,
        Landroid/companion/virtual/IVirtualDeviceActivityListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.companion.virtual.IVirtualDeviceActivityListener"


# virtual methods
.method public abstract onDisplayEmpty(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTopActivityChanged(ILandroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
