# classes3.dex

.class public abstract Landroid/service/games/GameSession;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/games/GameSession$ScreenshotCallback;,
        Landroid/service/games/GameSession$GameSessionRootView;,
        Landroid/service/games/GameSession$LifecycleState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GameSession"


# instance fields
.field private mAreTransientInsetsVisibleDueToGesture:Z

.field private mContext:Landroid/content/Context;

.field private mGameSessionController:Landroid/service/games/IGameSessionController;

.field private mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

.field final mInterface:Landroid/service/games/IGameSession;

.field private mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

.field private mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

.field private mTaskId:I


# direct methods
.method static bridge synthetic -$$Nest$mdoDestroy(Landroid/service/games/GameSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/games/GameSession;->doDestroy()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/service/games/GameSession$1;

    invoke-direct {v0, p0}, Landroid/service/games/GameSession$1;-><init>(Landroid/service/games/GameSession;)V

    iput-object v0, p0, Landroid/service/games/GameSession;->mInterface:Landroid/service/games/IGameSession;

    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->INITIALIZED:Landroid/service/games/GameSession$LifecycleState;

    iput-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    return-void
.end method

.method private doDestroy()V
    .registers 2

    iget-object v0, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSession;->moveToState(Landroid/service/games/GameSession$LifecycleState;)V

    return-void
.end method

.method private handleScreenshotResult(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "GameSession"

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p1, v0}, Landroid/service/games/GameSession$ScreenshotCallback;->onFailure(I)V

    return-void

    :cond_14
    invoke-virtual {p2}, Landroid/service/games/GameScreenshotResult;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_2a

    goto :goto_29

    :pswitch_1c  #0x1
    const-string v3, "Error taking screenshot"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v0}, Landroid/service/games/GameSession$ScreenshotCallback;->onFailure(I)V

    goto :goto_29

    :pswitch_25  #0x0
    invoke-interface {p1}, Landroid/service/games/GameSession$ScreenshotCallback;->onSuccess()V

    nop

    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_1c  #00000001
    .end packed-switch
.end method

