# classes4.dex

.class public Lcom/android/internal/jank/InteractionJankMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/InteractionJankMonitor$Session;,
        Lcom/android/internal/jank/InteractionJankMonitor$Configuration;,
        Lcom/android/internal/jank/InteractionJankMonitor$CujType;
    }
.end annotation


# static fields
.field private static final ACTION_PREFIX:Ljava/lang/String;

.field public static final ACTION_SESSION_CANCEL:Ljava/lang/String;

.field public static final ACTION_SESSION_END:Ljava/lang/String;

.field public static final CUJ_BIOMETRIC_PROMPT_TRANSITION:I = 0x38

.field public static final CUJ_LAUNCHER_ALL_APPS_SCROLL:I = 0x1a

.field public static final CUJ_LAUNCHER_APP_CLOSE_TO_HOME:I = 0x9

.field public static final CUJ_LAUNCHER_APP_CLOSE_TO_PIP:I = 0xa

.field public static final CUJ_LAUNCHER_APP_LAUNCH_FROM_ICON:I = 0x8

.field public static final CUJ_LAUNCHER_APP_LAUNCH_FROM_RECENTS:I = 0x7

.field public static final CUJ_LAUNCHER_APP_LAUNCH_FROM_WIDGET:I = 0x1b

.field public static final CUJ_LAUNCHER_OPEN_ALL_APPS:I = 0x19

.field public static final CUJ_LAUNCHER_QUICK_SWITCH:I = 0xb

.field public static final CUJ_LOCKSCREEN_LAUNCH_CAMERA:I = 0x33

.field public static final CUJ_LOCKSCREEN_PASSWORD_APPEAR:I = 0x11

.field public static final CUJ_LOCKSCREEN_PASSWORD_DISAPPEAR:I = 0x14

.field public static final CUJ_LOCKSCREEN_PATTERN_APPEAR:I = 0x12

.field public static final CUJ_LOCKSCREEN_PATTERN_DISAPPEAR:I = 0x15

.field public static final CUJ_LOCKSCREEN_PIN_APPEAR:I = 0x13

.field public static final CUJ_LOCKSCREEN_PIN_DISAPPEAR:I = 0x16

.field public static final CUJ_LOCKSCREEN_TRANSITION_FROM_AOD:I = 0x17

.field public static final CUJ_LOCKSCREEN_TRANSITION_TO_AOD:I = 0x18

.field public static final CUJ_LOCKSCREEN_UNLOCK_ANIMATION:I = 0x1d

.field public static final CUJ_NOTIFICATION_ADD:I = 0xe

.field public static final CUJ_NOTIFICATION_APP_START:I = 0x10

.field public static final CUJ_NOTIFICATION_HEADS_UP_APPEAR:I = 0xc

.field public static final CUJ_NOTIFICATION_HEADS_UP_DISAPPEAR:I = 0xd

.field public static final CUJ_NOTIFICATION_REMOVE:I = 0xf

.field public static final CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE:I = 0x0

.field public static final CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE_LOCK:I = 0x1

.field public static final CUJ_NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE:I = 0x5

.field public static final CUJ_NOTIFICATION_SHADE_QS_SCROLL_SWIPE:I = 0x6

.field public static final CUJ_NOTIFICATION_SHADE_ROW_EXPAND:I = 0x3

.field public static final CUJ_NOTIFICATION_SHADE_ROW_SWIPE:I = 0x4

.field public static final CUJ_NOTIFICATION_SHADE_SCROLL_FLING:I = 0x2

.field public static final CUJ_ONE_HANDED_ENTER_TRANSITION:I = 0x2a

.field public static final CUJ_ONE_HANDED_EXIT_TRANSITION:I = 0x2b

.field public static final CUJ_PIP_TRANSITION:I = 0x23

.field public static final CUJ_SCREEN_OFF:I = 0x28

.field public static final CUJ_SCREEN_OFF_SHOW_AOD:I = 0x29

.field public static final CUJ_SETTINGS_PAGE_SCROLL:I = 0x1c

