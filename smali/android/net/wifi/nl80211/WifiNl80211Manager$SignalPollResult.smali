# classes2.dex

.class public Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignalPollResult"
.end annotation


# instance fields
.field public final associationFrequencyMHz:I

.field public final currentRssiDbm:I

.field public final rxBitrateMbps:I

.field public final txBitrateMbps:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/net/wifi/nl80211/IWifiScanResultStub;->getInstance()Landroid/net/wifi/nl80211/IWifiScanResultStub;

    move-result-object v0

    if-eqz v0, :cond_11

    nop

    invoke-interface {v0, p1, p4}, Landroid/net/wifi/nl80211/IWifiScanResultStub;->compensateSignalLevel(II)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    goto :goto_13

    :cond_11
    iput p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    :goto_13
    iput p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->txBitrateMbps:I

    iput p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->rxBitrateMbps:I

    iput p4, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->associationFrequencyMHz:I

    return-void
.end method
