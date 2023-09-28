# classes3.dex

.class Landroid/telephony/gba/GbaService$GbaServiceHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gba/GbaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GbaServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/gba/GbaService;


# direct methods
.method constructor <init>(Landroid/telephony/gba/GbaService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/gba/GbaService$GbaServiceHandler;->this$0:Landroid/telephony/gba/GbaService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    goto :goto_44

    :pswitch_6  #0x1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/gba/GbaAuthRequest;

    iget-object v1, p0, Landroid/telephony/gba/GbaService$GbaServiceHandler;->this$0:Landroid/telephony/gba/GbaService;

    invoke-static {v1}, Landroid/telephony/gba/GbaService;->-$$Nest$fgetmCallbacks(Landroid/telephony/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Landroid/telephony/gba/GbaService$GbaServiceHandler;->this$0:Landroid/telephony/gba/GbaService;

    invoke-static {v2}, Landroid/telephony/gba/GbaService;->-$$Nest$fgetmCallbacks(Landroid/telephony/gba/GbaService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getCallback()Landroid/telephony/IBootstrapAuthenticationCallback;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_41

    iget-object v5, p0, Landroid/telephony/gba/GbaService$GbaServiceHandler;->this$0:Landroid/telephony/gba/GbaService;

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getSubId()I

    move-result v6

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getToken()I

    move-result v7

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getAppType()I

    move-result v8

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getNafUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->getSecurityProtocol()[B

    move-result-object v10

    invoke-virtual {v0}, Landroid/telephony/gba/GbaAuthRequest;->isForceBootStrapping()Z

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/telephony/gba/GbaService;->onAuthenticationRequest(IIILandroid/net/Uri;[BZ)V

    goto :goto_44

    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v2

    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