.field public static final CUJ_SETTINGS_SLIDER:I = 0x35

.field public static final CUJ_SETTINGS_TOGGLE:I = 0x39

.field public static final CUJ_SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON:I = 0x1e

.field public static final CUJ_SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER:I = 0x1f

.field public static final CUJ_SHADE_APP_LAUNCH_FROM_QS_TILE:I = 0x20

.field public static final CUJ_SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON:I = 0x21

.field public static final CUJ_SPLASHSCREEN_AVD:I = 0x26

.field public static final CUJ_SPLASHSCREEN_EXIT_ANIM:I = 0x27

.field public static final CUJ_SPLIT_SCREEN_ENTER:I = 0x31

.field public static final CUJ_SPLIT_SCREEN_EXIT:I = 0x32

.field public static final CUJ_SPLIT_SCREEN_RESIZE:I = 0x34

.field public static final CUJ_STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP:I = 0x22

.field public static final CUJ_SUW_LOADING_SCREEN_FOR_STATUS:I = 0x30

.field public static final CUJ_SUW_LOADING_TO_NEXT_FLOW:I = 0x2f

.field public static final CUJ_SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS:I = 0x2d

.field public static final CUJ_SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS:I = 0x2e

.field public static final CUJ_TAKE_SCREENSHOT:I = 0x36

