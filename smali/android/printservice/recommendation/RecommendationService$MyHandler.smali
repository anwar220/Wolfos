# classes3.dex

.class Landroid/printservice/recommendation/RecommendationService$MyHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/recommendation/RecommendationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_CONNECT:I = 0x1

.field static final MSG_DISCONNECT:I = 0x2

.field static final MSG_UPDATE:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/printservice/recommendation/RecommendationService;


# direct methods
.method constructor <init>(Landroid/printservice/recommendation/RecommendationService;)V
    .registers 2

    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    goto :goto_40

    :pswitch_6  #0x3
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {v0}, Landroid/printservice/recommendation/RecommendationService;->-$$Nest$fgetmCallbacks(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    move-result-object v0

    if-eqz v0, :cond_40

    :try_start_e
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {v0}, Landroid/printservice/recommendation/RecommendationService;->-$$Nest$fgetmCallbacks(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;->onRecommendationsUpdated(Ljava/util/List;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1b} :catch_1c

    goto :goto_40

    :catch_1c
    move-exception v0

    const-string v1, "PrintServiceRecS"

    const-string v2, "Could not update recommended services"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :pswitch_25  #0x2
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-virtual {v0}, Landroid/printservice/recommendation/RecommendationService;->onDisconnected()V

    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/printservice/recommendation/RecommendationService;->-$$Nest$fputmCallbacks(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V

    goto :goto_40

    :pswitch_31  #0x1
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    invoke-static {v0, v1}, Landroid/printservice/recommendation/RecommendationService;->-$$Nest$fputmCallbacks(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V

    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-virtual {v0}, Landroid/printservice/recommendation/RecommendationService;->onConnected()V

    nop

    :cond_40
    :goto_40
    return-void

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_25  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
