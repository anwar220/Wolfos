# classes4.dex

.class Landroid/window/SurfaceSyncer$SyncSet;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SurfaceSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncSet"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMergedSyncSets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/window/SurfaceSyncer$SyncSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSyncs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncId:I

.field private mSyncReady:Z

.field private mSyncRequestCompleteCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncTargets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/window/SurfaceSyncer$SyncTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Landroid/window/SurfaceSyncer$SyncSet;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingSyncs(Landroid/window/SurfaceSyncer$SyncSet;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mPendingSyncs:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTransaction(Landroid/window/SurfaceSyncer$SyncSet;)Landroid/view/SurfaceControl$Transaction;
    .registers 1

    iget-object p0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckIfSyncIsComplete(Landroid/window/SurfaceSyncer$SyncSet;)V
    .registers 1

    invoke-direct {p0}, Landroid/window/SurfaceSyncer$SyncSet;->checkIfSyncIsComplete()V

    return-void
.end method

.method private constructor <init>(ILjava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mPendingSyncs:Ljava/util/Set;

    invoke-static {}, Landroid/window/SurfaceSyncer;->-$$Nest$sfgetsTransactionFactory()Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncTargets:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mMergedSyncSets:Ljava/util/Set;

    iput p1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncId:I

    iput-object p2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncRequestCompleteCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/function/Consumer;Landroid/window/SurfaceSyncer$SyncSet-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/window/SurfaceSyncer$SyncSet;-><init>(ILjava/util/function/Consumer;)V

    return-void
.end method

.method private checkIfSyncIsComplete()V
    .registers 3

    iget-boolean v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncReady:Z

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mPendingSyncs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mMergedSyncSets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3b

    :cond_15
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncTargets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SurfaceSyncer$SyncTarget;

    invoke-interface {v1}, Landroid/window/SurfaceSyncer$SyncTarget;->onSyncComplete()V

    goto :goto_1b

    :cond_2b
    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncTargets:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncRequestCompleteCallback:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mFinished:Z

    return-void

    :cond_3b
    :goto_3b
    return-void
.end method

.method static synthetic lambda$updateCallback$0(Ljava/util/function/Consumer;Ljava/util/function/Consumer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method addSyncableSurface(Landroid/window/SurfaceSyncer$SyncTarget;)Z
    .registers 7

    new-instance v0, Landroid/window/SurfaceSyncer$SyncSet$1;

    invoke-direct {v0, p0}, Landroid/window/SurfaceSyncer$SyncSet$1;-><init>(Landroid/window/SurfaceSyncer$SyncSet;)V

    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-boolean v2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncReady:Z

    if-eqz v2, :cond_2f

    const-string v2, "SurfaceSyncer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was already marked as ready. No more SyncTargets can be added."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    monitor-exit v1

    return v2

    :cond_2f
    iget-object v2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mPendingSyncs:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncTargets:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_47

    invoke-interface {p1, v0}, Landroid/window/SurfaceSyncer$SyncTarget;->onReadyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    const/4 v1, 0x1

    return v1

    :catchall_47
    move-exception v2

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v2
.end method

.method addTransactionToSync(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method synthetic lambda$merge$1$android-window-SurfaceSyncer$SyncSet(Landroid/window/SurfaceSyncer$SyncSet;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mMergedSyncSets:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/window/SurfaceSyncer$SyncSet;->checkIfSyncIsComplete()V

    monitor-exit v0

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method markSyncReady()V
    .registers 3

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncReady:Z

    invoke-direct {p0}, Landroid/window/SurfaceSyncer$SyncSet;->checkIfSyncIsComplete()V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public merge(Landroid/window/SurfaceSyncer$SyncSet;)V
    .registers 4

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mMergedSyncSets:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    new-instance v0, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda0;-><init>(Landroid/window/SurfaceSyncer$SyncSet;Landroid/window/SurfaceSyncer$SyncSet;)V

    invoke-virtual {p1, v0}, Landroid/window/SurfaceSyncer$SyncSet;->updateCallback(Ljava/util/function/Consumer;)V

    return-void

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public updateCallback(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/window/SurfaceSyncer$SyncSet;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mFinished:Z

    if-eqz v1, :cond_2f

    const-string v1, "SurfaceSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to merge SyncSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when sync is already complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2f
    iget-object v1, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncRequestCompleteCallback:Ljava/util/function/Consumer;

    new-instance v2, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/window/SurfaceSyncer$SyncSet$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v2, p0, Landroid/window/SurfaceSyncer$SyncSet;->mSyncRequestCompleteCallback:Ljava/util/function/Consumer;

    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method
