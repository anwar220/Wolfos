# classes2.dex

.class public interface abstract Landroid/net/wifi/nl80211/IInterfaceEventCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IInterfaceEventCallback$Stub;,
        Landroid/net/wifi/nl80211/IInterfaceEventCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.IInterfaceEventCallback"


# virtual methods
.method public abstract OnApInterfaceReady(Landroid/net/wifi/nl80211/IApInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnApTorndownEvent(Landroid/net/wifi/nl80211/IApInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnClientInterfaceReady(Landroid/net/wifi/nl80211/IClientInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract OnClientTorndownEvent(Landroid/net/wifi/nl80211/IClientInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
