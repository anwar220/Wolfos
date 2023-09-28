# classes3.dex

.class Landroid/service/smartspace/SmartspaceService$1;
.super Landroid/service/smartspace/ISmartspaceService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/smartspace/SmartspaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/smartspace/SmartspaceService;


# direct methods
.method constructor <init>(Landroid/service/smartspace/SmartspaceService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-direct {p0}, Landroid/service/smartspace/ISmartspaceService$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateSmartspaceSession$0(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoCreateSmartspaceSession(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic lambda$onDestroySmartspaceSession$4(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoDestroy(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic lambda$registerSmartspaceUpdates$2(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoRegisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method

.method static synthetic lambda$requestSmartspaceUpdate$1(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoRequestPredictionUpdate(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;)V

    return-void
.end method

.method static synthetic lambda$unregisterSmartspaceUpdates$3(Ljava/lang/Object;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 4

    move-object v0, p0

    check-cast v0, Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0, p1, p2}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$mdoUnregisterSmartspaceUpdates(Landroid/service/smartspace/SmartspaceService;Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method


# virtual methods
.method public notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .registers 6

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCreateSmartspaceSession(Landroid/app/smartspace/SmartspaceConfig;Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 6

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDestroySmartspaceSession(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 5

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestSmartspaceUpdate(Landroid/app/smartspace/SmartspaceSessionId;)V
    .registers 5

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterSmartspaceUpdates(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/ISmartspaceCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v0}, Landroid/service/smartspace/SmartspaceService;->-$$Nest$fgetmHandler(Landroid/service/smartspace/SmartspaceService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/smartspace/SmartspaceService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/smartspace/SmartspaceService$1;->this$0:Landroid/service/smartspace/SmartspaceService;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
