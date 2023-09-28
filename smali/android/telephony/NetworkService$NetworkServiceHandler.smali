# classes3.dex

.class Landroid/telephony/NetworkService$NetworkServiceHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/NetworkService;


# direct methods
.method constructor <init>(Landroid/telephony/NetworkService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/INetworkServiceCallback;

    iget-object v2, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v2}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkService$NetworkServiceProvider;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_8c

    goto/16 :goto_8a

    :pswitch_19  #0x7
    if-nez v2, :cond_1d

    goto/16 :goto_8a

    :cond_1d
    invoke-static {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->-$$Nest$mnotifyInfoChangedToCallbacks(Landroid/telephony/NetworkService$NetworkServiceProvider;)V

    goto/16 :goto_8a

    :pswitch_22  #0x6
    if-nez v2, :cond_25

    goto :goto_8a

    :cond_25
    invoke-static {v2, v1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->-$$Nest$munregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V

    goto :goto_8a

    :pswitch_29  #0x5
    if-nez v2, :cond_2c

    goto :goto_8a

    :cond_2c
    invoke-static {v2, v1}, Landroid/telephony/NetworkService$NetworkServiceProvider;->-$$Nest$mregisterForInfoChanged(Landroid/telephony/NetworkService$NetworkServiceProvider;Landroid/telephony/INetworkServiceCallback;)V

    goto :goto_8a

    :pswitch_30  #0x4
    if-nez v2, :cond_33

    goto :goto_8a

    :cond_33
    iget v3, p1, Landroid/os/Message;->arg2:I

    new-instance v4, Landroid/telephony/NetworkServiceCallback;

    invoke-direct {v4, v1}, Landroid/telephony/NetworkServiceCallback;-><init>(Landroid/telephony/INetworkServiceCallback;)V

    invoke-virtual {v2, v3, v4}, Landroid/telephony/NetworkService$NetworkServiceProvider;->requestNetworkRegistrationInfo(ILandroid/telephony/NetworkServiceCallback;)V

    goto :goto_8a

    :pswitch_3e  #0x3
    const/4 v3, 0x0

    :goto_3f
    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v4}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_60

    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v4}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Landroid/telephony/NetworkService$NetworkServiceProvider;

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->close()V

    :cond_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    :cond_60
    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    goto :goto_8a

    :pswitch_6a  #0x2
    if-eqz v2, :cond_8a

    invoke-virtual {v2}, Landroid/telephony/NetworkService$NetworkServiceProvider;->close()V

    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_8a

    :pswitch_79  #0x1
    if-nez v2, :cond_8a

    iget-object v3, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-static {v3}, Landroid/telephony/NetworkService;->-$$Nest$fgetmServiceMap(Landroid/telephony/NetworkService;)Landroid/util/SparseArray;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/NetworkService$NetworkServiceHandler;->this$0:Landroid/telephony/NetworkService;

    invoke-virtual {v4, v0}, Landroid/telephony/NetworkService;->onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8a
    :goto_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_79  #00000001
        :pswitch_6a  #00000002
        :pswitch_3e  #00000003
        :pswitch_30  #00000004
        :pswitch_29  #00000005
        :pswitch_22  #00000006
        :pswitch_19  #00000007
    .end packed-switch
.end method
