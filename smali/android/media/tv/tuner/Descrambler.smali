# classes2.dex

.class public Landroid/media/tv/tuner/Descrambler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/Descrambler$PidType;
    }
.end annotation


# static fields
.field public static final PID_TYPE_MMTP:I = 0x2

.field public static final PID_TYPE_T:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Descrambler"


# instance fields
.field private mIsClosed:Z

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static isValidKeyToken([B)Z
    .registers 3

    array-length v0, p0

    if-eqz v0, :cond_b

    array-length v0, p0

    const/16 v1, 0x10

    if-le v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key token size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bit."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Descrambler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private native nativeAddPid(IILandroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native nativeClose()I
.end method

.method private native nativeRemovePid(IILandroid/media/tv/tuner/filter/Filter;)I
.end method

.method private native nativeSetKeyToken([B)I
.end method


# virtual methods
.method public addPid(IILandroid/media/tv/tuner/filter/Filter;)I
    .registers 7

    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/Descrambler;->nativeAddPid(IILandroid/media/tv/tuner/filter/Filter;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    invoke-direct {p0}, Landroid/media/tv/tuner/Descrambler;->nativeClose()I

    move-result v1

    if-eqz v1, :cond_15

    const-string v2, "Failed to close descrambler"

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->throwExceptionForResult(ILjava/lang/String;)V

    goto :goto_18

    :cond_15
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public removePid(IILandroid/media/tv/tuner/filter/Filter;)I
    .registers 7

    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/Descrambler;->nativeRemovePid(IILandroid/media/tv/tuner/filter/Filter;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public setKeyToken([B)I
    .registers 5

    iget-object v0, p0, Landroid/media/tv/tuner/Descrambler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "Descrambler"

    iget-boolean v2, p0, Landroid/media/tv/tuner/Descrambler;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    const-string v1, "key token must not be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Landroid/media/tv/tuner/Descrambler;->isValidKeyToken([B)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x4

    monitor-exit v0

    return v1

    :cond_18
    invoke-direct {p0, p1}, Landroid/media/tv/tuner/Descrambler;->nativeSetKeyToken([B)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method
