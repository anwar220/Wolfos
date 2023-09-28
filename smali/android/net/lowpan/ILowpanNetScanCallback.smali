# classes2.dex

.class public interface abstract Landroid/net/lowpan/ILowpanNetScanCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanNetScanCallback$Stub;,
        Landroid/net/lowpan/ILowpanNetScanCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanNetScanCallback"


# virtual methods
.method public abstract onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNetScanFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
