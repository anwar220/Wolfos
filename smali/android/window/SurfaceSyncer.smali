# classes4.dex

.class public Landroid/window/SurfaceSyncer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;,
        Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;,
        Landroid/window/SurfaceSyncer$SyncSet;,
        Landroid/window/SurfaceSyncer$SyncBufferCallback;,
        Landroid/window/SurfaceSyncer$SyncTarget;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SurfaceSyncer"

.field private static sTransactionFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIdCounter:I

.field private final mSyncSetLock:Ljava/lang/Object;

.field private final mSyncSets:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/window/SurfaceSyncer$SyncSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsTransactionFactory()Ljava/util/function/Supplier;
    .registers 1

    sget-object v0, Landroid/window/SurfaceSyncer;->sTransactionFactory:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/InsetsController$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/view/InsetsController$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/window/SurfaceSyncer;->sTransactionFactory:Ljava/util/function/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/SurfaceSyncer;->mIdCounter:I

    return-void
.end method

.method private getAndValidateSyncSet(I)Landroid/window/SurfaceSyncer$SyncSet;
    .registers 6

    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SurfaceSyncer$SyncSet;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    if-nez v1, :cond_28

    const-string v0, "SurfaceSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find sync for id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_28
    return-object v1

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method static synthetic lambda$setupSync$0(Ljava/lang/Runnable;Landroid/os/Handler;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz p0, :cond_8

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    return-void
.end method

.method public static setTransactionFactory(Ljava/util/function/Supplier;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Landroid/window/SurfaceSyncer;->sTransactionFactory:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public addToSync(ILandroid/view/SurfaceView;Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/SurfaceView;",
            "Ljava/util/function/Consumer<",
            "Landroid/window/SurfaceSyncer$SurfaceViewFrameCallback;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;

    invoke-direct {v0, p2, p3}, Landroid/window/SurfaceSyncer$SurfaceViewSyncTarget;-><init>(Landroid/view/SurfaceView;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, p1, v0}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    move-result v0

    return v0
.end method

.method public addToSync(ILandroid/view/View;)Z
    .registers 5

    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mSyncTarget:Landroid/window/SurfaceSyncer$SyncTarget;

    invoke-virtual {p0, p1, v1}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z

    move-result v1

    return v1
.end method

.method public addToSync(ILandroid/window/SurfaceSyncer$SyncTarget;)Z
    .registers 5

    invoke-direct {p0, p1}, Landroid/window/SurfaceSyncer;->getAndValidateSyncSet(I)Landroid/window/SurfaceSyncer$SyncSet;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-virtual {v0, p2}, Landroid/window/SurfaceSyncer$SyncSet;->addSyncableSurface(Landroid/window/SurfaceSyncer$SyncTarget;)Z

    move-result v1

    return v1
.end method

.method public addTransactionToSync(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/window/SurfaceSyncer;->getAndValidateSyncSet(I)Landroid/window/SurfaceSyncer$SyncSet;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Landroid/window/SurfaceSyncer$SyncSet;->addTransactionToSync(Landroid/view/SurfaceControl$Transaction;)V

    :cond_9
    return-void
.end method

.method synthetic lambda$setupSync$1$android-window-SurfaceSyncer(ILjava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public markSyncReady(I)V
    .registers 6

    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SurfaceSyncer$SyncSet;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2b

    if-nez v1, :cond_27

    const-string v0, "SurfaceSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find syncSet for syncId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_27
    invoke-virtual {v1}, Landroid/window/SurfaceSyncer$SyncSet;->markSyncReady()V

    return-void

    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public merge(IILandroid/window/SurfaceSyncer;)V
    .registers 6

    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SurfaceSyncer$SyncSet;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    invoke-direct {p3, p2}, Landroid/window/SurfaceSyncer;->getAndValidateSyncSet(I)Landroid/window/SurfaceSyncer$SyncSet;

    move-result-object v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-virtual {v1, v0}, Landroid/window/SurfaceSyncer$SyncSet;->merge(Landroid/window/SurfaceSyncer$SyncSet;)V

    return-void

    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public setupSync(Ljava/lang/Runnable;)I
    .registers 4

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Landroid/os/Handler;)V

    invoke-virtual {p0, v1}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/util/function/Consumer;)I

    move-result v1

    return v1
.end method

.method public setupSync(Ljava/util/function/Consumer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/SurfaceSyncer;->mSyncSetLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/window/SurfaceSyncer;->mIdCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/window/SurfaceSyncer;->mIdCounter:I

    new-instance v2, Landroid/window/SurfaceSyncer$SyncSet;

    new-instance v3, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, p1}, Landroid/window/SurfaceSyncer$$ExternalSyntheticLambda1;-><init>(Landroid/window/SurfaceSyncer;ILjava/util/function/Consumer;)V

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroid/window/SurfaceSyncer$SyncSet;-><init>(ILjava/util/function/Consumer;Landroid/window/SurfaceSyncer$SyncSet-IA;)V

    iget-object v3, p0, Landroid/window/SurfaceSyncer;->mSyncSets:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return v1

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