.method static synthetic lambda$startActivityFromGameSessionForResult$1(Landroid/service/games/GameSessionActivityCallback;Landroid/service/games/GameSessionActivityResult;Ljava/lang/Throwable;)V
    .registers 5

    if-eqz p2, :cond_6

    invoke-interface {p0, p2}, Landroid/service/games/GameSessionActivityCallback;->onActivityStartFailed(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/service/games/GameSessionActivityResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/games/GameSessionActivityResult;->getData()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/service/games/GameSessionActivityCallback;->onActivityResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$startActivityFromGameSessionForResult$2(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/service/games/GameSessionActivityCallback;->onActivityStartFailed(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public attach(Landroid/service/games/IGameSessionController;ILandroid/content/Context;Landroid/view/SurfaceControlViewHost;II)V
    .registers 9

    iput-object p1, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iput p2, p0, Landroid/service/games/GameSession;->mTaskId:I

    iput-object p3, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    new-instance v0, Landroid/service/games/GameSession$GameSessionRootView;

    iget-object v1, p0, Landroid/service/games/GameSession;->mSurfaceControlViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-direct {v0, p3, v1}, Landroid/service/games/GameSession$GameSessionRootView;-><init>(Landroid/content/Context;Landroid/view/SurfaceControlViewHost;)V

    iput-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {p4, v0, p5, p6}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;II)V

    return-void
.end method

.method public dispatchTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    iput-boolean p1, p0, Landroid/service/games/GameSession;->mAreTransientInsetsVisibleDueToGesture:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/service/games/GameSession;->onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V

    :cond_e
    return-void
.end method

.method doCreate()V
    .registers 2

    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {p0, v0}, Landroid/service/games/GameSession;->moveToState(Landroid/service/games/GameSession$LifecycleState;)V

    return-void
.end method

.method synthetic lambda$takeScreenshot$0$android-service-games-GameSession(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/games/GameSession;->handleScreenshotResult(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public moveToState(Landroid/service/games/GameSession$LifecycleState;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_6d

    iget-object v0, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    if-ne v0, p1, :cond_f

    return-void

    :cond_f
    sget-object v0, Landroid/service/games/GameSession$2;->$SwitchMap$android$service$games$GameSession$LifecycleState:[I

    iget-object v1, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    invoke-virtual {v1}, Landroid/service/games/GameSession$LifecycleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_76

    goto :goto_6a

    :pswitch_1e  #0x5
    return-void

    :pswitch_1f  #0x4
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_27

    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_6a

    :cond_27
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_2f

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_6a

    :cond_2f
    return-void

    :pswitch_30  #0x3
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_UNFOCUSED:Landroid/service/games/GameSession$LifecycleState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_39

    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_6a

    :cond_39
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_44

    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_6a

    :cond_44
    return-void

    :pswitch_45  #0x2
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->TASK_FOCUSED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_4d

    invoke-virtual {p0, v1}, Landroid/service/games/GameSession;->onGameTaskFocusChanged(Z)V

    goto :goto_6a

    :cond_4d
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_55

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_6a

    :cond_55
    return-void

    :pswitch_56  #0x1
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->CREATED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_5e

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onCreate()V

    goto :goto_6a

    :cond_5e
    sget-object v0, Landroid/service/games/GameSession$LifecycleState;->DESTROYED:Landroid/service/games/GameSession$LifecycleState;

    if-ne p1, v0, :cond_69

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onCreate()V

    invoke-virtual {p0}, Landroid/service/games/GameSession;->onDestroy()V

    goto :goto_6a

    :cond_69
    return-void

    :goto_6a
    iput-object p1, p0, Landroid/service/games/GameSession;->mLifecycleState:Landroid/service/games/GameSession$LifecycleState;

    return-void

    :cond_6d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "moveToState should be used only from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_56  #00000001
        :pswitch_45  #00000002
        :pswitch_30  #00000003
        :pswitch_1f  #00000004
        :pswitch_1e  #00000005
    .end packed-switch
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onGameTaskFocusChanged(Z)V
    .registers 2

    return-void
.end method

.method public onTransientSystemBarVisibilityFromRevealGestureChanged(Z)V
    .registers 2

    return-void
.end method

.method public final restartGame()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iget v1, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-interface {v0, v1}, Landroid/service/games/IGameSessionController;->restartGame(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a

    nop

    const/4 v0, 0x1

    return v0

    :catch_a
    move-exception v0

    const-string v1, "GameSession"

    const-string v2, "Failed to restart game"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setTaskOverlayView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {v0}, Landroid/service/games/GameSession$GameSessionRootView;->removeAllViews()V

    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionRootView:Landroid/service/games/GameSession$GameSessionRootView;

    invoke-virtual {v0, p1, p2}, Landroid/service/games/GameSession$GameSessionRootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final startActivityFromGameSessionForResult(Landroid/content/Intent;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/service/games/GameSessionActivityCallback;)V
    .registers 16

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p4}, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;-><init>(Landroid/service/games/GameSessionActivityCallback;)V

    invoke-virtual {v0, v1, p3}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    nop

    invoke-static {p1, p2, v0}, Landroid/service/games/GameSessionTrampolineActivity;->createIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)Landroid/content/Intent;

    move-result-object v10

    :try_start_1c
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v2, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p0, Landroid/service/games/GameSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameSession"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget v8, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    move-object v7, v10

    invoke-interface/range {v1 .. v9}, Landroid/app/IActivityTaskManager;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v1

    invoke-static {v1, v10}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_45

    goto :goto_4e

    :catchall_45
    move-exception v1

    new-instance v2, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4, v1}, Landroid/service/games/GameSession$$ExternalSyntheticLambda1;-><init>(Landroid/service/games/GameSessionActivityCallback;Ljava/lang/Throwable;)V

    invoke-interface {p3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_4e
    return-void
.end method

.method public takeScreenshot(Ljava/util/concurrent/Executor;Landroid/service/games/GameSession$ScreenshotCallback;)V
    .registers 6

    iget-object v0, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;-><init>(Landroid/service/games/GameSession;Landroid/service/games/GameSession$ScreenshotCallback;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    :try_start_12
    iget-object v1, p0, Landroid/service/games/GameSession;->mGameSessionController:Landroid/service/games/IGameSessionController;

    iget v2, p0, Landroid/service/games/GameSession;->mTaskId:I

    invoke-interface {v1, v2, v0}, Landroid/service/games/IGameSessionController;->takeScreenshot(ILcom/android/internal/infra/AndroidFuture;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v1

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
