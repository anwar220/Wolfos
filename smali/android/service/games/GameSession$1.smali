# classes3.dex

.class Landroid/service/games/GameSession$1;
.super Landroid/service/games/IGameSession$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/games/GameSession;


# direct methods
.method constructor <init>(Landroid/service/games/GameSession;)V
    .registers 2

    iput-object p1, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    invoke-direct {p0}, Landroid/service/games/IGameSession$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDestroyed$0(Ljava/lang/Object;)V
    .registers 2

    move-object v0, p0

    check-cast v0, Landroid/service/games/GameSession;

    invoke-static {v0}, Landroid/service/games/GameSession;->-$$Nest$mdoDestroy(Landroid/service/games/GameSession;)V

    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .registers 4

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTaskFocusChanged(Z)V
    .registers 6

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    if-eqz p1, :cond_10

    sget-object v3, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    goto :goto_12

    :cond_10
    sget-object v3, Landroid/service/games/GameSession$LifecycleState;->TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;

    :goto_12
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .registers 6

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameSession$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameSession$1;->this$0:Landroid/service/games/GameSession;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method
