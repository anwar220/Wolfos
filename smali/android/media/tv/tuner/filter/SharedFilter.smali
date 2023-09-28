# classes2.dex

.class public final Landroid/media/tv/tuner/filter/SharedFilter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SharedFilter$Status;
    }
.end annotation


# static fields
.field public static final STATUS_INACCESSIBLE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "SharedFilter"


# instance fields
.field private mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

.field private mCallbackLock:Ljava/lang/Object;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mIsAccessible:Z

.field private mIsClosed:Z

.field private mLock:Ljava/lang/Object;

.field private mNativeContext:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private native nativeFlushSharedFilter()I
.end method

.method private native nativeSharedClose()I
.end method

.method private native nativeSharedRead([BJJ)I
.end method

.method private native nativeStartSharedFilter()I
.end method

.method private native nativeStopSharedFilter()I
.end method

.method private onFilterEvent([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_14

    new-instance v2, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_27

    :cond_14
    array-length v1, p1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_24

    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private onFilterStatus(I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x80

    if-ne p1, v1, :cond_a

    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_23

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1e

    new-instance v2, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/filter/SharedFilter;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    monitor-exit v1

    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_e .. :try_end_22} :catchall_20

    throw v0

    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    const/4 v2, 0x0

    :try_start_d
    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1c

    :try_start_12
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeSharedClose()I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    return-void

    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v2

    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public flush()I
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeFlushSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public getCallback()Landroid/media/tv/tuner/filter/SharedFilterCallback;
    .registers 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method synthetic lambda$onFilterEvent$1$android-media-tv-tuner-filter-SharedFilter([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_b

    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilterCallback;->onFilterEvent(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    goto :goto_1e

    :cond_b
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1e

    aget-object v3, p1, v2

    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_1b

    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1e
    :goto_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method synthetic lambda$onFilterStatus$0$android-media-tv-tuner-filter-SharedFilter(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_a

    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/SharedFilter;I)V

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

.method public read([BJJ)I
    .registers 15

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    array-length v1, p1

    int-to-long v1, v1

    sub-long/2addr v1, p2

    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_21

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    :try_start_1b
    invoke-direct/range {v3 .. v8}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeSharedRead([BJJ)I

    move-result p4

    monitor-exit v0

    return p4

    :catchall_21
    move-exception v1

    move-wide v7, p4

    move-object p4, v1

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_26

    throw p4

    :catchall_26
    move-exception p4

    goto :goto_24
.end method

.method public setCallback(Landroid/media/tv/tuner/filter/SharedFilterCallback;Ljava/util/concurrent/Executor;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    iput-object p2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public start()I
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeStartSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public stop()I
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeStopSharedFilter()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method
