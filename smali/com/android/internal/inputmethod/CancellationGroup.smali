# classes4.dex

.class public final Lcom/android/internal/inputmethod/CancellationGroup;
.super Ljava/lang/Object;


# instance fields
.field private mCanceled:Z

.field private mFutureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;>;"
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

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    return-void
.end method

.method static synthetic lambda$cancelAll$0(Ljava/util/concurrent/CompletableFuture;)V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    return-void
.end method


# virtual methods
.method public cancelAll()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    new-instance v2, Lcom/android/internal/inputmethod/CancellationGroup$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/inputmethod/CancellationGroup$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public isCanceled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method tryRegisterFutureOrCancelImmediately(Ljava/util/concurrent/CompletableFuture;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mCanceled:Z

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    monitor-exit v0

    return v1

    :cond_d
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_19

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    :cond_19
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return v2

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/inputmethod/CancellationGroup;->mFutureList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

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
