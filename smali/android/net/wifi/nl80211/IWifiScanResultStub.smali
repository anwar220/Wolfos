# classes2.dex

.class public interface abstract Landroid/net/wifi/nl80211/IWifiScanResultStub;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWifiScanResultStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Landroid/net/wifi/nl80211/IWifiScanResultStub;
    .registers 1

    invoke-static {}, Landroid/net/wifi/nl80211/IWifiScanResultStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/net/wifi/nl80211/IWifiScanResultStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compensateSignalLevel(II)I
    .registers 3

    return p1
.end method
