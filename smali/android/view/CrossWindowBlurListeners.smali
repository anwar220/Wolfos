# classes3.dex

.class public final Landroid/view/CrossWindowBlurListeners;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
    }
.end annotation


# static fields
.field private static final BLUR_PROPERTY:Ljava/lang/String; = "ro.surface_flinger.supports_background_blur"

.field public static final CROSS_WINDOW_BLUR_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String; = "CrossWindowBlurListeners"

.field private static volatile sInstance:Landroid/view/CrossWindowBlurListeners;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCrossWindowBlurEnabled:Z

.field private mInternalListenerAttached:Z

.field private final mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCrossWindowBlurEnabled(Landroid/view/CrossWindowBlurListeners;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyListener(Landroid/view/CrossWindowBlurListeners;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/CrossWindowBlurListeners;->notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    nop

    const-string/jumbo v0, "ro.surface_flinger.supports_background_blur"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;-><init>(Landroid/view/CrossWindowBlurListeners;Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal-IA;)V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    return-void
.end method

.method private attachInternalListenerIfNeededLocked()V
    .registers 4

    iget-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    if-nez v0, :cond_1c

    :try_start_4
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "CrossWindowBlurListeners"

    const-string v2, "Could not register ICrossWindowBlurEnabledListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static getInstance()Landroid/view/CrossWindowBlurListeners;
    .registers 3

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    if-nez v0, :cond_19

    sget-object v1, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v2, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    move-object v0, v2

    if-nez v0, :cond_14

    new-instance v2, Landroid/view/CrossWindowBlurListeners;

    invoke-direct {v2}, Landroid/view/CrossWindowBlurListeners;-><init>()V

    move-object v0, v2

    sput-object v0, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    :cond_14
    monitor-exit v1

    goto :goto_19

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2

    :cond_19
    :goto_19
    return-object v0
.end method

.method static synthetic lambda$notifyListener$0(Ljava/util/function/Consumer;Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Landroid/view/CrossWindowBlurListeners$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3}, Landroid/view/CrossWindowBlurListeners$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    invoke-direct {p0}, Landroid/view/CrossWindowBlurListeners;->attachInternalListenerIfNeededLocked()V

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    invoke-direct {p0, p2, p1, v1}, Landroid/view/CrossWindowBlurListeners;->notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public isCrossWindowBlurEnabled()Z
    .registers 3

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Landroid/view/CrossWindowBlurListeners;->attachInternalListenerIfNeededLocked()V

    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    monitor-exit v0

    return v1

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeListener(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_31

    if-nez v1, :cond_2f

    :try_start_1a
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_26} :catch_27
    .catchall {:try_start_1a .. :try_end_26} :catchall_31

    goto :goto_2f

    :catch_27
    move-exception v1

    :try_start_28
    const-string v2, "CrossWindowBlurListeners"

    const-string v3, "Could not unregister ICrossWindowBlurEnabledListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_31

    throw v1
.end method
