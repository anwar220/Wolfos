# classes3.dex

.class public final synthetic Landroid/service/games/GameSessionService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Landroid/service/games/GameSessionService;

    check-cast p2, Landroid/service/games/IGameSessionController;

    check-cast p3, Landroid/service/games/CreateGameSessionRequest;

    check-cast p4, Landroid/service/games/GameSessionViewHostConfiguration;

    check-cast p5, Lcom/android/internal/infra/AndroidFuture;

    invoke-static {p1, p2, p3, p4, p5}, Landroid/service/games/GameSessionService$1;->lambda$create$0(Ljava/lang/Object;Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
