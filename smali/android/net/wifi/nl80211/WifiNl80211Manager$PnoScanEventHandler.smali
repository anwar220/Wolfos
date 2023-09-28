# classes2.dex

.class Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;
.super Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PnoScanEventHandler"
.end annotation


# instance fields
.field private mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    return-void
.end method


# virtual methods
.method public OnPnoNetworkFound()V
    .registers 5

    const-string v0, "WifiNl80211Manager"

    const-string v1, "Pno scan result event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public OnPnoScanFailed()V
    .registers 5

    const-string v0, "WifiNl80211Manager"

    const-string v1, "Pno Scan failed event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_b
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method synthetic lambda$OnPnoNetworkFound$0$android-net-wifi-nl80211-WifiNl80211Manager$PnoScanEventHandler()V
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanResultReady()V

    return-void
.end method

.method synthetic lambda$OnPnoScanFailed$1$android-net-wifi-nl80211-WifiNl80211Manager$PnoScanEventHandler()V
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$PnoScanEventHandler;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;

    invoke-interface {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ScanEventCallback;->onScanFailed()V

    return-void
.end method
