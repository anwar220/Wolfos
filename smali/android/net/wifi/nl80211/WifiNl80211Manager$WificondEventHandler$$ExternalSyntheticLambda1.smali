# classes2.dex

.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;

    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$WificondEventHandler;->lambda$OnRegDomainChanged$0(Landroid/net/wifi/nl80211/WifiNl80211Manager$CountryCodeChangedListener;Ljava/lang/String;)V

    return-void
.end method
