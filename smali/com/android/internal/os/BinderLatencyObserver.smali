# classes4.dex

.class public Lcom/android/internal/os/BinderLatencyObserver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;,
        Lcom/android/internal/os/BinderLatencyObserver$Injector;
    }
.end annotation


# static fields
.field public static final BUCKET_COUNT_DEFAULT:I = 0x64

.field public static final BUCKET_SCALE_FACTOR_DEFAULT:F = 1.125f

.field public static final FIRST_BUCKET_SIZE_DEFAULT:I = 0x5

.field private static final LAST_HISTOGRAM_BUFFER_SIZE_BYTES:I = 0x3e8

.field private static final MAX_ATOM_SIZE_BYTES:I = 0xfe0

.field public static final PERIODIC_SAMPLING_INTERVAL_DEFAULT:I = 0xa

.field public static final SHARDING_MODULO_DEFAULT:I = 0x1

.field public static final STATSD_PUSH_INTERVAL_MINUTES_DEFAULT:I = 0x168

.field private static final TAG:Ljava/lang/String; = "BinderLatencyObserver"


# instance fields
.field private mBucketCount:I

.field private mBucketScaleFactor:F

.field private mFirstBucketSize:I

.field private mLatencyBuckets:Lcom/android/internal/os/BinderLatencyBuckets;

.field private final mLatencyHistograms:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;",
            "[I>;"
        }
    .end annotation
.end field

.field private final mLatencyObserverHandler:Landroid/os/Handler;

.field private mLatencyObserverRunnable:Ljava/lang/Runnable;

.field private final mLock:Ljava/lang/Object;

.field private mPeriodicSamplingInterval:I

.field private final mProcessSource:I

.field private final mRandom:Ljava/util/Random;

.field private mShardingModulo:I

.field private mShardingOffset:I

