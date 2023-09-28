# classes3.dex

.class public abstract Landroid/service/games/GameSessionService;
.super Landroid/app/Service;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACTION_GAME_SESSION_SERVICE:Ljava/lang/String; = "android.service.games.action.GAME_SESSION_SERVICE"


# instance fields
.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mInterface:Landroid/service/games/IGameSessionService;


# direct methods
.method static bridge synthetic -$$Nest$mdoCreate(Landroid/service/games/GameSessionService;Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/service/games/GameSessionService;->doCreate(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/games/GameSessionService$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameSessionService$1;-><init>(Landroid/service/games/GameSessionService;)V

    iput-object v0, p0, Landroid/service/games/GameSessionService;->mInterface:Landroid/service/games/IGameSessionService;

    return-void
.end method

.method private doCreate(Landroid/service/games/IGameSessionController;Landroid/service/games/CreateGameSessionRequest;Landroid/service/games/GameSessionViewHostConfiguration;Lcom/android/internal/infra/AndroidFuture;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/games/IGameSessionController;",
            "Landroid/service/games/CreateGameSessionRequest;",
            "Landroid/service/games/GameSessionViewHostConfiguration;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/games/CreateGameSessionResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Landroid/service/games/GameSessionService;->onNewSession(Landroid/service/games/CreateGameSessionRequest;)Landroid/service/games/GameSession;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/games/GameSessionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v1, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    if-nez v8, :cond_2f

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No display found for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void

    :cond_2f
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v9, v0

    const/16 v0, 0x7f6

    const/4 v1, 0x0

    invoke-virtual {p0, v8, v0, v1}, Landroid/service/games/GameSessionService;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v10

    new-instance v4, Landroid/view/SurfaceControlViewHost;

    invoke-direct {v4, v10, v8, v9}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/os/IBinder;)V

    nop

    invoke-virtual {p2}, Landroid/service/games/CreateGameSessionRequest;->getTaskId()I

    move-result v2

    iget v5, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mWidthPx:I

    iget v6, p3, Landroid/service/games/GameSessionViewHostConfiguration;->mHeightPx:I

    move-object v0, v7

    move-object v1, p1

    move-object v3, v10

    invoke-virtual/range {v0 .. v6}, Landroid/service/games/GameSession;->attach(Landroid/service/games/IGameSessionController;ILandroid/content/Context;Landroid/view/SurfaceControlViewHost;II)V

    new-instance v0, Landroid/service/games/CreateGameSessionResult;

    iget-object v1, v7, Landroid/service/games/GameSession;->mInterface:Landroid/service/games/IGameSession;

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/games/CreateGameSessionResult;-><init>(Landroid/service/games/IGameSession;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    invoke-virtual {p4, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/service/games/GameSession;->doCreate()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.service.games.action.GAME_SESSION_SERVICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    iget-object v0, p0, Landroid/service/games/GameSessionService;->mInterface:Landroid/service/games/IGameSessionService;

    invoke-interface {v0}, Landroid/service/games/IGameSessionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSessionService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Landroid/service/games/GameSessionService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public abstract onNewSession(Landroid/service/games/CreateGameSessionRequest;)Landroid/service/games/GameSession;
.end method
