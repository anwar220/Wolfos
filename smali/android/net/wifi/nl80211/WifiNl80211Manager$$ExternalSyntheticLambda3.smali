# classes2.dex

.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$$ExternalSyntheticLambda3;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-virtual {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->lambda$binderDied$0$android-net-wifi-nl80211-WifiNl80211Manager()V

    return-void
.end method
