# classes2.dex

.class Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCommissioningSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method private constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceiveFromCommissioner$0$android-net-lowpan-LowpanCommissioningSession$InternalCallback([B)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmIsClosed(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmCallback(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmCallback(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onReceiveFromCommissioner([B)V

    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public onConnectedChanged(Z)V
    .registers 2

    return-void
.end method

.method public onEnabledChanged(Z)V
    .registers 2

    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .registers 2

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .registers 2

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .registers 2

    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmHandler(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback$$ExternalSyntheticLambda0;-><init>(Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$fgetmIsClosed(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_36

    :cond_10
    goto :goto_24

    :sswitch_11
    const-string v1, "fault"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    goto :goto_24

    :sswitch_1b
    const-string v1, "offline"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :goto_24
    packed-switch v0, :pswitch_data_40

    goto :goto_35

    :pswitch_28  #0x0, 0x1
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v0

    :try_start_2b
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->-$$Nest$mlockedCleanup(Landroid/net/lowpan/LowpanCommissioningSession;)V

    monitor-exit v0

    goto :goto_35

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw v1

    :cond_35
    :goto_35
    return-void

    :sswitch_data_36
    .sparse-switch
        -0x5c4df21d -> :sswitch_1b
        0x5cb3a22 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_28  #00000001
    .end packed-switch
.end method

.method public onUpChanged(Z)V
    .registers 2

    return-void
.end method
