# classes3.dex

.class final Landroid/service/notification/ConditionProviderService$H;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ConditionProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final ON_CONNECTED:I = 0x1

.field private static final ON_SUBSCRIBE:I = 0x3

.field private static final ON_UNSUBSCRIBE:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/service/notification/ConditionProviderService;


# direct methods
.method private constructor <init>(Landroid/service/notification/ConditionProviderService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/ConditionProviderService;Landroid/service/notification/ConditionProviderService$H-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/notification/ConditionProviderService$H;-><init>(Landroid/service/notification/ConditionProviderService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-boolean v1, v1, Landroid/service/notification/ConditionProviderService;->mIsConnected:Z

    if-nez v1, :cond_8

    return-void

    :cond_8
    :try_start_8
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    :pswitch_d  #0x2
    goto :goto_34

    :pswitch_e  #0x4
    const-string/jumbo v1, "onUnsubscribe"

    move-object v0, v1

    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/service/notification/ConditionProviderService;->onUnsubscribe(Landroid/net/Uri;)V

    goto :goto_34

    :pswitch_1c  #0x3
    const-string/jumbo v1, "onSubscribe"

    move-object v0, v1

    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/service/notification/ConditionProviderService;->onSubscribe(Landroid/net/Uri;)V

    goto :goto_34

    :pswitch_2a  #0x1
    const-string/jumbo v1, "onConnected"

    move-object v0, v1

    iget-object v1, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-virtual {v1}, Landroid/service/notification/ConditionProviderService;->onConnected()V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_35

    nop

    :goto_34
    goto :goto_52

    :catchall_35
    move-exception v1

    iget-object v2, p0, Landroid/service/notification/ConditionProviderService$H;->this$0:Landroid/service/notification/ConditionProviderService;

    invoke-static {v2}, Landroid/service/notification/ConditionProviderService;->-$$Nest$fgetTAG(Landroid/service/notification/ConditionProviderService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_52
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_d  #00000002
        :pswitch_1c  #00000003
        :pswitch_e  #00000004
    .end packed-switch
.end method
