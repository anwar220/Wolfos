# classes4.dex

.class public Lcom/android/internal/os/BatteryUsageStatsProvider;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "BatteryUsageStatsProv"

.field private static sErrorReported:Z


# instance fields
.field private final mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mPowerCalculators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private final mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Lcom/android/internal/os/BatteryUsageStatsStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;Lcom/android/internal/os/BatteryUsageStatsStore;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    iput-object p3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    instance-of v0, p2, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v0, :cond_1c

    move-object v0, p2

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v0

    goto :goto_21

    :cond_1c
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    :goto_21
    iput-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method private currentTimeMillis()J
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private elapsedRealtime()J
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getAggregatedBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .registers 15

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->isProcessStateDataAvailable()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/BatteryUsageStats$Builder;

    invoke-direct {v4, v3, v0, v1}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZ)V

    iget-object v5, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    const-string v6, "BatteryUsageStatsProv"

    if-nez v5, :cond_3a

    const-string v2, "BatteryUsageStatsStore is unavailable"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v2

    return-object v2

    :cond_3a
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryUsageStatsStore;->listBatteryUsageStatsTimestamps()[J

    move-result-object v5

    array-length v7, v5

    :goto_3f
    if-ge v2, v7, :cond_99

    aget-wide v8, v5, v2

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getFromTimestamp()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-lez v10, :cond_96

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gtz v10, :cond_96

    iget-object v10, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mBatteryUsageStatsStore:Lcom/android/internal/os/BatteryUsageStatsStore;

    invoke-virtual {v10, v8, v9}, Lcom/android/internal/os/BatteryUsageStatsStore;->loadBatteryUsageStats(J)Landroid/os/BatteryUsageStats;

    move-result-object v10

    if-nez v10, :cond_5c

    goto :goto_96

    :cond_5c
    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_85

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring older BatteryUsageStats snapshot, which has different custom power components: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->getCustomPowerComponentNames()[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :cond_85
    if-eqz v1, :cond_93

    invoke-virtual {v10}, Landroid/os/BatteryUsageStats;->isProcessStateDataIncluded()Z

    move-result v11

    if-nez v11, :cond_93

    const-string v11, "Ignoring older BatteryUsageStats snapshot, which  does not include process state data"

    invoke-static {v6, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :cond_93
    invoke-virtual {v4, v10}, Landroid/os/BatteryUsageStats$Builder;->add(Landroid/os/BatteryUsageStats;)Landroid/os/BatteryUsageStats$Builder;

    :cond_96
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_99
    invoke-virtual {v4}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v2

    return-object v2
.end method

.method private getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .registers 8

    invoke-virtual {p1}, Landroid/os/BatteryUsageStatsQuery;->getToTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getCurrentBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getAggregatedBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;
    .registers 28

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->uptimeMillis()J

    move-result-wide v5

    mul-long/2addr v3, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x1

    if-eqz v5, :cond_19

    move v5, v6

    goto :goto_1a

    :cond_19
    const/4 v5, 0x0

    :goto_1a
    move v14, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_2d

    iget-object v5, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->isProcessStateDataAvailable()Z

    move-result v5

    if-eqz v5, :cond_2d

    move v5, v6

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x0

    :goto_2e
    move v15, v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_39

    move v5, v6

    goto :goto_3a

    :cond_39
    const/4 v5, 0x0

    :goto_3a
    move/from16 v16, v5

    new-instance v5, Landroid/os/BatteryUsageStats$Builder;

    iget-object v7, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v7}, Landroid/os/BatteryStats;->getCustomEnergyConsumerNames()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v14, v15}, Landroid/os/BatteryUsageStats$Builder;-><init>([Ljava/lang/String;ZZ)V

    move-object v12, v5

    iget-object v5, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Landroid/os/BatteryUsageStats$Builder;->setStatsStartTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    move-wide/from16 v10, p2

    invoke-virtual {v12, v10, v11}, Landroid/os/BatteryUsageStats$Builder;->setStatsEndTimestamp(J)Landroid/os/BatteryUsageStats$Builder;

    iget-object v5, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v6

    :goto_61
    if-ltz v5, :cond_8d

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    if-nez v16, :cond_74

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    const/16 v13, 0x442

    if-ne v9, v13, :cond_74

    goto :goto_88

    :cond_74
    invoke-virtual {v12, v7}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUidBatteryConsumerBuilder(Landroid/os/BatteryStats$Uid;)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v9

    invoke-direct {v0, v7, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v10

    invoke-virtual {v9, v6, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    move-result-object v9

    invoke-direct {v0, v7, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v10

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v10, v11}, Landroid/os/UidBatteryConsumer$Builder;->setTimeInStateMs(IJ)Landroid/os/UidBatteryConsumer$Builder;

    :goto_88
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v10, p2

    goto :goto_61

    :cond_8d
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getPowerComponents()[I

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getPowerCalculators()Ljava/util/List;

    move-result-object v10

    const/4 v5, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    move v9, v5

    :goto_9b
    if-ge v9, v11, :cond_f4

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/internal/os/PowerCalculator;

    if-eqz v13, :cond_cc

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_a8
    move/from16 v17, v5

    array-length v5, v13

    if-ge v6, v5, :cond_bc

    aget v5, v13, v6

    invoke-virtual {v7, v5}, Lcom/android/internal/os/PowerCalculator;->isPowerComponentSupported(I)Z

    move-result v5

    if-eqz v5, :cond_b7

    const/4 v5, 0x1

    goto :goto_be

    :cond_b7
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v17

    goto :goto_a8

    :cond_bc
    move/from16 v5, v17

    :goto_be
    if-nez v5, :cond_cc

    move-wide/from16 v22, v1

    move-object/from16 v17, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object v1, v12

    goto :goto_e8

    :cond_cc
    iget-object v6, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    move-object v5, v7

    move-object/from16 v17, v6

    move-object v6, v12

    move-object/from16 v18, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v8

    move/from16 v19, v9

    move-wide v8, v1

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-wide v10, v3

    move-wide/from16 v22, v1

    move-object v1, v12

    move-object/from16 v12, p1

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/os/PowerCalculator;->calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V

    :goto_e8
    add-int/lit8 v9, v19, 0x1

    move-object v12, v1

    move-object/from16 v8, v17

    move-object/from16 v10, v20

    move/from16 v11, v21

    move-wide/from16 v1, v22

    goto :goto_9b

    :cond_f4
    move-wide/from16 v22, v1

    move-object/from16 v17, v8

    move/from16 v19, v9

    move-object/from16 v20, v10

    move/from16 v21, v11

    move-object v1, v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStatsQuery;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_153

    iget-object v2, v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v5, v2, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v5, :cond_132

    check-cast v2, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    iget-object v7, v2, Lcom/android/internal/os/BatteryStatsImpl;->mHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->dataSize()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    iget-object v6, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBatteryStatsHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsHistory;->getHistoryDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    new-instance v7, Lcom/android/internal/os/BatteryStatsHistory;

    invoke-direct {v7, v2, v6, v5}, Lcom/android/internal/os/BatteryStatsHistory;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Parcel;)V

    invoke-virtual {v1, v7}, Landroid/os/BatteryUsageStats$Builder;->setBatteryHistory(Lcom/android/internal/os/BatteryStatsHistory;)Landroid/os/BatteryUsageStats$Builder;

    goto :goto_153

    :cond_132
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "History cannot be included for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_153
    :goto_153
    invoke-virtual {v1}, Landroid/os/BatteryUsageStats$Builder;->build()Landroid/os/BatteryUsageStats;

    move-result-object v2

    if-eqz v15, :cond_15c

    invoke-direct {v0, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->verify(Landroid/os/BatteryUsageStats;)V

    :cond_15c
    return-object v2
.end method

.method private getPowerCalculators()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/PowerCalculator;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    if-nez v1, :cond_108

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/BatteryChargeCalculator;

    invoke-direct {v2}, Lcom/android/internal/os/BatteryChargeCalculator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/CpuPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/MemoryPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/WakelockPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/WifiPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/BluetoothPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/SensorPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    invoke-direct {v2, v3}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Landroid/hardware/SensorManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/GnssPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/GnssPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/CameraPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/FlashlightPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/AudioPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/AudioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/VideoPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/VideoPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/PhonePowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/PhonePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/ScreenPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/ScreenPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/AmbientDisplayPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/AmbientDisplayPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/IdlePowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/IdlePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/CustomMeasuredPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/CustomMeasuredPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/UserPowerCalculator;

    invoke-direct {v2}, Lcom/android/internal/os/UserPowerCalculator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    new-instance v2, Lcom/android/internal/os/SystemServicePowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/SystemServicePowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_108
    monitor-exit v0
    :try_end_109
    .catchall {:try_start_3 .. :try_end_109} :catchall_10c

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mPowerCalculators:Ljava/util/List;

    return-object v0

    :catchall_10c
    move-exception v1

    :try_start_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw v1
.end method

.method private getProcessBackgroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .registers 8

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;J)J
    .registers 14

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5, p2, p3, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    :cond_11
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    const/4 v8, 0x2

    invoke-virtual {p1, v8, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v8

    add-long/2addr v6, v8

    const/4 v8, 0x1

    invoke-virtual {p1, v8, p2, p3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v8

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    return-wide v8
.end method

.method private uptimeMillis()J
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    instance-of v1, v0, Lcom/android/internal/os/BatteryStatsImpl;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private verify(Landroid/os/BatteryUsageStats;)V
    .registers 20

    sget-boolean v0, Lcom/android/internal/os/BatteryUsageStatsProvider;->sErrorReported:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_aa

    new-array v2, v2, [I

    fill-array-data v2, :array_b6

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UidBatteryConsumer;

    array-length v6, v3

    const/4 v8, 0x0

    :goto_28
    if-ge v8, v6, :cond_a4

    aget v9, v3, v8

    invoke-virtual {v5, v9}, Landroid/os/UidBatteryConsumer;->getKey(I)Landroid/os/BatteryConsumer$Key;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    array-length v14, v2

    const/4 v15, 0x0

    :goto_38
    if-ge v15, v14, :cond_4c

    aget v7, v2, v15

    move-wide/from16 v16, v0

    invoke-virtual {v5, v9, v7}, Landroid/os/UidBatteryConsumer;->getKey(II)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/os/UidBatteryConsumer;->getConsumedPower(Landroid/os/BatteryConsumer$Key;)D

    move-result-wide v0

    add-double/2addr v12, v0

    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v0, v16

    goto :goto_38

    :cond_4c
    move-wide/from16 v16, v0

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    add-double/2addr v0, v10

    cmpl-double v0, v12, v0

    if-lez v0, :cond_9f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sum of states exceeds total. UID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " states = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/os/BatteryUsageStatsProvider;->sErrorReported:Z

    const-string v4, "BatteryUsageStatsProv"

    if-nez v1, :cond_9b

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/BatteryUsageStatsProvider;->sErrorReported:Z

    goto :goto_9e

    :cond_9b
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9e
    return-void

    :cond_9f
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v0, v16

    goto :goto_28

    :cond_a4
    move-wide/from16 v16, v0

    goto/16 :goto_1a

    :cond_a8
    return-void

    nop

    :array_aa
    .array-data 4
        0x1
        0x8
        0xb
        0x2
    .end array-data

    :array_b6
    .array-data 4
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method


# virtual methods
.method public getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStats;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/android/internal/os/BatteryUsageStatsProvider;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2c

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryUsageStatsQuery;

    invoke-direct {p0, v5, v2, v3}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_2c
    monitor-exit v1

    return-object v0

    :catchall_2e
    move-exception v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public shouldUpdateStats(Ljava/util/List;J)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryUsageStatsQuery;",
            ">;J)Z"
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_b
    if-ltz v2, :cond_1e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryUsageStatsQuery;

    invoke-virtual {v4}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, p2

    cmp-long v2, v4, v0

    if-lez v2, :cond_28

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    return v3
.end method
