# classes4.dex

.class public final Lcom/android/modules/utils/SynchronousResultReceiver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;,
        Lcom/android/modules/utils/SynchronousResultReceiver$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/modules/utils/SynchronousResultReceiver<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final QUEUE_THRESHOLD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SynchronousResultReceiver"

.field private static final sAvailableReceivers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/android/modules/utils/SynchronousResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mIsCompleted:Z

.field private final mLocal:Z

.field mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;


# direct methods
.method static bridge synthetic -$$Nest$mgetFuture(Lcom/android/modules/utils/SynchronousResultReceiver;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sAvailableReceivers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$1;

    invoke-direct {v0}, Lcom/android/modules/utils/SynchronousResultReceiver$1;-><init>()V

    sput-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mLocal:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mLocal:Z

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/modules/utils/ISynchronousResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/modules/utils/ISynchronousResultReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/modules/utils/SynchronousResultReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private complete(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "TT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    if-nez v0, :cond_29

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    iget-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mLocal:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_13
    monitor-enter p0

    :try_start_14
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_26

    if-eqz v0, :cond_25

    :try_start_19
    invoke-interface {v0, p1}, Lcom/android/modules/utils/ISynchronousResultReceiver;->send(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_25

    :catch_1d
    move-exception v1

    const-string v2, "SynchronousResultReceiver"

    const-string v3, "Failed to complete future"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    :goto_25
    return-void

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Receiver has already been completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get()Lcom/android/modules/utils/SynchronousResultReceiver;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/modules/utils/SynchronousResultReceiver<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->sAvailableReceivers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    invoke-direct {v1}, Lcom/android/modules/utils/SynchronousResultReceiver;-><init>()V

    monitor-exit v0

    return-object v1

    :cond_12
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    invoke-direct {v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->resetLocked()V

    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private getFuture()Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "TT;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private releaseLocked()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->sAvailableReceivers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_f

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private resetLocked()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mIsCompleted:Z

    return-void
.end method


# virtual methods
.method public awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            ")",
            "Lcom/android/modules/utils/SynchronousResultReceiver$Result<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "Null timeout is not allowed"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    move-object v2, p1

    :goto_a
    invoke-virtual {v2}, Ljava/time/Duration;->isNegative()Z

    move-result v3

    if-nez v3, :cond_44

    :try_start_10
    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->getFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    sget-object v4, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_23
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_23} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_23} :catch_2b

    :try_start_23
    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->releaseLocked()V

    monitor-exit v4

    return-object v3

    :catchall_28
    move-exception v5

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v5
    :try_end_2b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2a .. :try_end_2b} :catch_3b
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v3

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/time/Duration;->ofNanos(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/time/Duration;->minus(Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v2

    goto :goto_a

    :catch_3b
    move-exception v3

    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Error receiving response"

    invoke-direct {v4, v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_44
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->sLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_47
    invoke-direct {p0}, Lcom/android/modules/utils/SynchronousResultReceiver;->releaseLocked()V

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_51

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v3

    :catchall_51
    move-exception v4

    :try_start_52
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v4
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public propagateException(Ljava/lang/RuntimeException;)V
    .registers 3

    const-string v0, "RuntimeException cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    invoke-direct {v0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;-><init>(Ljava/lang/RuntimeException;)V

    invoke-direct {p0, v0}, Lcom/android/modules/utils/SynchronousResultReceiver;->complete(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V

    return-void
.end method

.method public send(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    invoke-direct {v0, p1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/modules/utils/SynchronousResultReceiver;->complete(Lcom/android/modules/utils/SynchronousResultReceiver$Result;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    if-nez v0, :cond_d

    new-instance v0, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver;-><init>(Lcom/android/modules/utils/SynchronousResultReceiver;Lcom/android/modules/utils/SynchronousResultReceiver$MyResultReceiver-IA;)V

    iput-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    :cond_d
    iget-object v0, p0, Lcom/android/modules/utils/SynchronousResultReceiver;->mReceiver:Lcom/android/modules/utils/ISynchronousResultReceiver;

    invoke-interface {v0}, Lcom/android/modules/utils/ISynchronousResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method
