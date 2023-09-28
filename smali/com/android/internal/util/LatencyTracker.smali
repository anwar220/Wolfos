# classes4.dex

.class public Lcom/android/internal/util/LatencyTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/LatencyTracker$Session;,
        Lcom/android/internal/util/LatencyTracker$Action;
    }
.end annotation


# static fields
.field private static final ACTIONS_ALL:[I

.field public static final ACTION_CHECK_CREDENTIAL:I = 0x3

.field public static final ACTION_CHECK_CREDENTIAL_UNLOCKED:I = 0x4

.field public static final ACTION_EXPAND_PANEL:I = 0x0

.field public static final ACTION_FACE_WAKE_AND_UNLOCK:I = 0x7

.field public static final ACTION_FINGERPRINT_WAKE_AND_UNLOCK:I = 0x2

.field public static final ACTION_LOAD_SHARE_SHEET:I = 0x10

.field public static final ACTION_LOCKSCREEN_UNLOCK:I = 0xb

.field public static final ACTION_ROTATE_SCREEN:I = 0x6

.field public static final ACTION_ROTATE_SCREEN_CAMERA_CHECK:I = 0xa

.field public static final ACTION_ROTATE_SCREEN_SENSOR:I = 0x9

.field public static final ACTION_SHOW_BACK_ARROW:I = 0xf

.field public static final ACTION_START_RECENTS_ANIMATION:I = 0x8

.field public static final ACTION_SWITCH_DISPLAY_UNFOLD:I = 0xd

.field public static final ACTION_TOGGLE_RECENTS:I = 0x1

.field public static final ACTION_TURN_ON_SCREEN:I = 0x5

.field public static final ACTION_UDFPS_ILLUMINATE:I = 0xe

.field public static final ACTION_USER_SWITCH:I = 0xc

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ENABLED:Z

.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x5

.field public static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final STATSD_ACTION:[I

.field private static final TAG:Ljava/lang/String; = "LatencyTracker"

.field private static sLatencyTracker:Lcom/android/internal/util/LatencyTracker;


# instance fields
.field private mEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mSamplingInterval:I

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/LatencyTracker$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mTraceThresholdPerAction:[I


# direct methods
.method public static synthetic $r8$lambda$DRnZbV-_f67FVGSzCjRFLX6dnUQ(Lcom/android/internal/util/LatencyTracker;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetSTATSD_ACTION()[I
    .registers 1

    sget-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/LatencyTracker;->getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_16

    sput-object v1, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    return-void

    nop

    :array_16
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data

    :array_3c
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xb
        0xa
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mTraceThresholdPerAction:[I

    sget-boolean v0, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/util/LatencyTracker;->mSamplingInterval:I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/util/LatencyTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    nop

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/util/LatencyTracker;)V

    const-string/jumbo v2, "latency_tracker"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;
    .registers 3

    sget-object v0, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/internal/util/LatencyTracker;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/internal/util/LatencyTracker;

    invoke-direct {v1}, Lcom/android/internal/util/LatencyTracker;-><init>()V

    sput-object v1, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/internal/util/LatencyTracker;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object v0
.end method

.method public static getNameOfAction(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_42

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b  #0x11
    const-string v0, "ACTION_LOAD_SHARE_SHEET"

    return-object v0

    :pswitch_e  #0x10
    const-string v0, "ACTION_SHOW_BACK_ARROW"

    return-object v0

    :pswitch_11  #0xf
    const-string v0, "ACTION_UDFPS_ILLUMINATE"

    return-object v0

    :pswitch_14  #0xe
    const-string v0, "ACTION_SWITCH_DISPLAY_UNFOLD"

    return-object v0

    :pswitch_17  #0xd
    const-string v0, "ACTION_USER_SWITCH"

    return-object v0

    :pswitch_1a  #0xc
    const-string v0, "ACTION_LOCKSCREEN_UNLOCK"

    return-object v0

    :pswitch_1d  #0xb
    const-string v0, "ACTION_ROTATE_SCREEN_SENSOR"

    return-object v0

    :pswitch_20  #0xa
    const-string v0, "ACTION_ROTATE_SCREEN_CAMERA_CHECK"

    return-object v0

    :pswitch_23  #0x9
    const-string v0, "ACTION_START_RECENTS_ANIMATION"

    return-object v0

    :pswitch_26  #0x8
    const-string v0, "ACTION_FACE_WAKE_AND_UNLOCK"

    return-object v0

    :pswitch_29  #0x7
    const-string v0, "ACTION_ROTATE_SCREEN"

    return-object v0

    :pswitch_2c  #0x6
    const-string v0, "ACTION_TURN_ON_SCREEN"

    return-object v0

    :pswitch_2f  #0x5
    const-string v0, "ACTION_CHECK_CREDENTIAL_UNLOCKED"

    return-object v0

    :pswitch_32  #0x4
    const-string v0, "ACTION_CHECK_CREDENTIAL"

    return-object v0

    :pswitch_35  #0x3
    const-string v0, "ACTION_FINGERPRINT_WAKE_AND_UNLOCK"

    return-object v0

    :pswitch_38  #0x2
    const-string v0, "ACTION_TOGGLE_RECENTS"

    return-object v0

    :pswitch_3b  #0x1
    const-string v0, "ACTION_EXPAND_PANEL"

    return-object v0

    :pswitch_3e  #0x0
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_3b  #00000001
        :pswitch_38  #00000002
        :pswitch_35  #00000003
        :pswitch_32  #00000004
        :pswitch_2f  #00000005
        :pswitch_2c  #00000006
        :pswitch_29  #00000007
        :pswitch_26  #00000008
        :pswitch_23  #00000009
        :pswitch_20  #0000000a
        :pswitch_1d  #0000000b
        :pswitch_1a  #0000000c
        :pswitch_17  #0000000d
        :pswitch_14  #0000000e
        :pswitch_11  #0000000f
        :pswitch_e  #00000010
        :pswitch_b  #00000011
    .end packed-switch
.end method

.method private static getTraceNameOfAction(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ">"

    const-string v2, "L<"

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v2, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v2, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTraceTriggerNameForAction(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.android.telemetry.latency-tracker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v1, v1, p0

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public static logActionDeprecated(IIZ)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v2, v1, p0

    invoke-static {v2}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " latency="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LatencyTracker"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const v2, 0x8ce6

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    if-eqz p2, :cond_44

    const/16 v0, 0x132

    aget v1, v1, p0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    :cond_44
    return-void
.end method

.method private updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 10

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "sampling_interval"

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/util/LatencyTracker;->mSamplingInterval:I

    const-string v1, "enabled"

    sget-boolean v2, Lcom/android/internal/util/LatencyTracker;->DEFAULT_ENABLED:Z

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    sget-object v1, Lcom/android/internal/util/LatencyTracker;->ACTIONS_ALL:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_33

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/internal/util/LatencyTracker;->mTraceThresholdPerAction:[I

    sget-object v6, Lcom/android/internal/util/LatencyTracker;->STATSD_ACTION:[I

    aget v6, v6, v4

    invoke-static {v6}, Lcom/android/internal/util/LatencyTracker;->getNameOfAction(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method


# virtual methods
.method public isEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/util/LatencyTracker;->mEnabled:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method synthetic lambda$new$0$com-android-internal-util-LatencyTracker()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "latency_tracker"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/LatencyTracker;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method synthetic lambda$onActionStart$1$com-android-internal-util-LatencyTracker(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    return-void
.end method

.method public logAction(II)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v1

    iget v2, p0, Lcom/android/internal/util/LatencyTracker;->mSamplingInterval:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mTraceThresholdPerAction:[I

    aget v2, v2, p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_27

    if-lez v2, :cond_23

    if-lt p2, v2, :cond_23

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getTraceTriggerNameForAction(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    :cond_23
    invoke-static {p1, p2, v1}, Lcom/android/internal/util/LatencyTracker;->logActionDeprecated(IIZ)V

    return-void

    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public onActionCancel(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->cancel()V

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onActionEnd(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/LatencyTracker$Session;

    if-nez v1, :cond_17

    monitor-exit v0

    return-void

    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->end()V

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-virtual {v1}, Lcom/android/internal/util/LatencyTracker$Session;->duration()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/util/LatencyTracker;->logAction(II)V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onActionStart(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(ILjava/lang/String;)V

    return-void
.end method

.method public onActionStart(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/util/LatencyTracker;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    monitor-exit v0

    return-void

    :cond_15
    new-instance v1, Lcom/android/internal/util/LatencyTracker$Session;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/util/LatencyTracker$Session;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/LatencyTracker;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker$Session;->begin(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/internal/util/LatencyTracker;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method
