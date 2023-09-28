# classes4.dex

.class public abstract Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;
.super Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/infra/AbstractRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PendingRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/internal/infra/AbstractRemoteService<",
        "TS;TI;>;I::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest<",
        "TS;TI;>;"
    }
.end annotation


# instance fields
.field private final mServiceHandler:Landroid/os/Handler;

.field protected final mTimeoutTrigger:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;-><init>(Lcom/android/internal/infra/AbstractRemoteService;)V

    iget-object v0, p1, Lcom/android/internal/infra/AbstractRemoteService;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;Lcom/android/internal/infra/AbstractRemoteService;)V

    iput-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService;->getRemoteRequestMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-internal-infra-AbstractRemoteService$PendingRequest(Lcom/android/internal/infra/AbstractRemoteService;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mCancelled:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mCompleted:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_4a

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AbstractRemoteService;

    if-eqz v0, :cond_41

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timed out after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/infra/AbstractRemoteService;->getRemoteRequestMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Lcom/android/internal/infra/AbstractRemoteService;->finishRequest(Lcom/android/internal/infra/AbstractRemoteService$BasePendingRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V

    goto :goto_49

    :cond_41
    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "timed out (no service)"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void

    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method final onCancel()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method final onFinished()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/infra/AbstractRemoteService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract onTimeout(Lcom/android/internal/infra/AbstractRemoteService;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation
.end method
