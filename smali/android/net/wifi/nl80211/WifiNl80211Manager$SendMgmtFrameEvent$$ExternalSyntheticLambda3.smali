# classes2.dex

.class public final synthetic Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda3;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

    iput p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda3;->f$0:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;

    iget v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->lambda$OnFailure$8$android-net-wifi-nl80211-WifiNl80211Manager$SendMgmtFrameEvent(I)V

    return-void
.end method
