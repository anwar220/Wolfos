# classes2.dex

.class public interface abstract Landroid/net/lowpan/ILowpanManagerListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanManagerListener$Stub;,
        Landroid/net/lowpan/ILowpanManagerListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanManagerListener"


# virtual methods
.method public abstract onInterfaceAdded(Landroid/net/lowpan/ILowpanInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onInterfaceRemoved(Landroid/net/lowpan/ILowpanInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
