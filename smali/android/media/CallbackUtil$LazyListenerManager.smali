# classes2.dex

.class Landroid/media/CallbackUtil$LazyListenerManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/CallbackUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyListenerManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

.field private final mListenerLock:Ljava/lang/Object;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$addListener$0(Landroid/media/CallbackUtil$DispatcherStub;)V
    .registers 2

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/media/CallbackUtil$DispatcherStub;->register(Z)V

    return-void
.end method

.method static synthetic lambda$removeListener$1(Landroid/media/CallbackUtil$DispatcherStub;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/media/CallbackUtil$DispatcherStub;->register(Z)V

    return-void
.end method


# virtual methods
.method addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TT;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/media/CallbackUtil$DispatcherStub;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v4, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    new-instance v7, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda0;-><init>()V

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Landroid/media/CallbackUtil;->addListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/CallbackUtil$DispatcherStub;

    iput-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method

.method callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/CallbackUtil$CallbackMethod<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Landroid/media/CallbackUtil;->callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method removeListener(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    new-instance v3, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/CallbackUtil$LazyListenerManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p2, p1, v1, v2, v3}, Landroid/media/CallbackUtil;->removeListener(Ljava/lang/String;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/function/Consumer;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mListeners:Ljava/util/ArrayList;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/media/CallbackUtil$DispatcherStub;

    iput-object v2, p0, Landroid/media/CallbackUtil$LazyListenerManager;->mDispatcherStub:Landroid/media/CallbackUtil$DispatcherStub;

    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method
