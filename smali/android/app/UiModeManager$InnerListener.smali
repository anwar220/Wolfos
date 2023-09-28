# classes.dex

.class Landroid/app/UiModeManager$InnerListener;
.super Landroid/app/IOnProjectionStateChangedListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerListener"
.end annotation


# instance fields
.field private final mResourceManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/IOnProjectionStateChangedListener$Stub;-><init>()V

    invoke-virtual {p3, p0, p1, p2}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->put(Landroid/app/UiModeManager$InnerListener;Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/UiModeManager$InnerListener;->mResourceManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;Landroid/app/UiModeManager$InnerListener-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/UiModeManager$InnerListener;-><init>(Ljava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;)V

    return-void
.end method


# virtual methods
.method public onProjectionStateChanged(ILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/UiModeManager$InnerListener;->mResourceManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;

    const-string v1, "UiModeManager"

    if-nez v0, :cond_12

    const-string v2, "Can\'t execute onProjectionStateChanged, resource manager is gone."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->getOuterListener(Landroid/app/UiModeManager$InnerListener;)Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    move-result-object v2

    invoke-virtual {v0, p0}, Landroid/app/UiModeManager$OnProjectionStateChangedListenerResourceManager;->getExecutor(Landroid/app/UiModeManager$InnerListener;)Ljava/util/concurrent/Executor;

    move-result-object v3

    if-eqz v2, :cond_39

    if-nez v3, :cond_1f

    goto :goto_39

    :cond_1f
    new-instance v1, Landroid/app/UiModeManager$InnerListener$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/UiModeManager$InnerListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_39
    :goto_39
    const-string v4, "Can\'t execute onProjectionStatechanged, references are null."

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
