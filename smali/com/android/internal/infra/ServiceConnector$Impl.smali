# classes4.dex

.class public Lcom/android/internal/infra/ServiceConnector$Impl;
.super Ljava/util/ArrayDeque;

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/ServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Impl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/util/ArrayDeque<",
        "Lcom/android/internal/infra/ServiceConnector$Job<",
        "TI;*>;>;",
        "Lcom/android/internal/infra/ServiceConnector<",
        "TI;>;",
        "Landroid/content/ServiceConnection;",
        "Landroid/os/IBinder$DeathRecipient;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_DISCONNECT_TIMEOUT_MS:J = 0x3a98L

.field private static final DEFAULT_REQUEST_TIMEOUT_MS:J = 0x7530L

.field static final LOG_TAG:Ljava/lang/String; = "ServiceConnector.Impl"


# instance fields
.field private final mBinderAsInterface:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;"
        }
    .end annotation
.end field

.field private mBinding:Z

.field private final mBindingFlags:I

.field protected final mContext:Landroid/content/Context;

.field protected final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;>;"
        }
    .end annotation
.end field

.field private volatile mService:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TI;>;"
        }
    .end annotation
.end field

.field private volatile mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;"
        }
    .end annotation
.end field

.field protected final mTimeoutDisconnect:Ljava/lang/Runnable;

.field private mUnbinding:Z

