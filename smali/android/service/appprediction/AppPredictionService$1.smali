# classes3.dex

.class Landroid/service/appprediction/AppPredictionService$1;
.super Landroid/service/appprediction/IPredictionService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/appprediction/AppPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/appprediction/AppPredictionService;


# direct methods
.method constructor <init>(Landroid/service/appprediction/AppPredictionService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-direct {p0}, Landroid/service/appprediction/IPredictionService$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreatePredictionSession$0(Ljava/lang/Object;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoCreatePredictionSession(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$onDestroyPredictionSession$4(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoDestroyPredictionSession(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$registerPredictionUpdates$1(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoRegisterPredictionUpdates(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method static synthetic lambda$requestPredictionUpdate$3(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoRequestPredictionUpdate(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method static synthetic lambda$unregisterPredictionUpdates$2(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0, p1, p2}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$mdoUnregisterPredictionUpdates(Landroid/service/appprediction/AppPredictionService;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method


# virtual methods
.method public notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .registers 6

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 8

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 6

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 5

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda7;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V
    .registers 5

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .registers 11

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    new-instance v6, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;

    const/4 v3, 0x0

    invoke-direct {v6, p3, v3}, Landroid/service/appprediction/AppPredictionService$CallbackWrapper;-><init>(Landroid/app/prediction/IPredictionCallback;Ljava/util/function/Consumer;)V

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v0}, Landroid/service/appprediction/AppPredictionService;->-$$Nest$fgetmHandler(Landroid/service/appprediction/AppPredictionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/appprediction/AppPredictionService$1;->this$0:Landroid/service/appprediction/AppPredictionService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