.field public static final CUJ_TO_STATSD_INTERACTION_TYPE:[I

.field public static final CUJ_UNFOLD_ANIM:I = 0x2c

.field public static final CUJ_USER_SWITCH:I = 0x25

.field public static final CUJ_VOLUME_CONTROL:I = 0x37

.field public static final CUJ_WALLPAPER_TRANSITION:I = 0x24

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ENABLED:Z

.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x1

.field private static final DEFAULT_TIMEOUT_MS:J

.field private static final DEFAULT_TRACE_THRESHOLD_FRAME_TIME_MILLIS:I = 0x40

.field private static final DEFAULT_TRACE_THRESHOLD_MISSED_FRAMES:I = 0x3

.field private static final DEFAULT_WORKER_NAME:Ljava/lang/String;

.field private static final NO_STATSD_LOGGING:I = -0x1

.field private static final SETTINGS_ENABLED_KEY:Ljava/lang/String; = "enabled"

.field private static final SETTINGS_SAMPLING_INTERVAL_KEY:Ljava/lang/String; = "sampling_interval"

.field private static final SETTINGS_THRESHOLD_FRAME_TIME_MILLIS_KEY:Ljava/lang/String; = "trace_threshold_frame_time_millis"

.field private static final SETTINGS_THRESHOLD_MISSED_FRAMES_KEY:Ljava/lang/String; = "trace_threshold_missed_frames"

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/internal/jank/InteractionJankMonitor;


# instance fields
.field private mEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMetrics:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

.field private final mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mRunningTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplingInterval:I

.field private final mTimeoutActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTraceThresholdFrameTimeMillis:I

.field private mTraceThresholdMissedFrames:I

.field private final mWorker:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$H_OZ99anWxwLySgdeSqJ03mcRzY(Lcom/android/internal/jank/InteractionJankMonitor;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->updateProperties(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_TIMEOUT_MS()J
    .registers 2

    sget-wide v0, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 4

    const-class v0, Lcom/android/internal/jank/InteractionJankMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_PREFIX:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Worker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_TIMEOUT_MS:J

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_SESSION_END"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_SESSION_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    const/16 v0, 0x3a

    new-array v0, v0, [I

    fill-array-data v0, :array_66

    sput-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    return-void

    nop

    :array_66
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
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
    .end array-data
.end method

.method public constructor <init>(Landroid/os/HandlerThread;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    iput-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    sget-boolean v1, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    iput-boolean v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    const/16 v3, 0x40

    iput v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    new-instance v3, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-direct {v3}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;-><init>()V

    iput-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mMetrics:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    iput-boolean v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    iput v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const-string v2, "interaction_jank_monitor"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z
    .registers 8

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmCujType(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->shouldMonitor(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_10

    monitor-exit v0

    return v3

    :cond_10
    invoke-direct {p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v2

    if-eqz v2, :cond_18

    monitor-exit v0

    return v3

    :cond_18
    new-instance v3, Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTag(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/android/internal/jank/InteractionJankMonitor$Session;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/android/internal/jank/InteractionJankMonitor;->createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Lcom/android/internal/jank/FrameTracker;

    move-result-object v3

    move-object v2, v3

    iget-object v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/internal/jank/FrameTracker;->begin()V

    invoke-static {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmTimeout(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)J

    move-result-wide v3

    new-instance v5, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;I)V

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/internal/jank/InteractionJankMonitor;->scheduleTimeoutAction(IJLjava/lang/Runnable;)V

    const/4 v3, 0x1

    monitor-exit v0

    return v3

    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private static getCujTypeFromInteraction(I)I
    .registers 2

    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/android/internal/jank/InteractionJankMonitor;
    .registers 4

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->sInstance:Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v0, :cond_1e

    const-class v0, Lcom/android/internal/jank/InteractionJankMonitor;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->sInstance:Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez v1, :cond_19

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor;

    new-instance v2, Landroid/os/HandlerThread;

    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_WORKER_NAME:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;-><init>(Landroid/os/HandlerThread;)V

    sput-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->sInstance:Lcom/android/internal/jank/InteractionJankMonitor;

    :cond_19
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    :goto_1e
    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->sInstance:Lcom/android/internal/jank/InteractionJankMonitor;

    return-object v0
.end method

.method public static getNameOfCuj(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_b4

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_6  #0x39
    const-string v0, "SETTINGS_TOGGLE"

    return-object v0

    :pswitch_9  #0x38
    const-string v0, "BIOMETRIC_PROMPT_TRANSITION"

    return-object v0

    :pswitch_c  #0x37
    const-string v0, "VOLUME_CONTROL"

    return-object v0

    :pswitch_f  #0x36
    const-string v0, "TAKE_SCREENSHOT"

    return-object v0

    :pswitch_12  #0x35
    const-string v0, "SETTINGS_SLIDER"

    return-object v0

    :pswitch_15  #0x34
    const-string v0, "CUJ_SPLIT_SCREEN_RESIZE"

    return-object v0

    :pswitch_18  #0x33
    const-string v0, "CUJ_LOCKSCREEN_LAUNCH_CAMERA"

    return-object v0

    :pswitch_1b  #0x32
    const-string v0, "SPLIT_SCREEN_EXIT"

    return-object v0

    :pswitch_1e  #0x31
    const-string v0, "SPLIT_SCREEN_ENTER"

    return-object v0

    :pswitch_21  #0x30
    const-string v0, "SUW_LOADING_SCREEN_FOR_STATUS"

    return-object v0

    :pswitch_24  #0x2f
    const-string v0, "SUW_LOADING_TO_NEXT_FLOW"

    return-object v0

    :pswitch_27  #0x2e
    const-string v0, "SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS"

    return-object v0

    :pswitch_2a  #0x2d
    const-string v0, "SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS"

    return-object v0

    :pswitch_2d  #0x2c
    const-string v0, "UNFOLD_ANIM"

    return-object v0

    :pswitch_30  #0x2b
    const-string v0, "ONE_HANDED_EXIT_TRANSITION"

    return-object v0

    :pswitch_33  #0x2a
    const-string v0, "ONE_HANDED_ENTER_TRANSITION"

    return-object v0

    :pswitch_36  #0x29
    const-string v0, "SCREEN_OFF_SHOW_AOD"

    return-object v0

    :pswitch_39  #0x28
    const-string v0, "SCREEN_OFF"

    return-object v0

    :pswitch_3c  #0x27
    const-string v0, "SPLASHSCREEN_EXIT_ANIM"

    return-object v0

    :pswitch_3f  #0x26
    const-string v0, "SPLASHSCREEN_AVD"

    return-object v0

    :pswitch_42  #0x25
    const-string v0, "USER_SWITCH"

    return-object v0

    :pswitch_45  #0x24
    const-string v0, "WALLPAPER_TRANSITION"

    return-object v0

    :pswitch_48  #0x23
    const-string v0, "PIP_TRANSITION"

    return-object v0

    :pswitch_4b  #0x22
    const-string v0, "STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP"

    return-object v0

    :pswitch_4e  #0x21
    const-string v0, "SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON"

    return-object v0

    :pswitch_51  #0x20
    const-string v0, "SHADE_APP_LAUNCH_FROM_QS_TILE"

    return-object v0

    :pswitch_54  #0x1f
    const-string v0, "SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER"

    return-object v0

    :pswitch_57  #0x1e
    const-string v0, "SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON"

    return-object v0

    :pswitch_5a  #0x1d
    const-string v0, "LOCKSCREEN_UNLOCK_ANIMATION"

    return-object v0

    :pswitch_5d  #0x1c
    const-string v0, "SETTINGS_PAGE_SCROLL"

    return-object v0

    :pswitch_60  #0x1b
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_WIDGET"

    return-object v0

    :pswitch_63  #0x1a
    const-string v0, "LAUNCHER_ALL_APPS_SCROLL"

    return-object v0

    :pswitch_66  #0x19
    const-string v0, "LAUNCHER_OPEN_ALL_APPS"

    return-object v0

    :pswitch_69  #0x18
    const-string v0, "LOCKSCREEN_TRANSITION_TO_AOD"

    return-object v0

    :pswitch_6c  #0x17
    const-string v0, "LOCKSCREEN_TRANSITION_FROM_AOD"

    return-object v0

    :pswitch_6f  #0x16
    const-string v0, "LOCKSCREEN_PIN_DISAPPEAR"

    return-object v0

    :pswitch_72  #0x15
    const-string v0, "LOCKSCREEN_PATTERN_DISAPPEAR"

    return-object v0

    :pswitch_75  #0x14
    const-string v0, "LOCKSCREEN_PASSWORD_DISAPPEAR"

    return-object v0

    :pswitch_78  #0x13
    const-string v0, "LOCKSCREEN_PIN_APPEAR"

    return-object v0

    :pswitch_7b  #0x12
    const-string v0, "LOCKSCREEN_PATTERN_APPEAR"

    return-object v0

    :pswitch_7e  #0x11
    const-string v0, "LOCKSCREEN_PASSWORD_APPEAR"

    return-object v0

    :pswitch_81  #0x10
    const-string v0, "NOTIFICATION_APP_START"

    return-object v0

    :pswitch_84  #0xf
    const-string v0, "NOTIFICATION_REMOVE"

    return-object v0

    :pswitch_87  #0xe
    const-string v0, "NOTIFICATION_ADD"

    return-object v0

    :pswitch_8a  #0xd
    const-string v0, "NOTIFICATION_HEADS_UP_DISAPPEAR"

    return-object v0

    :pswitch_8d  #0xc
    const-string v0, "NOTIFICATION_HEADS_UP_APPEAR"

    return-object v0

    :pswitch_90  #0xb
    const-string v0, "LAUNCHER_QUICK_SWITCH"

    return-object v0

    :pswitch_93  #0xa
    const-string v0, "LAUNCHER_APP_CLOSE_TO_PIP"

    return-object v0

    :pswitch_96  #0x9
    const-string v0, "LAUNCHER_APP_CLOSE_TO_HOME"

    return-object v0

    :pswitch_99  #0x8
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_ICON"

    return-object v0

    :pswitch_9c  #0x7
    const-string v0, "LAUNCHER_APP_LAUNCH_FROM_RECENTS"

    return-object v0

    :pswitch_9f  #0x6
    const-string v0, "SHADE_QS_SCROLL_SWIPE"

    return-object v0

    :pswitch_a2  #0x5
    const-string v0, "SHADE_QS_EXPAND_COLLAPSE"

    return-object v0

    :pswitch_a5  #0x4
    const-string v0, "SHADE_ROW_SWIPE"

    return-object v0

    :pswitch_a8  #0x3
    const-string v0, "SHADE_ROW_EXPAND"

    return-object v0

    :pswitch_ab  #0x2
    const-string v0, "SHADE_SCROLL_FLING"

    return-object v0

    :pswitch_ae  #0x1
    const-string v0, "SHADE_EXPAND_COLLAPSE_LOCK"

    return-object v0

    :pswitch_b1  #0x0
    const-string v0, "SHADE_EXPAND_COLLAPSE"

    return-object v0

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_b1  #00000000
        :pswitch_ae  #00000001
        :pswitch_ab  #00000002
        :pswitch_a8  #00000003
        :pswitch_a5  #00000004
        :pswitch_a2  #00000005
        :pswitch_9f  #00000006
        :pswitch_9c  #00000007
        :pswitch_99  #00000008
        :pswitch_96  #00000009
        :pswitch_93  #0000000a
        :pswitch_90  #0000000b
        :pswitch_8d  #0000000c
        :pswitch_8a  #0000000d
        :pswitch_87  #0000000e
        :pswitch_84  #0000000f
        :pswitch_81  #00000010
        :pswitch_7e  #00000011
        :pswitch_7b  #00000012
        :pswitch_78  #00000013
        :pswitch_75  #00000014
        :pswitch_72  #00000015
        :pswitch_6f  #00000016
        :pswitch_6c  #00000017
        :pswitch_69  #00000018
        :pswitch_66  #00000019
        :pswitch_63  #0000001a
        :pswitch_60  #0000001b
        :pswitch_5d  #0000001c
        :pswitch_5a  #0000001d
        :pswitch_57  #0000001e
        :pswitch_54  #0000001f
        :pswitch_51  #00000020
        :pswitch_4e  #00000021
        :pswitch_4b  #00000022
        :pswitch_48  #00000023
        :pswitch_45  #00000024
        :pswitch_42  #00000025
        :pswitch_3f  #00000026
        :pswitch_3c  #00000027
        :pswitch_39  #00000028
        :pswitch_36  #00000029
        :pswitch_33  #0000002a
        :pswitch_30  #0000002b
        :pswitch_2d  #0000002c
        :pswitch_2a  #0000002d
        :pswitch_27  #0000002e
        :pswitch_24  #0000002f
        :pswitch_21  #00000030
        :pswitch_1e  #00000031
        :pswitch_1b  #00000032
        :pswitch_18  #00000033
        :pswitch_15  #00000034
        :pswitch_12  #00000035
        :pswitch_f  #00000036
        :pswitch_c  #00000037
        :pswitch_9  #00000038
        :pswitch_6  #00000039
    .end packed-switch
.end method

.method public static getNameOfInteraction(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/android/internal/jank/InteractionJankMonitor;->getCujTypeFromInteraction(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/jank/InteractionJankMonitor;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTracker(I)Lcom/android/internal/jank/FrameTracker;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker;

    return-object v0
.end method

.method private handleCujEvents(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/jank/InteractionJankMonitor;->needRemoveTasks(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getCuj()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getCuj()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(I)V

    :cond_14
    return-void
.end method

.method static synthetic lambda$trigger$3(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getPerfettoTrigger()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PerfettoTrigger;->trigger(Ljava/lang/String;)V

    return-void
.end method

.method private needRemoveTasks(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Z
    .registers 8

    sget-object v0, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    sget-object v3, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2d

    invoke-virtual {p2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getReason()I

    move-result v3

    const/16 v4, 0x13

    if-eq v3, v4, :cond_2d

    move v3, v1

    goto :goto_2e

    :cond_2d
    move v3, v2

    :goto_2e
    if-nez v0, :cond_34

    if-eqz v3, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    :cond_34
    :goto_34
    return v1
.end method

.method private removeTimeout(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_1b

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private removeTracker(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private updateProperties(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "sampling_interval"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    const-string v1, "enabled"

    sget-boolean v2, Lcom/android/internal/jank/InteractionJankMonitor;->DEFAULT_ENABLED:Z

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    const-string/jumbo v1, "trace_threshold_missed_frames"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    const-string/jumbo v1, "trace_threshold_frame_time_millis"

    const/16 v2, 0x40

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method


# virtual methods
.method public begin(Landroid/view/View;I)Z
    .registers 6

    nop

    :try_start_1
    invoke-static {p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withView(ILandroid/view/View;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_d} :catch_e

    return v0

    :catch_e
    move-exception v0

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Build configuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->build()Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->beginInternal(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->TAG:Ljava/lang/String;

    const-string v2, "Build configuration failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public cancel(I)Z
    .registers 3

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    move-result v0

    return v0
.end method

.method public cancel(II)Z
    .registers 6

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_f
    invoke-virtual {v1, p2}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(I)V

    :cond_18
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public createFrameTracker(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;Lcom/android/internal/jank/InteractionJankMonitor$Session;)Lcom/android/internal/jank/FrameTracker;
    .registers 21

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->-$$Nest$fgetmView(Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)Landroid/view/View;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_b

    move-object v8, v0

    goto :goto_15

    :cond_b
    new-instance v3, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    invoke-virtual {v2}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;-><init>(Landroid/view/ThreadedRenderer;)V

    move-object v8, v3

    :goto_15
    if-nez v2, :cond_18

    goto :goto_21

    :cond_18
    new-instance v0, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;-><init>(Landroid/view/ViewRootImpl;)V

    :goto_21
    move-object v9, v0

    new-instance v10, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-direct {v10}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;-><init>()V

    new-instance v11, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;-><init>(Landroid/view/Choreographer;)V

    iget-object v3, v1, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_33
    new-instance v0, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/jank/InteractionJankMonitor;)V

    move-object/from16 v16, v0

    new-instance v0, Lcom/android/internal/jank/FrameTracker;

    iget-object v4, v1, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    iget-object v12, v1, Lcom/android/internal/jank/InteractionJankMonitor;->mMetrics:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    new-instance v13, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    invoke-direct {v13}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;-><init>()V

    iget v14, v1, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdMissedFrames:I

    iget v15, v1, Lcom/android/internal/jank/InteractionJankMonitor;->mTraceThresholdFrameTimeMillis:I

    move-object v5, v0

    move-object/from16 v6, p2

    move-object/from16 v17, p1

    invoke-direct/range {v5 .. v17}, Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V

    monitor-exit v3

    return-object v0

    :catchall_57
    move-exception v0

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_33 .. :try_end_59} :catchall_57

    throw v0
.end method

.method public end(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTimeout(I)V

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->getTracker(I)Lcom/android/internal/jank/FrameTracker;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    monitor-exit v0

    return v2

    :cond_f
    invoke-virtual {v1, v2}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-direct {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->removeTracker(I)V

    :cond_18
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method getLock()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertiesChangedListener()Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-object v0
.end method

.method public isInstrumenting(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mRunningTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method synthetic lambda$beginInternal$2$com-android-internal-jank-InteractionJankMonitor(I)V
    .registers 3

    const/16 v0, 0x13

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(II)Z

    return-void
.end method

.method synthetic lambda$createFrameTracker$1$com-android-internal-jank-InteractionJankMonitor(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->handleCujEvents(Ljava/lang/String;Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-internal-jank-InteractionJankMonitor()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "interaction_jank_monitor"

    invoke-static {v2, v1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/provider/DeviceConfig$OnPropertiesChangedListener;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public scheduleTimeoutAction(IJLjava/lang/Runnable;)V
    .registers 6

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mTimeoutActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p4, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public shouldMonitor(I)Z
    .registers 6

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    iget v1, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mSamplingInterval:I

    rem-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iget-boolean v3, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mEnabled:Z

    if-eqz v3, :cond_1a

    if-nez v0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    return v2
.end method

.method public trigger(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/jank/InteractionJankMonitor;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
