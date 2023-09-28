# classes4.dex

.class public Lcom/android/internal/os/KernelCpuProcStringReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    }
.end annotation


# static fields
.field private static final ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final ERROR_THRESHOLD:I = 0x5

.field private static final FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

.field private static final FRESHNESS:J = 0x1f4L

.field private static final MAX_BUFFER_SIZE:I = 0x100000

.field private static final PROC_UID_ACTIVE_TIME:Ljava/lang/String; = "/proc/uid_concurrent_active_time"

.field private static final PROC_UID_CLUSTER_TIME:Ljava/lang/String; = "/proc/uid_concurrent_policy_time"

.field private static final PROC_UID_FREQ_TIME:Ljava/lang/String; = "/proc/uid_time_in_state"

.field private static final PROC_UID_USER_SYS_TIME:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;


# instance fields
.field private mBuf:[C

.field private final mClock:Lcom/android/internal/os/Clock;

.field private mErrors:I

.field private final mFile:Ljava/nio/file/Path;

.field private mLastReadTime:J

.field private final mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private mSize:I

.field private final mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBuf(Lcom/android/internal/os/KernelCpuProcStringReader;)[C
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReadLock(Lcom/android/internal/os/KernelCpuProcStringReader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_time_in_state"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_concurrent_active_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_concurrent_policy_time"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader;

    const-string v1, "/proc/uid_cputime/show_uid_stat"

    invoke-direct {v0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/KernelCpuProcStringReader;-><init>(Ljava/lang/String;Lcom/android/internal/os/Clock;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/internal/os/Clock;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    iput-object p2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    return-void
.end method

.method public static asLongs(Ljava/nio/CharBuffer;[J)I
    .registers 13

    if-nez p0, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    :cond_b
    :goto_b
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_5b

    array-length v4, p1

    if-ge v1, v4, :cond_5b

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v7

    if-nez v7, :cond_2d

    const/16 v7, 0x20

    if-eq v4, v7, :cond_2d

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_2d

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, -0x2

    return v5

    :cond_2d
    cmp-long v7, v2, v5

    if-gez v7, :cond_3b

    invoke-static {v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v5

    if-eqz v5, :cond_b

    add-int/lit8 v5, v4, -0x30

    int-to-long v2, v5

    goto :goto_b

    :cond_3b
    invoke-static {v4}, Lcom/android/internal/os/KernelCpuProcStringReader;->isNumber(C)Z

    move-result v7

    if-eqz v7, :cond_53

    const-wide/16 v7, 0xa

    mul-long/2addr v7, v2

    int-to-long v9, v4

    add-long/2addr v7, v9

    const-wide/16 v9, 0x30

    sub-long v2, v7, v9

    cmp-long v5, v2, v5

    if-gez v5, :cond_b

    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v5, -0x3

    return v5

    :cond_53
    add-int/lit8 v5, v1, 0x1

    aput-wide v2, p1, v1

    const-wide/16 v2, -0x1

    move v1, v5

    goto :goto_b

    :cond_5b
    cmp-long v4, v2, v5

    if-ltz v4, :cond_64

    add-int/lit8 v4, v1, 0x1

    aput-wide v2, p1, v1

    move v1, v4

    :cond_64
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return v1
.end method

.method private dataValid()Z
    .registers 5

    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method static getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->ACTIVE_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->CLUSTER_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->FREQ_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method static getUserSysTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcStringReader;
    .registers 1

    sget-object v0, Lcom/android/internal/os/KernelCpuProcStringReader;->USER_SYS_TIME_READER:Lcom/android/internal/os/KernelCpuProcStringReader;

    return-object v0
.end method

.method private static isNumber(C)Z
    .registers 2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method public open()Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/KernelCpuProcStringReader;->open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    move-result-object v0

    return-object v0
.end method

.method public open(Z)Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;
    .registers 10

    iget v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    return-object v1

    :cond_7
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    goto :goto_44

    :cond_f
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuProcStringReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuProcStringReader;->dataValid()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    new-instance v0, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    iget v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V

    return-object v0

    :cond_44
    :goto_44
    const/4 v0, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    :try_start_4c
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-static {v3}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v3
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_52} :catch_101
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_4c .. :try_end_52} :catch_101
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_52} :catch_df
    .catchall {:try_start_4c .. :try_end_52} :catchall_dd

    :try_start_52
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    if-nez v4, :cond_5c

    const/16 v4, 0x400

    new-array v4, v4, [C

    iput-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    :cond_5c
    :goto_5c
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    array-length v5, v4

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/BufferedReader;->read([CII)I

    move-result v4

    move v5, v4

    if-ltz v4, :cond_af

    add-int/2addr v0, v5

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    array-length v6, v4

    if-ne v0, v6, :cond_5c

    array-length v6, v4

    const/high16 v7, 0x100000

    if-ne v6, v7, :cond_a1

    iget v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    sget-object v4, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proc file too large: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_52 .. :try_end_92} :catchall_d1

    nop

    if-eqz v3, :cond_98

    :try_start_95
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/io/FileNotFoundException; {:try_start_95 .. :try_end_98} :catch_101
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_95 .. :try_end_98} :catch_101
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_df
    .catchall {:try_start_95 .. :try_end_98} :catchall_dd

    :cond_98
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v1

    :cond_a1
    :try_start_a1
    array-length v6, v4

    shl-int/lit8 v6, v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mBuf:[C

    goto :goto_5c

    :cond_af
    iput v0, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mSize:I

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mLastReadTime:J

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    new-instance v4, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/os/KernelCpuProcStringReader$ProcFileIterator;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;I)V
    :try_end_c3
    .catchall {:try_start_a1 .. :try_end_c3} :catchall_d1

    if-eqz v3, :cond_c8

    :try_start_c5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catch Ljava/io/FileNotFoundException; {:try_start_c5 .. :try_end_c8} :catch_101
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_c5 .. :try_end_c8} :catch_101
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_df
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_dd

    :cond_c8
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v1, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v4

    :catchall_d1
    move-exception v4

    if-eqz v3, :cond_dc

    :try_start_d4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d8

    goto :goto_dc

    :catchall_d8
    move-exception v5

    :try_start_d9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_dc
    :goto_dc
    throw v4
    :try_end_dd
    .catch Ljava/io/FileNotFoundException; {:try_start_d9 .. :try_end_dd} :catch_101
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_d9 .. :try_end_dd} :catch_101
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dd} :catch_df
    .catchall {:try_start_d9 .. :try_end_dd} :catchall_dd

    :catchall_dd
    move-exception v1

    goto :goto_12d

    :catch_df
    move-exception v3

    :try_start_e0
    iget v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    sget-object v4, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_122

    :catch_101
    move-exception v3

    iget v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mErrors:I

    sget-object v4, Lcom/android/internal/os/KernelCpuProcStringReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File not found. It\'s normal if not implemented: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mFile:Ljava/nio/file/Path;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_122
    .catchall {:try_start_e0 .. :try_end_122} :catchall_dd

    :goto_122
    nop

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-object v1

    :goto_12d
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    iget-object v3, p0, Lcom/android/internal/os/KernelCpuProcStringReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method
