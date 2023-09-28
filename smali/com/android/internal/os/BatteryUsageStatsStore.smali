# classes4.dex

.class public Lcom/android/internal/os/BatteryUsageStatsStore;
.super Ljava/lang/Object;


# static fields
.field private static final BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP_PROPERTY:Ljava/lang/String; = "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

.field private static final BATTERY_USAGE_STATS_DIR:Ljava/lang/String; = "battery-usage-stats"

.field private static final BATTERY_USAGE_STATS_QUERY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONFIG_FILENAME:Ljava/lang/String; = "config"

.field private static final DIR_LOCK_FILENAME:Ljava/lang/String; = ".lock"

.field private static final MAX_BATTERY_STATS_SNAPSHOT_STORAGE_BYTES:J = 0x19000L

.field private static final SNAPSHOT_FILE_EXTENSION:Ljava/lang/String; = ".bus"

.field private static final TAG:Ljava/lang/String; = "BatteryUsageStatsStore"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

.field private final mConfigFile:Landroid/util/AtomicFile;

.field private final mContext:Landroid/content/Context;

.field private final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mHandler:Landroid/os/Handler;

.field private mJvmLock:Ljava/nio/channels/FileLock;

.field private final mLockFile:Ljava/io/File;

.field private final mMaxStorageBytes:J

.field private final mStoreDir:Ljava/io/File;

.field private mSystemReady:Z


# direct methods
.method public static synthetic $r8$lambda$68qPHZ-NgB1E5Jr-Tjx8cJIEwEM(Lcom/android/internal/os/BatteryUsageStatsStore;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryUsageStatsStore;->prepareForBatteryStatsReset(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryUsageStatsStore;->BATTERY_USAGE_STATS_QUERY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;)V
    .registers 12

    const-wide/32 v5, 0x19000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryUsageStatsStore;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;J)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v0, Ljava/io/File;

    const-string v1, "battery-usage-stats"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, ".lock"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "config"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    iput-object p4, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mHandler:Landroid/os/Handler;

    iput-wide p5, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mMaxStorageBytes:J

    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/BatteryUsageStatsStore;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryResetListener(Lcom/android/internal/os/BatteryStatsImpl$BatteryResetListener;)V

    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsProvider;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    return-void
.end method

.method private lockSnapshotDirectory()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mLockFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception v0

    const-string v1, "BatteryUsageStatsStore"

    const-string v2, "Cannot lock snapshot directory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method private makeSnapshotFilename(J)Ljava/io/File;
    .registers 10

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "%019d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private prepareForBatteryStatsReset(I)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mSystemReady:Z

    if-nez v0, :cond_8

    goto :goto_29

    :cond_8
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mBatteryUsageStatsProvider:Lcom/android/internal/os/BatteryUsageStatsProvider;

    sget-object v1, Lcom/android/internal/os/BatteryUsageStatsStore;->BATTERY_USAGE_STATS_QUERY:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "BatteryUsageStatsStore"

    const-string v2, "No battery usage stats generated"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/os/BatteryUsageStatsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/BatteryUsageStatsStore;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_29
    :goto_29
    return-void
.end method

.method private readXmlFileLocked(Ljava/io/File;)Landroid/os/BatteryUsageStats;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newBinaryPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/os/BatteryUsageStats;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/os/BatteryUsageStats;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v2

    :catchall_1a
    move-exception v1

    :try_start_1b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_23

    :catchall_1f
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw v1
.end method

.method private removeOldSnapshotsLocked()V
    .registers 12

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v4, :cond_2e

    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v0, v7

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".bus"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2b

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v6, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_2e
    :goto_2e
    iget-wide v3, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mMaxStorageBytes:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_6e

    invoke-virtual {v2}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v3

    if-nez v3, :cond_3b

    goto :goto_6e

    :cond_3b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_5f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete battery usage stats "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BatteryUsageStatsStore"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_6e
    :goto_6e
    return-void
.end method