.field private final mUnfinishedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmQueue(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/Queue;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnfinishedJobs(Lcom/android/internal/infra/ServiceConnector$Impl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeScheduleUnbindTimeout(Lcom/android/internal/infra/ServiceConnector$Impl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/util/function/Function<",
            "Landroid/os/IBinder;",
            "TI;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    iput-boolean v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    iput-object p5, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getJobHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BASE:",
            "Ljava/lang/Object;",
            "T:TBASE;>(TBASE;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method private dispatchOnBinderDied()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onBinderDied()V

    :cond_7
    return-void
.end method

.method private dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    if-eqz v0, :cond_d

    if-eqz p2, :cond_a

    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onConnected(Landroid/os/IInterface;)V

    goto :goto_d

    :cond_a
    invoke-interface {v0, p1}, Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;->onDisconnected(Landroid/os/IInterface;)V

    :cond_d
    :goto_d
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    return-void
.end method

.method private enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to post a job to handler. Likely "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is exiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_2d
    return-void
.end method

.method private enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;Lcom/android/internal/infra/ServiceConnector$Job;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private isBound()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$connect$0(Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method private logTrace()V
    .registers 4

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ServiceConnector.Impl"

    const-string v2, "See stacktrace"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private maybeScheduleUnbindTimeout()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->scheduleUnbindTimeout()V

    :cond_13
    return-void
.end method

.method private onTimeout()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    return-void
.end method

.method private processQueue()V
    .registers 6

    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    if-eqz v0, :cond_37

    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    :try_start_13
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-nez v2, :cond_18

    return-void

    :cond_18
    invoke-interface {v1, v2}, Lcom/android/internal/infra/ServiceConnector$Job;->run(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v0, :cond_31

    iget-boolean v4, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    if-eqz v4, :cond_2e

    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    check-cast v4, Ljava/util/concurrent/CompletionStage;

    invoke-interface {v4, v0}, Ljava/util/concurrent/CompletionStage;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletionStage;

    goto :goto_31

    :cond_2e
    invoke-virtual {v0, v3}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_32

    :cond_31
    :goto_31
    goto :goto_36

    :catchall_32
    move-exception v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    :goto_36
    goto :goto_0

    :cond_37
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->maybeScheduleUnbindTimeout()V

    return-void
.end method

.method private scheduleUnbindTimeout()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->getAutoDisconnectTimeoutMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method private stateToString()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v0, :cond_7

    const-string v0, "Binding..."

    return-object v0

    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_e

    const-string v0, "Unbinding..."

    return-object v0

    :cond_e
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "Bound"

    return-object v0

    :cond_17
    const-string v0, "Unbound"

    return-object v0
.end method


# virtual methods
.method protected bindService(Landroid/content/ServiceConnection;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBindingFlags:I

    or-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method protected binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinderAsInterface:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    return-object v0
.end method

.method public binderDied()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->unbind()V

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnBinderDied()V

    return-void
.end method

.method protected cancelPendingJobs()V
    .registers 4

    :goto_0
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Job;

    move-object v1, v0

    if-eqz v0, :cond_1a

    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v0, :cond_19

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    :cond_19
    goto :goto_0

    :cond_1a
    return-void
.end method

.method protected cancelTimeout()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mTimeoutDisconnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "**>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-static {p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->castOrNull(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result v1

    :cond_f
    if-eqz v0, :cond_12

    goto :goto_2a

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Job failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ServiceConnector.Impl"

    invoke-static {v3, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void
.end method

.method public declared-synchronized connect()Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TI;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-nez v0, :cond_22

    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda0;-><init>()V

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->complete(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_1d
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {p0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "  "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "ServiceConnector:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v2, "userId: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Pending jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Unfinished async jobs: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is unbinding. Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_7e

    :cond_23
    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to queue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    goto :goto_7e

    :cond_47
    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->isBound()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    goto :goto_7e

    :cond_51
    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-nez v0, :cond_7e

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->bindService(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    goto :goto_7e

    :cond_61
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->completeExceptionally(Lcom/android/internal/infra/ServiceConnector$Job;Ljava/lang/Throwable;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method protected getJobHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getRequestTimeoutMs()J
    .registers 3

    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method synthetic lambda$enqueue$1$com-android-internal-infra-ServiceConnector$Impl(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueueJobThread(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderDied()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    const-string v1, "ServiceConnector.Impl"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring onServiceConnected due to ongoing unbinding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->binderAsInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    :try_start_26
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_48

    :catch_2a
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onServiceConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->processQueue()V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;Z)V"
        }
    .end annotation

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    :cond_e
    return-void
.end method

.method protected onServiceUnbound()V
    .registers 1

    return-void
.end method

.method public post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object v0

    return-object v0
.end method

.method public postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;>;)",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mAsync:Z

    invoke-direct {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    return-object v0
.end method

.method public bridge synthetic postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    move-result-object p1

    return-object p1
.end method

.method public postForResult(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "TI;TR;>;)",
            "Lcom/android/internal/infra/ServiceConnector$Impl<",
            "TI;>.CompletionAwareJob<TI;TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    invoke-direct {v0, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/ServiceConnector$Job;

    iput-object v1, v0, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->mDelegate:Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-direct {p0, v0}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;)V

    return-object v0
.end method

.method public run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->onTimeout()V

    return-void
.end method

.method public run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$VoidJob<",
            "TI;>;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->enqueue(Lcom/android/internal/infra/ServiceConnector$Job;)Z

    move-result v0

    return v0
.end method

.method public setServiceLifecycleCallbacks(Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
            "TI;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceLifecycleCallbacks:Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServiceConnector@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_5c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " pending job(s)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5c
    iget-object v1, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnfinishedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unfinished async job(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unbind()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/infra/ServiceConnector$Impl$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/infra/ServiceConnector$Impl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method unbindJobThread()V
    .registers 9

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelTimeout()V

    iget-object v0, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    :goto_c
    if-nez v3, :cond_12

    iget-boolean v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    if-eqz v4, :cond_33

    :cond_12
    :try_start_12
    iget-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_33

    :catch_1a
    move-exception v4

    const-string v5, "ServiceConnector.Impl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to unbind: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    const/4 v4, 0x0

    if-eqz v3, :cond_4b

    invoke-direct {p0, v0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->dispatchOnServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V

    :try_start_39
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_40
    .catch Ljava/util/NoSuchElementException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_49

    :catch_41
    move-exception v5

    const-string v6, "ServiceConnector.Impl"

    const-string v7, "death recipient already released"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_49
    iput-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mService:Landroid/os/IInterface;

    :cond_4b
    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mBinding:Z

    iput-boolean v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mUnbinding:Z

    monitor-enter p0

    :try_start_50
    iget-object v2, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    if-eqz v2, :cond_59

    invoke-virtual {v2, v1}, Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;->cancel(Z)Z

    iput-object v4, p0, Lcom/android/internal/infra/ServiceConnector$Impl;->mServiceConnectionFutureCache:Lcom/android/internal/infra/ServiceConnector$Impl$CompletionAwareJob;

    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_63

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    if-eqz v3, :cond_62

    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->onServiceUnbound()V

    :cond_62
    return-void

    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method
