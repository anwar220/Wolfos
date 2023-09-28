# classes3.dex

.class public Landroid/util/MtkBoostFramework;
.super Ljava/lang/Object;


# static fields
.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.mediatek.boostframework.Performance"

.field private static final PERF_LOCK_ACQUIRE:Ljava/lang/String; = "perfLockAcquire"

.field private static final PERF_LOCK_RELEASE:Ljava/lang/String; = "perfLockRelease"

.field private static final PERF_LOCK_RELEASE_HANDLER:Ljava/lang/String; = "perfLockReleaseHandler"

.field private static final SLOW_OPERATION_THRESHOLD_MS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MtkBoostFramework"

.field private static sAcquireFunc:Ljava/lang/reflect/Method;

.field private static sIsLoaded:Z

.field private static sPerfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sReleaseFunc:Ljava/lang/reflect/Method;

.field private static sReleaseHandlerFunc:Ljava/lang/reflect/Method;


# instance fields
.field private mPerf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/MtkBoostFramework;->sIsLoaded:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    sput-object v0, Landroid/util/MtkBoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    sput-object v0, Landroid/util/MtkBoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    sput-object v0, Landroid/util/MtkBoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/util/MtkBoostFramework;->initFunctions()V

    :try_start_9
    sget-object v0, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    :cond_13
    goto :goto_2d

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception_2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MtkBoostFramework"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method private checkTime(JLjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x14

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Slow Operation: MtkBoostFramework %s took %sms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkBoostFramework"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method private initFunctions()V
    .registers 7

    const-class v0, Landroid/util/MtkBoostFramework;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroid/util/MtkBoostFramework;->sIsLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_65

    if-nez v1, :cond_63

    const/4 v1, 0x1

    :try_start_8
    const-string v2, "com.mediatek.boostframework.Performance"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, [I

    aput-object v3, v2, v1

    sget-object v3, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfLockAcquire"

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/MtkBoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Class;

    move-object v2, v3

    sget-object v3, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v5, "perfLockRelease"

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/MtkBoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    move-object v2, v3

    sget-object v3, Landroid/util/MtkBoostFramework;->sPerfClass:Ljava/lang/Class;

    const-string/jumbo v4, "perfLockRelease"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/util/MtkBoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_48
    .catchall {:try_start_8 .. :try_end_47} :catchall_65

    goto :goto_61

    :catch_48
    move-exception v2

    :try_start_49
    const-string v3, "MtkBoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception_1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    sput-boolean v1, Landroid/util/MtkBoostFramework;->sIsLoaded:Z

    :cond_63
    monitor-exit v0

    return-void

    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_65

    throw v1
.end method


# virtual methods
.method public varargs perfLockAcquire(I[I)I
    .registers 11

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/MtkBoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Landroid/util/MtkBoostFramework;->sAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "perfLockAcquire"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/MtkBoostFramework;->checkTime(JLjava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2d

    move v0, v4

    :cond_2c
    goto :goto_47

    :catch_2d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "perfLockAcquire "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkBoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return v0
.end method

.method public perfLockRelease()I
    .registers 7

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/MtkBoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Landroid/util/MtkBoostFramework;->sReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "perfLockRelease"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/MtkBoostFramework;->checkTime(JLjava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move v0, v4

    :cond_22
    goto :goto_3d

    :catch_23
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "perfLockRelease "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkBoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return v0
.end method

.method public perfLockReleaseHandler(I)I
    .registers 10

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Landroid/util/MtkBoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-object v3, Landroid/util/MtkBoostFramework;->sReleaseHandlerFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/MtkBoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "perfLockReleaseHandler"

    invoke-direct {p0, v1, v2, v4}, Landroid/util/MtkBoostFramework;->checkTime(JLjava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a

    move v0, v4

    :cond_29
    goto :goto_44

    :catch_2a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "perfLockReleaseHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtkBoostFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return v0
.end method
