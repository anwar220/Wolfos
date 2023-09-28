# classes3.dex

.class Landroid/service/search/SearchUiService$1;
.super Landroid/service/search/ISearchUiService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/search/SearchUiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/search/SearchUiService;


# direct methods
.method constructor <init>(Landroid/service/search/SearchUiService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-direct {p0}, Landroid/service/search/ISearchUiService$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDestroy$0(Ljava/lang/Object;Landroid/app/search/SearchSessionId;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/search/SearchUiService;

    invoke-static {v0, p1}, Landroid/service/search/SearchUiService;->-$$Nest$mdoDestroy(Landroid/service/search/SearchUiService;Landroid/app/search/SearchSessionId;)V

    return-void
.end method


# virtual methods
.method public onCreateSearchSession(Landroid/app/search/SearchContext;Landroid/app/search/SearchSessionId;)V
    .registers 6

    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDestroy(Landroid/app/search/SearchSessionId;)V
    .registers 5

    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNotifyEvent(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V
    .registers 7

    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v1, v2, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Landroid/app/search/ISearchCallback;)V
    .registers 8

    iget-object v0, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    invoke-static {v0}, Landroid/service/search/SearchUiService;->-$$Nest$fgetmHandler(Landroid/service/search/SearchUiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/search/SearchUiService$1;->this$0:Landroid/service/search/SearchUiService;

    new-instance v3, Landroid/service/search/SearchUiService$CallbackWrapper;

    invoke-direct {v3, p3}, Landroid/service/search/SearchUiService$CallbackWrapper;-><init>(Landroid/app/search/ISearchCallback;)V

    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