.method private storeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    :try_start_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_38

    const-string v1, "BatteryUsageStatsStore"

    if-nez v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "Could not create a directory for battery usage stats snapshots"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_38

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    return-void

    :cond_1e
    :try_start_1e
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/BatteryUsageStatsStore;->makeSnapshotFilename(J)Ljava/io/File;

    move-result-object v0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_38

    :try_start_26
    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryUsageStatsStore;->writeXmlFileLocked(Landroid/os/BatteryUsageStats;Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a
    .catchall {:try_start_26 .. :try_end_29} :catchall_38

    goto :goto_30

    :catch_2a
    move-exception v2

    :try_start_2b
    const-string v3, "Cannot save battery usage stats"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->removeOldSnapshotsLocked()V
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_38

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    nop

    return-void

    :catchall_38
    move-exception v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    throw v0
.end method

.method private unlockSnapshotDirectory()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mJvmLock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_e
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    nop

    :goto_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_18

    :catchall_c
    move-exception v0

    goto :goto_19

    :catch_e
    move-exception v0

    :try_start_f
    const-string v1, "BatteryUsageStatsStore"

    const-string v2, "Cannot unlock snapshot directory"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_c

    nop

    goto :goto_6

    :goto_18
    return-void

    :goto_19
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private writeXmlFileLocked(Landroid/os/BatteryUsageStats;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newBinarySerializer()Landroid/util/TypedXmlSerializer;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/util/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v1}, Landroid/os/BatteryUsageStats;->writeXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {v1}, Landroid/util/TypedXmlSerializer;->endDocument()V
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_25

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_25
    move-exception v1

    :try_start_26
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v1
.end method


# virtual methods
.method public getLastBatteryUsageStatsBeforeResetAtomPullTimestamp()J
    .registers 6

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    :try_start_8
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_25
    .catchall {:try_start_8 .. :try_end_e} :catchall_23

    :try_start_e
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_17

    if-eqz v1, :cond_16

    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_25
    .catchall {:try_start_13 .. :try_end_16} :catchall_23

    :cond_16
    goto :goto_40

    :catchall_17
    move-exception v2

    if-eqz v1, :cond_22

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_1e

    goto :goto_22

    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_22
    :goto_22
    throw v2
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_23} :catch_25
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v1

    goto :goto_52

    :catch_25
    move-exception v1

    :try_start_26
    const-string v2, "BatteryUsageStatsStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_23

    :goto_40
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    nop

    nop

    const-string v1, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    :goto_52
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    throw v1
.end method

.method synthetic lambda$prepareForBatteryStatsReset$0$com-android-internal-os-BatteryUsageStatsStore(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryUsageStats;

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryUsageStatsStore;->storeBatteryUsageStats(Landroid/os/BatteryUsageStats;)V

    return-void
.end method

.method public listBatteryUsageStatsTimestamps()[J
    .registers 13

    const-string v0, ".bus"

    new-instance v1, Landroid/util/LongArray;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/util/LongArray;-><init>(I)V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    :try_start_c
    iget-object v2, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_55

    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_5e

    if-eqz v8, :cond_52

    nop

    :try_start_24
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Landroid/util/LongArray;->add(J)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_38} :catch_39
    .catchall {:try_start_24 .. :try_end_38} :catchall_5e

    goto :goto_52

    :catch_39
    move-exception v8

    :try_start_3a
    const-string v9, "BatteryUsageStatsStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid format of BatteryUsageStats snapshot file name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_5e

    :cond_52
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_55
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    nop

    invoke-virtual {v1}, Landroid/util/LongArray;->toArray()[J

    move-result-object v0

    return-object v0

    :catchall_5e
    move-exception v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    throw v0
.end method

.method public loadBatteryUsageStats(J)Landroid/os/BatteryUsageStats;
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BatteryUsageStatsStore;->makeSnapshotFilename(J)Ljava/io/File;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1e

    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryUsageStatsStore;->readXmlFileLocked(Ljava/io/File;)Landroid/os/BatteryUsageStats;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_f
    .catchall {:try_start_7 .. :try_end_b} :catchall_1e

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    return-object v1

    :catch_f
    move-exception v1

    :try_start_10
    const-string v2, "BatteryUsageStatsStore"

    const-string v3, "Cannot read battery usage stats"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1e

    nop

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    nop

    const/4 v0, 0x0

    return-object v0

    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    throw v0
.end method

.method public onSystemReady()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mSystemReady:Z

    return-void
.end method

.method public removeAllSnapshots()V
    .registers 8

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    :try_start_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mStoreDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_3c

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".bus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "BatteryUsageStatsStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot delete battery usage stats "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_41

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_3c
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    nop

    return-void

    :catchall_41
    move-exception v0

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    throw v0
.end method

.method public setLastBatteryUsageStatsBeforeResetAtomPullTimestamp(J)V
    .registers 9

    const-string v0, "BatteryUsageStatsStore"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->lockSnapshotDirectory()V

    :try_start_a
    iget-object v2, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_27
    .catchall {:try_start_a .. :try_end_10} :catchall_25

    :try_start_10
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_19

    if-eqz v2, :cond_18

    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_27
    .catchall {:try_start_15 .. :try_end_18} :catchall_25

    :cond_18
    goto :goto_40

    :catchall_19
    move-exception v3

    if-eqz v2, :cond_24

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception v4

    :try_start_21
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    throw v3
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_27
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    goto :goto_7f

    :catch_27
    move-exception v2

    :try_start_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot load config file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    const-string v2, "BATTERY_USAGE_STATS_BEFORE_RESET_TIMESTAMP"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_25

    const/4 v2, 0x0

    :try_start_4a
    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    const-string v3, "Statsd atom pull timestamps"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5b} :catch_5c
    .catchall {:try_start_4a .. :try_end_5b} :catchall_25

    goto :goto_7a

    :catch_5c
    move-exception v3

    :try_start_5d
    iget-object v4, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot save config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/BatteryUsageStatsStore;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_25

    :goto_7a
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    nop

    return-void

    :goto_7f
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsStore;->unlockSnapshotDirectory()V

    throw v0
.end method
