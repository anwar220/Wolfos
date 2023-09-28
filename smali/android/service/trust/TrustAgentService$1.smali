# classes3.dex

.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_c8

    goto/16 :goto_c7

    :pswitch_9  #0xb
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onUserMayRequestUnlock()V

    goto/16 :goto_c7

    :pswitch_10  #0xa
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Landroid/service/trust/TrustAgentService;->onUserRequestedUnlock(Z)V

    goto/16 :goto_c7

    :pswitch_1d  #0x9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "token_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string/jumbo v3, "token_removed_result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v4, v1, v2, v3}, Landroid/service/trust/TrustAgentService;->onEscrowTokenRemoved(JZ)V

    goto/16 :goto_c7

    :pswitch_36  #0x8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "token_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string/jumbo v1, "token_state"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v2, v3, v4, v1}, Landroid/service/trust/TrustAgentService;->onEscrowTokenStateReceived(JI)V

    goto/16 :goto_c7

    :pswitch_4f  #0x7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "token_handle"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "user_handle"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    iget-object v5, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/service/trust/TrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    goto :goto_c7

    :pswitch_70  #0x6
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/service/trust/TrustAgentService;->onDeviceUnlockLockout(J)V

    goto :goto_c7

    :pswitch_79  #0x5
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    goto :goto_c7

    :pswitch_7f  #0x4
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    goto :goto_c7

    :pswitch_85  #0x3
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v0}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    goto :goto_c7

    :pswitch_8b  #0x2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/trust/TrustAgentService$ConfigurationData;

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget-object v2, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    move-result v1

    iget-object v2, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    if-eqz v2, :cond_c7

    :try_start_9b
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v2}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a2} :catch_b2

    :try_start_a2
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v3}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v3

    iget-object v4, v0, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    invoke-interface {v3, v1, v4}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    monitor-exit v2

    goto :goto_ba

    :catchall_af
    move-exception v3

    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_a2 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v3
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_b2} :catch_b2

    :catch_b2
    move-exception v2

    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    const-string v4, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    invoke-static {v3, v4}, Landroid/service/trust/TrustAgentService;->-$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    :goto_ba
    goto :goto_c7

    :pswitch_bb  #0x1
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_c2

    goto :goto_c3

    :cond_c2
    move v1, v2

    :goto_c3
    invoke-virtual {v0, v1}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    nop

    :cond_c7
    :goto_c7
    return-void

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_bb  #00000001
        :pswitch_8b  #00000002
        :pswitch_85  #00000003
        :pswitch_7f  #00000004
        :pswitch_79  #00000005
        :pswitch_70  #00000006
        :pswitch_4f  #00000007
        :pswitch_36  #00000008
        :pswitch_1d  #00000009
        :pswitch_10  #0000000a
        :pswitch_9  #0000000b
    .end packed-switch
.end method
