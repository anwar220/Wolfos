# classes3.dex

.class public Landroid/service/games/GameService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACTION_GAME_SERVICE:Ljava/lang/String; = "android.service.games.action.GAME_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.game_service"

.field private static final TAG:Ljava/lang/String; = "GameService"


# instance fields
.field private mGameManagerService:Landroid/app/IGameManagerService;

.field private final mGameManagerServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mGameServiceController:Landroid/service/games/IGameServiceController;

.field private final mInterface:Landroid/service/games/IGameService;


# direct methods
.method static bridge synthetic -$$Nest$mdoOnConnected(Landroid/service/games/GameService;Landroid/service/games/IGameServiceController;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/games/GameService;->doOnConnected(Landroid/service/games/IGameServiceController;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/games/GameService$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameService$1;-><init>(Landroid/service/games/GameService;)V

    iput-object v0, p0, Landroid/service/games/GameService;->mInterface:Landroid/service/games/IGameService;

    new-instance v0, Landroid/service/games/GameService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/service/games/GameService$$ExternalSyntheticLambda0;-><init>(Landroid/service/games/GameService;)V

    iput-object v0, p0, Landroid/service/games/GameService;->mGameManagerServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private doOnConnected(Landroid/service/games/IGameServiceController;)V
    .registers 5

    nop

    const-string v0, "game"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/service/games/GameService;->mGameManagerService:Landroid/app/IGameManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_10
    iget-object v0, p0, Landroid/service/games/GameService;->mGameManagerService:Landroid/app/IGameManagerService;

    invoke-interface {v0}, Landroid/app/IGameManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/games/GameService;->mGameManagerServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception v0

    const-string v1, "GameService"

    const-string v2, "Unable to link to death with system service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    iput-object p1, p0, Landroid/service/games/GameService;->mGameServiceController:Landroid/service/games/IGameServiceController;

    invoke-virtual {p0}, Landroid/service/games/GameService;->onConnected()V

    return-void
.end method


# virtual methods
.method public final createGameSession(I)V
    .registers 5

    iget-object v0, p0, Landroid/service/games/GameService;->mGameServiceController:Landroid/service/games/IGameServiceController;

    if-eqz v0, :cond_11

    :try_start_4
    invoke-interface {v0, p1}, Landroid/service/games/IGameServiceController;->createGameSession(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "GameService"

    const-string v2, "Request for game session failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not call before connected()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$new$0$android-service-games-GameService()V
    .registers 3

    const-string v0, "GameService"

    const-string v1, "System service binder died. Shutting down"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/games/GameService$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/service/games/GameService$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->executeOrSendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.games.action.GAME_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/service/games/GameService;->mInterface:Landroid/service/games/IGameService;

    invoke-interface {v0}, Landroid/service/games/IGameService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnected()V
    .registers 1

    return-void
.end method

.method public onDisconnected()V
    .registers 1

    return-void
.end method

.method public onGameStarted(Landroid/service/games/GameStartedEvent;)V
    .registers 2

    return-void
.end method
