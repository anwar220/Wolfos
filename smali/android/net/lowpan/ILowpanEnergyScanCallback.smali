# classes2.dex

.class public interface abstract Landroid/net/lowpan/ILowpanEnergyScanCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;,
        Landroid/net/lowpan/ILowpanEnergyScanCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanEnergyScanCallback"


# virtual methods
.method public abstract onEnergyScanFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEnergyScanResult(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
