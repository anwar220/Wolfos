# classes2.dex

.class public final Landroid/net/wifi/nl80211/IWifiScanResultStub$SingletonHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWifiScanResultStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/net/wifi/nl80211/IWifiScanResultStub;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Landroid/net/wifi/nl80211/IWifiScanResultStub;
    .registers 1

    sget-object v0, Landroid/net/wifi/nl80211/IWifiScanResultStub$SingletonHolder;->INSTANCE:Landroid/net/wifi/nl80211/IWifiScanResultStub;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/net/wifi/nl80211/IWifiScanResultStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/IWifiScanResultStub;

    sput-object v0, Landroid/net/wifi/nl80211/IWifiScanResultStub$SingletonHolder;->INSTANCE:Landroid/net/wifi/nl80211/IWifiScanResultStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
