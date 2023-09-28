# classes3.dex

.class Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;
.super Landroid/os/incremental/IStorageLoadingProgressListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/IncrementalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingProgressCallbacks"
.end annotation


# instance fields
.field private final mCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageLoadingProgressCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/incremental/IStorageLoadingProgressListener$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanUpCallbacks(Landroid/os/incremental/IncrementalStorage;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v0

    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_1a

    if-nez v2, :cond_13

    return-void

    :cond_13
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->kill()V

    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->unregisterLoadingProgressListener()Z

    return-void

    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public onStorageLoadingProgressChanged(IF)V
    .registers 8

    iget-object v0, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_29

    if-nez v1, :cond_f

    return-void

    :cond_f
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_25

    nop

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageLoadingProgressCallback;

    :try_start_1d
    invoke-interface {v3, p2}, Landroid/content/pm/IPackageLoadingProgressCallback;->onPackageLoadingProgressChanged(F)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    move-exception v4

    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_25
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public registerCallback(Landroid/os/incremental/IncrementalStorage;Landroid/content/pm/IPackageLoadingProgressCallback;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/os/incremental/IncrementalStorage;->getId()I

    move-result v0

    iget-object v1, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_1c

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Landroid/os/incremental/IncrementalManager$LoadingProgressCallbacks;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1c
    invoke-virtual {v2, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_28

    monitor-exit v1

    return v4

    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_2e

    invoke-virtual {p1, p0}, Landroid/os/incremental/IncrementalStorage;->registerLoadingProgressListener(Landroid/os/incremental/IStorageLoadingProgressListener;)Z

    move-result v1

    return v1

    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2
.end method
