# classes3.dex

.class Landroid/service/games/GameService$1;
.super Landroid/service/games/IGameService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/GameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/games/GameService;


# direct methods
.method constructor <init>(Landroid/service/games/GameService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-direct {p0}, Landroid/service/games/IGameService$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$connected$0(Ljava/lang/Object;Landroid/service/games/IGameServiceController;)V
    .registers 3

    move-object v0, p0

    check-cast v0, Landroid/service/games/GameService;

    invoke-static {v0, p1}, Landroid/service/games/GameService;->-$$Nest$mdoOnConnected(Landroid/service/games/GameService;Landroid/service/games/IGameServiceController;)V

    return-void
.end method


# virtual methods
.method public connected(Landroid/service/games/IGameServiceController;)V
    .registers 5

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/service/games/GameService$1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public disconnected()V
    .registers 4

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameService$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public gameStarted(Landroid/service/games/GameStartedEvent;)V
    .registers 5

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameService$1$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/service/games/GameService$1;->this$0:Landroid/service/games/GameService;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method
