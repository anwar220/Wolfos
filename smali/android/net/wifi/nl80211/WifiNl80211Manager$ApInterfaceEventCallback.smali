# classes2.dex

.class Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;
.super Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApInterfaceEventCallback"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

.field final synthetic this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/IApInterfaceEventCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    return-void
.end method

.method private toFrameworkBandwidth(I)I
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_16

    return v0

    :pswitch_5  #0x7
    const/16 v0, 0xb

    return v0

    :pswitch_8  #0x6
    const/4 v0, 0x6

    return v0

    :pswitch_a  #0x5
    const/4 v0, 0x5

    return v0

    :pswitch_c  #0x4
    const/4 v0, 0x4

    return v0

    :pswitch_e  #0x3
    const/4 v0, 0x3

    return v0

    :pswitch_10  #0x2
    const/4 v0, 0x2

    return v0

    :pswitch_12  #0x1
    const/4 v0, 0x1

    return v0

    :pswitch_14  #0x0
    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_12  #00000001
        :pswitch_10  #00000002
        :pswitch_e  #00000003
        :pswitch_c  #00000004
        :pswitch_a  #00000005
        :pswitch_8  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$onConnectedClientsChanged$0$android-net-wifi-nl80211-WifiNl80211Manager$ApInterfaceEventCallback(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;->onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    return-void
.end method

.method synthetic lambda$onSoftApChannelSwitched$1$android-net-wifi-nl80211-WifiNl80211Manager$ApInterfaceEventCallback(II)V
    .registers 5

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mSoftApListener:Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;

    invoke-direct {p0, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->toFrameworkBandwidth(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SoftApCallback;->onSoftApChannelSwitched(II)V

    return-void
.end method

.method public onConnectedClientsChanged(Landroid/net/wifi/nl80211/NativeWifiClient;Z)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;Landroid/net/wifi/nl80211/NativeWifiClient;Z)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onSoftApChannelSwitched(II)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1, p2}, Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$ApInterfaceEventCallback;II)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
