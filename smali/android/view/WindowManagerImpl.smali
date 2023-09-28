# classes3.dex

.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field private mDefaultToken:Landroid/os/IBinder;

.field private final mGlobal:Landroid/view/WindowManagerGlobal;

.field private final mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mParentWindow:Landroid/view/Window;

.field private final mWindowContextToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iput-object p3, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    return-void
.end method

.method private applyTokens(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    instance-of v0, p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_21

    move-object v0, p1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->assertWindowContextTypeMatches(I)V

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-nez v1, :cond_1c

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_1c

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_1c
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->mWindowContextToken:Landroid/os/IBinder;

    return-void

    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Params must be WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertWindowContextTypeMatches(I)V
    .registers 6

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/window/WindowProvider;

    if-nez v1, :cond_7

    return-void

    :cond_7
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_10

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_10

    return-void

    :cond_10
    check-cast v0, Landroid/window/WindowProvider;

    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v1

    if-ne v1, p1, :cond_19

    return-void

    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type mismatch. Window Context\'s window type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while LayoutParams\' type is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Please create another Window Context via createWindowContext(getDisplay(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", null) to add window with type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/window/WindowProvider;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/window/WindowProviderService;->isWindowProviderService(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_63

    const-string v2, "WindowContext\'s window type must match type in WindowManager.LayoutParams"

    invoke-static {v2, v1}, Landroid/os/StrictMode;->onIncorrectContextUsed(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_63
    throw v1
.end method

.method private computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 5

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_10

    :cond_e
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    :goto_10
    invoke-static {v1}, Landroid/content/Context;->getToken(Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForCurrentDisplay(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v2

    return-object v2
.end method

.method public static createWindowContextWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/view/WindowManagerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v1
.end method

.method private static getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 3

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private static getMaximumBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 3

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private getWindowInsetsFromServerForCurrentDisplay(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 7

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v2

    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    invoke-static {v1, p1, p2, v2, v3}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1
.end method

.method private static getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;
    .registers 19

    move-object v1, p1

    :try_start_1
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_26

    move v13, p0

    :try_start_b
    invoke-interface {v2, p1, p0, v0}, Landroid/view/IWindowManager;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result v6

    const/4 v4, 0x0

    const/16 v7, 0x30

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v9, 0x0

    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v12, 0x0

    move-object v2, v0

    move-object/from16 v3, p2

    move/from16 v5, p3

    move/from16 v11, p4

    invoke-virtual/range {v2 .. v12}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_24

    return-object v2

    :catch_24
    move-exception v0

    goto :goto_28

    :catch_26
    move-exception v0

    move v13, p0

    :goto_28
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/CrossWindowBlurListeners;->addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/view/WindowManagerImpl;->addCrossWindowBlurEnabledListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 10

    const/16 v0, 0x17f

    invoke-static {v0, p2}, Landroid/util/SeempLog;->record_vg_layout(ILandroid/view/ViewGroup$LayoutParams;)I

    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v4

    iget-object v5, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;I)V

    return-void
.end method

.method public captureSpecialLayers(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->captureSpecialLayers(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .registers 5

    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public createPresentationWindowManager(Landroid/content/Context;)Landroid/view/WindowManagerImpl;
    .registers 5

    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mWindowContextToken:Landroid/os/IBinder;

    invoke-direct {v0, p1, v1, v2}, Landroid/view/WindowManagerImpl;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public getCurrentImeTouchRegion()Landroid/graphics/Region;
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentWindowMetrics()Landroid/view/WindowMetrics;
    .registers 5

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    :goto_b
    invoke-static {v0}, Landroid/view/WindowManagerImpl;->getCurrentBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/view/WindowMetrics;

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    return-object v2
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .registers 2

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayImePolicy(I)I
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->getDisplayImePolicy(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x1

    return v0
.end method

.method public getMaximumWindowMetrics()Landroid/view/WindowMetrics;
    .registers 5

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    :goto_b
    invoke-static {v0}, Landroid/view/WindowManagerImpl;->getMaximumBounds(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {}, Landroid/util/MiuiAppSizeCompatModeStub;->get()Landroid/util/MiuiAppSizeCompatModeStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/util/MiuiAppSizeCompatModeStub;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread;->updateBoundsCompatBounds(Landroid/graphics/Rect;)V

    :cond_22
    new-instance v2, Landroid/view/WindowMetrics;

    invoke-direct {p0, v1}, Landroid/view/WindowManagerImpl;->computeWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    return-object v2
.end method

.method public getPossibleMaximumWindowMetrics(I)Ljava/util/Set;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/view/WindowMetrics;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->getPossibleDisplayInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_6e

    nop

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v3, 0x0

    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/DisplayInfo;

    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, v4, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v6, v6, 0x10

    const/4 v7, 0x1

    if-eqz v6, :cond_39

    move v6, v7

    goto :goto_3a

    :cond_39
    move v6, v8

    :goto_3a
    iget v9, v4, Landroid/view/DisplayInfo;->displayId:I

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v12

    invoke-direct {v10, v8, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v9, v2, v10, v6, v7}, Landroid/view/WindowManagerImpl;->getWindowInsetsFromServerForDisplay(ILandroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)Landroid/view/WindowInsets;

    move-result-object v7

    new-instance v8, Landroid/view/WindowInsets$Builder;

    invoke-direct {v8, v7}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    iget-object v9, v4, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v8, v9}, Landroid/view/WindowInsets$Builder;->setRoundedCorners(Landroid/view/RoundedCorners;)Landroid/view/WindowInsets$Builder;

    move-result-object v8

    iget-object v9, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v8, v9}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v7

    new-instance v8, Landroid/view/WindowMetrics;

    invoke-direct {v8, v5, v7}, Landroid/view/WindowMetrics;-><init>(Landroid/graphics/Rect;Landroid/view/WindowInsets;)V

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_6d
    return-object v1

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public holdLock(Landroid/os/IBinder;I)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isCrossWindowBlurEnabled()Z
    .registers 2

    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/CrossWindowBlurListeners;->isCrossWindowBlurEnabled()Z

    move-result v0

    return v0
.end method

.method public isTaskSnapshotSupported()Z
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isTaskSnapshotSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public registerTaskFpsCallback(ILjava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;)V
    .registers 7

    new-instance v0, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/window/TaskFpsCallback;Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy-IA;)V

    :try_start_6
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_1b

    nop

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v2

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/CrossWindowBlurListeners;->removeListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    return-void
.end method

.method public requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
    .registers 5

    new-instance v0, Landroid/view/WindowManagerImpl$1;

    invoke-direct {v0, p0, p1}, Landroid/view/WindowManagerImpl$1;-><init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V

    :try_start_5
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Landroid/view/IWindowManager;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    return-void
.end method

.method public setAppResolutionTunerSupport(Z)V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->setAppResolutionTunerSupport(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public setDefaultToken(Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    return-void
.end method

.method public setDisplayImePolicy(II)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setDisplayImePolicy(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    return-void
.end method

.method public setShouldShowSystemDecors(IZ)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setShouldShowSystemDecors(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    return-void
.end method

.method public setShouldShowWithInsecureKeyguard(IZ)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->setShouldShowWithInsecureKeyguard(IZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :goto_9
    return-void
.end method

.method public shouldShowSystemDecors(I)Z
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->shouldShowSystemDecors(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public snapshotTaskForRecents(I)Landroid/graphics/Bitmap;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return-object v0
.end method

.method public unregisterTaskFpsCallback(Landroid/window/TaskFpsCallback;)V
    .registers 7

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mOnFpsCallbackListenerProxies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;

    invoke-static {v2}, Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;->-$$Nest$fgetmCallback(Landroid/view/WindowManagerImpl$OnFpsCallbackListenerProxy;)Landroid/window/TaskFpsCallback;

    move-result-object v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_30

    if-ne v3, p1, :cond_2d

    :try_start_1b
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_27
    .catchall {:try_start_1b .. :try_end_22} :catchall_30

    nop

    :try_start_23
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    :catch_27
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_2d
    :goto_2d
    goto :goto_9

    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public updateResolutionTunerConfig(Ljava/lang/String;)Z
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->updateResolutionTunerConfig(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const/16 v0, 0x180

    invoke-static {v0, p2}, Landroid/util/SeempLog;->record_vg_layout(ILandroid/view/ViewGroup$LayoutParams;)I

    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyTokens(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
