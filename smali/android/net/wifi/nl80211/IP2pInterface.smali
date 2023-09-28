# classes2.dex

.class public interface abstract Landroid/net/wifi/nl80211/IP2pInterface;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IP2pInterface$Stub;,
        Landroid/net/wifi/nl80211/IP2pInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.IP2pInterface"


# virtual methods
.method public abstract signalPoll()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
