# classes4.dex

.class public final Lcom/android/internal/os/BatteryStatsImpl$Constants;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Constants"
.end annotation


# static fields
.field private static final DEFAULT_BATTERY_CHARGED_DELAY_MS:I = 0xdbba0

.field private static final DEFAULT_BATTERY_LEVEL_COLLECTION_DELAY_MS:J = 0x493e0L

.field private static final DEFAULT_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J = 0x927c0L

.field private static final DEFAULT_KERNEL_UID_READERS_THROTTLE_TIME:J = 0x3e8L

.field private static final DEFAULT_MAX_HISTORY_BUFFER_KB:I = 0x80

.field private static final DEFAULT_MAX_HISTORY_BUFFER_LOW_RAM_DEVICE_KB:I = 0x40

.field private static final DEFAULT_MAX_HISTORY_FILES:I = 0x20

.field private static final DEFAULT_MAX_HISTORY_FILES_LOW_RAM_DEVICE:I = 0x40

.field private static final DEFAULT_PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J = 0xea60L

.field private static final DEFAULT_TRACK_CPU_ACTIVE_CLUSTER_TIME:Z = true

.field private static final DEFAULT_UID_REMOVE_DELAY_MS:J = 0x493e0L

.field public static final KEY_BATTERY_CHARGED_DELAY_MS:Ljava/lang/String; = "battery_charged_delay_ms"

.field public static final KEY_BATTERY_LEVEL_COLLECTION_DELAY_MS:Ljava/lang/String; = "battery_level_collection_delay_ms"

.field public static final KEY_EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:Ljava/lang/String; = "external_stats_collection_rate_limit_ms"

.field public static final KEY_KERNEL_UID_READERS_THROTTLE_TIME:Ljava/lang/String; = "kernel_uid_readers_throttle_time"

.field public static final KEY_MAX_HISTORY_BUFFER_KB:Ljava/lang/String; = "max_history_buffer_kb"

.field public static final KEY_MAX_HISTORY_FILES:Ljava/lang/String; = "max_history_files"

.field public static final KEY_PROC_STATE_CHANGE_COLLECTION_DELAY_MS:Ljava/lang/String; = "procstate_change_collection_delay_ms"

.field public static final KEY_PROC_STATE_CPU_TIMES_READ_DELAY_MS:Ljava/lang/String; = "proc_state_cpu_times_read_delay_ms"

.field public static final KEY_TRACK_CPU_ACTIVE_CLUSTER_TIME:Ljava/lang/String; = "track_cpu_active_cluster_time"

.field public static final KEY_UID_REMOVE_DELAY_MS:Ljava/lang/String; = "uid_remove_delay_ms"


# instance fields
.field public BATTERY_CHARGED_DELAY_MS:I

.field public BATTERY_LEVEL_COLLECTION_DELAY_MS:J

.field public EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

.field public KERNEL_UID_READERS_THROTTLE_TIME:J

.field public MAX_HISTORY_BUFFER:I

.field public MAX_HISTORY_FILES:I

.field public PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

.field public TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

.field public UID_REMOVE_DELAY_MS:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Handler;)V
    .registers 7

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    const v0, 0xdbba0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    const/high16 v0, 0x10000

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    goto :goto_3e

    :cond_36
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    :goto_3e
    return-void
.end method

.method private updateBatteryChargedDelayMsLocked()V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_charging_state_update_delay"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_d

    move v1, v0

    goto :goto_18

    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const v2, 0xdbba0

    const-string v3, "battery_charged_delay_ms"

    invoke-virtual {v1, v3, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_18
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImpl;->-$$Nest$fgetmDeferSetCharging(Lcom/android/internal/os/BatteryStatsImpl;)Ljava/lang/Runnable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_47
    return-void
.end method

.method private updateConstants()V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "battery_stats_constants"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_10} :catch_14
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    goto :goto_1c

    :catchall_11
    move-exception v1

    goto/16 :goto_9e

    :catch_14
    move-exception v1

    :try_start_15
    const-string v2, "BatteryStatsImpl"

    const-string v3, "Bad batterystats settings"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_cpu_active_cluster_time"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "kernel_uid_readers_throttle_time"

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateKernelUidReadersThrottleTime(JJ)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "uid_remove_delay_ms"

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateUidRemoveDelay(J)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "external_stats_collection_rate_limit_ms"

    const-wide/32 v5, 0x927c0

    invoke-virtual {v1, v2, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "battery_level_collection_delay_ms"

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "procstate_change_collection_delay_ms"

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_history_files"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    const/16 v4, 0x40

    if-eqz v3, :cond_7b

    move v3, v4

    goto :goto_7d

    :cond_7b
    const/16 v3, 0x20

    :goto_7d
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_history_buffer_kb"

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_8f

    goto :goto_91

    :cond_8f
    const/16 v4, 0x80

    :goto_91
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    monitor-exit v0

    return-void

    :goto_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_15 .. :try_end_9f} :catchall_11

    throw v1
.end method

.method private updateKernelUidReadersThrottleTime(JJ)V
    .registers 8

    iput-wide p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    cmp-long v0, p1, p3

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidUserSysTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidUserSysTimeReader;->setThrottle(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidFreqTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFreqTimeReader;->setThrottle(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidActiveTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidActiveTimeReader;->setThrottle(J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCpuUidClusterTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidClusterTimeReader;->setThrottle(J)V

    :cond_2a
    return-void
.end method

.method private updateUidRemoveDelay(J)V
    .registers 4

    iput-wide p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->UID_REMOVE_DELAY_MS:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUidsLocked()V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 5

    const-string/jumbo v0, "track_cpu_active_cluster_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->TRACK_CPU_ACTIVE_CLUSTER_TIME:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v1, "kernel_uid_readers_throttle_time"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->KERNEL_UID_READERS_THROTTLE_TIME:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v1, "external_stats_collection_rate_limit_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->EXTERNAL_STATS_COLLECTION_RATE_LIMIT_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v1, "battery_level_collection_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_LEVEL_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v1, "procstate_change_collection_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->PROC_STATE_CHANGE_COLLECTION_DELAY_MS:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string/jumbo v1, "max_history_files"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_FILES:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v1, "max_history_buffer_kb"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "battery_charged_delay_ms"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->BATTERY_CHARGED_DELAY_MS:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    const-string v0, "battery_charging_state_update_delay"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_f
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateBatteryChargedDelayMsLocked()V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateConstants()V

    return-void
.end method

.method public startObserving(Landroid/content/ContentResolver;)V
    .registers 5

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    nop

    const-string v0, "battery_stats_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "battery_charging_state_update_delay"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl$Constants;->updateConstants()V

    return-void
.end method
