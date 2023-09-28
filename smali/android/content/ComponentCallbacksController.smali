# classes.dex

.class public Landroid/content/ComponentCallbacksController;
.super Ljava/lang/Object;


# instance fields
.field private mComponentCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private forAllComponentCallbacks(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/ComponentCallbacks;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_29

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_29

    :cond_e
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentCallbacks;

    iget-object v2, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_2b

    array-length v0, v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_28

    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_28
    return-void

    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method static synthetic lambda$dispatchConfigurationChanged$0(Landroid/content/res/Configuration;Landroid/content/ComponentCallbacks;)V
    .registers 2

    invoke-interface {p1, p0}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic lambda$dispatchTrimMemory$1(ILandroid/content/ComponentCallbacks;)V
    .registers 3

    instance-of v0, p1, Landroid/content/ComponentCallbacks2;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Landroid/content/ComponentCallbacks2;

    invoke-interface {v0, p0}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    :cond_a
    return-void
.end method


# virtual methods
.method public clearCallbacks()V
    .registers 3

    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda2;-><init>(Landroid/content/res/Configuration;)V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchLowMemory()V
    .registers 2

    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dispatchTrimMemory(I)V
    .registers 3

    new-instance v0, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/content/ComponentCallbacksController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/content/ComponentCallbacksController;->forAllComponentCallbacks(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    :cond_e
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public unregisterCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/content/ComponentCallbacksController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_15

    :cond_e
    iget-object v1, p0, Landroid/content/ComponentCallbacksController;->mComponentCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :cond_15
    :goto_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method
