# classes4.dex

.class public Lcom/android/internal/os/StoragedUidIoStatsReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sUidIoFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/os/StoragedUidIoStatsReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    const-string v0, "/proc/uid_io/stats"

    sput-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public readAbsolute(Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;)V
    .registers 33

    const-string v1, ": "

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v2

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    :try_start_e
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;)Ljava/io/BufferedReader;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_16} :catch_e8
    .catchall {:try_start_e .. :try_end_16} :catchall_e6

    move-object v4, v0

    :goto_17
    :try_start_17
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    if-eqz v0, :cond_ce

    const-string v0, " "

    invoke-static {v5, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    array-length v0, v6

    const/16 v7, 0xb

    if-eq v0, v7, :cond_4d

    sget-object v0, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed entry in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_17 .. :try_end_4c} :catchall_d8

    goto :goto_17

    :cond_4d
    const/4 v0, 0x0

    :try_start_4e
    aget-object v7, v6, v0

    aget-object v0, v6, v0

    const/16 v8, 0xa

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v0, 0x1

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    const/4 v0, 0x2

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v15

    const/4 v0, 0x4

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v17

    const/4 v0, 0x5

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v19

    const/4 v0, 0x6

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v21

    const/4 v0, 0x7

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v23

    const/16 v0, 0x8

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v25

    const/16 v0, 0x9

    aget-object v0, v6, v0

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v27

    aget-object v0, v6, v8

    invoke-static {v0, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v29

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v30}, Lcom/android/internal/os/StoragedUidIoStatsReader$Callback;->onUidStorageStats(IJJJJJJJJJJ)V
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_a4} :catch_a5
    .catchall {:try_start_4e .. :try_end_a4} :catchall_d8

    goto :goto_cc

    :catch_a5
    move-exception v0

    :try_start_a6
    sget-object v7, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse entry in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_a6 .. :try_end_cc} :catchall_d8

    :goto_cc
    goto/16 :goto_17

    :cond_ce
    if-eqz v4, :cond_d3

    :try_start_d0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_e8
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_e6

    :cond_d3
    nop

    :goto_d4
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    goto :goto_111

    :catchall_d8
    move-exception v0

    move-object v5, v0

    if-eqz v4, :cond_e5

    :try_start_dc
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_e0

    goto :goto_e5

    :catchall_e0
    move-exception v0

    move-object v6, v0

    :try_start_e2
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e5
    :goto_e5
    throw v5
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e6} :catch_e8
    .catchall {:try_start_e2 .. :try_end_e6} :catchall_e6

    :catchall_e6
    move-exception v0

    goto :goto_112

    :catch_e8
    move-exception v0

    :try_start_e9
    sget-object v4, Lcom/android/internal/os/StoragedUidIoStatsReader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/os/StoragedUidIoStatsReader;->sUidIoFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_e9 .. :try_end_10f} :catchall_e6

    nop

    goto :goto_d4

    :goto_111
    return-void

    :goto_112
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v0
.end method
