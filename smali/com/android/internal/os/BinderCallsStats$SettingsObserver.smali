# classes4.dex

.class public Lcom/android/internal/os/BinderCallsStats$SettingsObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsObserver"
.end annotation


# static fields
.field public static final SETTINGS_COLLECT_LATENCY_DATA_KEY:Ljava/lang/String; = "collect_latency_data"

.field public static final SETTINGS_DETAILED_TRACKING_KEY:Ljava/lang/String; = "detailed_tracking"

.field public static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field public static final SETTINGS_IGNORE_BATTERY_STATUS_KEY:Ljava/lang/String; = "ignore_battery_status"

.field public static final SETTINGS_LATENCY_HISTOGRAM_BUCKET_COUNT_KEY:Ljava/lang/String; = "latency_histogram_bucket_count"

.field public static final SETTINGS_LATENCY_HISTOGRAM_BUCKET_SCALE_FACTOR_KEY:Ljava/lang/String; = "latency_histogram_bucket_scale_factor"

.field public static final SETTINGS_LATENCY_HISTOGRAM_FIRST_BUCKET_SIZE_KEY:Ljava/lang/String; = "latency_histogram_first_bucket_size"

.field public static final SETTINGS_LATENCY_OBSERVER_PUSH_INTERVAL_MINUTES_KEY:Ljava/lang/String; = "latency_observer_push_interval_minutes"

.field public static final SETTINGS_LATENCY_OBSERVER_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "latency_observer_sampling_interval"

.field public static final SETTINGS_LATENCY_OBSERVER_SHARDING_MODULO_KEY:Ljava/lang/String; = "latency_observer_sharding_modulo"

.field public static final SETTINGS_MAX_CALL_STATS_KEY:Ljava/lang/String; = "max_call_stats_count"

.field public static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field public static final SETTINGS_SHARDING_MODULO_KEY:Ljava/lang/String; = "sharding_modulo"

.field public static final SETTINGS_TRACK_DIRECT_CALLING_UID_KEY:Ljava/lang/String; = "track_calling_uid"

.field public static final SETTINGS_TRACK_SCREEN_INTERACTIVE_KEY:Ljava/lang/String; = "track_screen_state"

.field public static final SETTINGS_UPLOAD_DATA_KEY:Ljava/lang/String; = "upload_data"


# instance fields
.field private final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;)V
    .registers 6

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "binder_calls_stats"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mUri:Landroid/net/Uri;

    new-instance v1, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iput-object p1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object p2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->onChange()V

    return-void
.end method

.method public static configureLatencyObserver(Landroid/util/KeyValueListParser;Lcom/android/internal/os/BinderLatencyObserver;)V
    .registers 6

    const-string/jumbo v0, "latency_observer_sampling_interval"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderLatencyObserver;->setSamplingInterval(I)V

    const-string/jumbo v0, "latency_observer_sharding_modulo"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderLatencyObserver;->setShardingModulo(I)V

    nop

    const-string/jumbo v0, "latency_histogram_bucket_count"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "latency_histogram_first_bucket_size"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "latency_histogram_bucket_scale_factor"

    const/high16 v3, 0x3f900000  # 1.125f

    invoke-virtual {p0, v2, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/BinderLatencyObserver;->setHistogramBucketsParams(IIF)V

    const-string/jumbo v0, "latency_observer_push_interval_minutes"

    const/16 v1, 0x168

    invoke-virtual {p0, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderLatencyObserver;->setPushInterval(I)V

    return-void
.end method


# virtual methods
.method onChange()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "binder_calls_stats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    const-string v1, "BinderCallsStats"

    const-string v2, "Bad binder call stats settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackScreenInteractive(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackDirectCallerUid(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "ignore_battery_status"

    invoke-virtual {v2, v3, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setIgnoreBatteryStatus(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v2, "collect_latency_data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setCollectLatencyData(Z)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->configureLatencyObserver(Landroid/util/KeyValueListParser;Lcom/android/internal/os/BinderLatencyObserver;)V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string v1, "enabled"

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mEnabled:Z

    if-eq v1, v0, :cond_7d

    if-eqz v0, :cond_64

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    goto :goto_68

    :cond_64
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    :goto_68
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mEnabled:Z

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BinderCallsStats;->setAddDebugEntries(Z)V

    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    :cond_7d
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->onChange()V

    :cond_b
    return-void
.end method