.field private mStatsdPushIntervalMinutes:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLatencyHistograms(Lcom/android/internal/os/BinderLatencyObserver;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/internal/os/BinderLatencyObserver;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfillApiStatsProto(Lcom/android/internal/os/BinderLatencyObserver;Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;Ljava/lang/String;[I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/BinderLatencyObserver;->fillApiStatsProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;Ljava/lang/String;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnoteLatencyDelayed(Lcom/android/internal/os/BinderLatencyObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/os/BinderLatencyObserver;->noteLatencyDelayed()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BinderLatencyObserver$Injector;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    const/high16 v0, 0x3f900000  # 1.125f

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    const/16 v0, 0x168

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mStatsdPushIntervalMinutes:I

    new-instance v0, Lcom/android/internal/os/BinderLatencyObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BinderLatencyObserver$1;-><init>(Lcom/android/internal/os/BinderLatencyObserver;)V

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/android/internal/os/BinderLatencyObserver$Injector;->getRandomGenerator()Ljava/util/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mRandom:Ljava/util/Random;

    invoke-virtual {p1}, Lcom/android/internal/os/BinderLatencyObserver$Injector;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/os/BinderLatencyBuckets;

    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    iget v3, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    iget v4, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/os/BinderLatencyBuckets;-><init>(IIF)V

    iput-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyBuckets:Lcom/android/internal/os/BinderLatencyBuckets;

    iput p2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mProcessSource:I

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingOffset:I

    invoke-direct {p0}, Lcom/android/internal/os/BinderLatencyObserver;->noteLatencyDelayed()V

    return-void
.end method

.method private fillApiStatsProto(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;Ljava/lang/String;[I)V
    .registers 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    if-ge v1, v2, :cond_f

    aget v3, p4, v1

    if-eqz v3, :cond_c

    move v0, v1

    goto :goto_f

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    :goto_f
    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    :goto_13
    if-ltz v2, :cond_1e

    aget v3, p4, v2

    if-eqz v3, :cond_1b

    move v1, v2

    goto :goto_1e

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_1e
    :goto_1e
    const-wide v2, 0x20b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10e00000001L

    iget v8, p0, Lcom/android/internal/os/BinderLatencyObserver;->mProcessSource:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10900000003L

    invoke-virtual {p2}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->getBinderClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10900000005L

    invoke-virtual {p1, v6, v7, p3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10500000002L

    invoke-virtual {p1, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move v6, v0

    :goto_5e
    if-gt v6, v1, :cond_6d

    const-wide v7, 0x20500000003L

    aget v9, p4, v6

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5e

    :cond_6d
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private noteLatencyDelayed()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mStatsdPushIntervalMinutes:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public callEnded(Lcom/android/internal/os/BinderInternal$CallSession;)V
    .registers 12

    if-eqz p1, :cond_5d

    iget-boolean v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->exceptionThrown:Z

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->shouldKeepSample()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5d

    :cond_d
    iget-object v0, p1, Lcom/android/internal/os/BinderInternal$CallSession;->binderClass:Ljava/lang/Class;

    iget v1, p1, Lcom/android/internal/os/BinderInternal$CallSession;->transactionCode:I

    invoke-static {v0, v1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->create(Ljava/lang/Class;I)Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderLatencyObserver;->shouldCollect(Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;)Z

    move-result v1

    if-nez v1, :cond_1c

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->getElapsedRealtimeMicro()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/internal/os/BinderInternal$CallSession;->timeStarted:J

    sub-long v3, v1, v3

    iget-object v5, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyBuckets:Lcom/android/internal/os/BinderLatencyBuckets;

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v3, v6

    const v7, 0x7fffffff

    if-lez v6, :cond_32

    move v6, v7

    goto :goto_33

    :cond_32
    long-to-int v6, v3

    :goto_33
    invoke-virtual {v5, v6}, Lcom/android/internal/os/BinderLatencyBuckets;->sampleToBucket(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3a
    iget-object v8, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    if-nez v8, :cond_4e

    iget v9, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    new-array v9, v9, [I

    move-object v8, v9

    iget-object v9, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    aget v9, v8, v5

    if-ge v9, v7, :cond_58

    aget v7, v8, v5

    add-int/lit8 v7, v7, 0x1

    aput v7, v8, v5

    :cond_58
    monitor-exit v6

    return-void

    :catchall_5a
    move-exception v7

    monitor-exit v6
    :try_end_5c
    .catchall {:try_start_3a .. :try_end_5c} :catchall_5a

    throw v7

    :cond_5d
    :goto_5d
    return-void
.end method

.method protected getElapsedRealtimeMicro()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getLatencyHistograms()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    return-object v0
.end method

.method protected getMaxAtomSizeBytes()I
    .registers 2

    const/16 v0, 0xfe0

    return v0
.end method

.method public getProcessSource()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mProcessSource:I

    return v0
.end method

.method public getStatsdPushRunnable()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyObserverRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public reset()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyHistograms:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-direct {p0}, Lcom/android/internal/os/BinderLatencyObserver;->noteLatencyDelayed()V

    return-void

    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setHistogramBucketsParams(IIF)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    if-ne p1, v1, :cond_11

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    if-ne p2, v1, :cond_11

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_21

    :cond_11
    iput p1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    iput p2, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    iput p3, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    new-instance v1, Lcom/android/internal/os/BinderLatencyBuckets;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/os/BinderLatencyBuckets;-><init>(IIF)V

    iput-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLatencyBuckets:Lcom/android/internal/os/BinderLatencyBuckets;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public setPushInterval(I)V
    .registers 5

    if-gtz p1, :cond_1b

    const-string v0, "BinderLatencyObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid push interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mStatsdPushIntervalMinutes:I

    if-eq p1, v1, :cond_27

    iput p1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mStatsdPushIntervalMinutes:I

    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setSamplingInterval(I)V
    .registers 5

    if-gtz p1, :cond_1b

    const-string v0, "BinderLatencyObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sampling interval (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    if-eq p1, v1, :cond_27

    iput p1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setShardingModulo(I)V
    .registers 5

    if-gtz p1, :cond_1b

    const-string v0, "BinderLatencyObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored invalid sharding modulo (value must be positive): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1e
    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    if-eq p1, v1, :cond_2f

    iput p1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    iget-object v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mRandom:Ljava/util/Random;

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingOffset:I

    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_31

    throw v1
.end method

.method protected shouldCollect(Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/android/internal/os/BinderLatencyObserver$LatencyDims;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingOffset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected shouldKeepSample()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iget v1, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method protected writeAtomToStatsd(Landroid/util/proto/ProtoOutputStream;)V
    .registers 9

    nop

    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    iget v0, p0, Lcom/android/internal/os/BinderLatencyObserver;->mPeriodicSamplingInterval:I

    int-to-float v2, v0

    iget v3, p0, Lcom/android/internal/os/BinderLatencyObserver;->mShardingModulo:I

    iget v4, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketCount:I

    iget v5, p0, Lcom/android/internal/os/BinderLatencyObserver;->mFirstBucketSize:I

    iget v6, p0, Lcom/android/internal/os/BinderLatencyObserver;->mBucketScaleFactor:F

    const/16 v0, 0x156

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[BFIIIF)V

    return-void
.end method
