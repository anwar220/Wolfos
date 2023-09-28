# classes.dex

.class public final Landroid/app/PropertyInvalidatedCache$AutoCorker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PropertyInvalidatedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutoCorker"
.end annotation


# static fields
.field public static final DEFAULT_AUTO_CORK_DELAY_MS:I = 0x32


# instance fields
.field private final mAutoCorkDelayMs:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPropertyName:Ljava/lang/String;

.field private mUncorkDeadlineMs:J


# direct methods
.method static bridge synthetic -$$Nest$mhandleMessage(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x32

    invoke-direct {p0, p1, v0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    iput p2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    return-void
.end method

.method private getHandlerLocked()Landroid/os/Handler;
    .registers 3

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    new-instance v0, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/PropertyInvalidatedCache$AutoCorker$1;-><init>(Landroid/app/PropertyInvalidatedCache$AutoCorker;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    :cond_f
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 9

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_29

    iget v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    int-to-long v3, v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getHandlerLocked()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    iget-wide v5, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    monitor-exit v0

    return-void

    :cond_29
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/app/PropertyInvalidatedCache;->uncorkInvalidations(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method


# virtual methods
.method public autoCork()V
    .registers 10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-wide v1, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-ltz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget v7, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mAutoCorkDelayMs:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    if-nez v1, :cond_36

    invoke-direct {p0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->getHandlerLocked()Landroid/os/Handler;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mUncorkDeadlineMs:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    iget-object v2, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    invoke-static {v2}, Landroid/app/PropertyInvalidatedCache;->corkInvalidations(Ljava/lang/String;)V

    goto :goto_61

    :cond_36
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsCorkLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3b
    .catchall {:try_start_f .. :try_end_3b} :catchall_66

    :try_start_3b
    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsCorkedInvalidates()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$sfgetsCorkedInvalidates()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Landroid/app/PropertyInvalidatedCache$AutoCorker;->mPropertyName:Ljava/lang/String;

    const-wide/16 v7, 0x1

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v2
    :try_end_61
    .catchall {:try_start_3b .. :try_end_61} :catchall_63

    :goto_61
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_66

    return-void

    :catchall_63
    move-exception v3

    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v3

    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_66

    throw v1
.end method
