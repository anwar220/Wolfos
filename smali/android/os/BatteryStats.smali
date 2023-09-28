# classes3.dex

.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$UidMobileRadioStats;,
        Landroid/os/BatteryStats$ProportionalAttributionCalculator;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$RadioAccessTechnology;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$StatName;
    }
.end annotation


# static fields
.field private static final AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field public static final BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field private static final CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

.field static final CHECKIN_VERSION:I = 0x23

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EMERGENCY_SERVICE:I

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_OTHER:I

.field public static final DATA_CONNECTION_OUT_OF_SERVICE:I = 0x0

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field public static final DURATION_UNAVAILABLE:J = -0x1L

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final FOREGROUND_SERVICE:I = 0x16

.field private static final FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field public static final JOB_FRESHNESS_BUCKETS:[J

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_TRACKED_SCREEN_STATE:I = 0x4

.field public static final MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final POWER_DATA_UNAVAILABLE:J = -0x1L

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field public static final RADIO_ACCESS_TECHNOLOGY_COUNT:I = 0x3

.field public static final RADIO_ACCESS_TECHNOLOGY_LTE:I = 0x1

.field public static final RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

.field public static final RADIO_ACCESS_TECHNOLOGY_NR:I = 0x2

.field public static final RADIO_ACCESS_TECHNOLOGY_OTHER:I = 0x0

.field private static final RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field public static final UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field private static final sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .registers 66

    const-string/jumbo v0, "l"

    const-string v1, "c"

    const-string/jumbo v2, "u"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_4b8

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    const-string v1, "dark"

    const-string v2, "dim"

    const-string/jumbo v3, "medium"

    const-string/jumbo v4, "light"

    const-string v5, "bright"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v11

    sput-object v11, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v5, "3"

    const-string v13, "4"

    filled-new-array {v1, v2, v3, v5, v13}, [Ljava/lang/String;

    move-result-object v12

    sput-object v12, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v6

    array-length v6, v6

    const/4 v14, 0x1

    add-int/2addr v6, v14

    sput v6, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    add-int/2addr v6, v14

    sput v6, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    const-string/jumbo v15, "oos"

    const-string v16, "gprs"

    const-string v17, "edge"

    const-string/jumbo v18, "umts"

    const-string v19, "cdma"

    const-string v20, "evdo_0"

    const-string v21, "evdo_A"

    const-string v22, "1xrtt"

    const-string/jumbo v23, "hsdpa"

    const-string/jumbo v24, "hsupa"

    const-string/jumbo v25, "hspa"

    const-string/jumbo v26, "iden"

    const-string v27, "evdo_b"

    const-string/jumbo v28, "lte"

    const-string v29, "ehrpd"

    const-string/jumbo v30, "hspap"

    const-string v31, "gsm"

    const-string/jumbo v32, "td_scdma"

    const-string/jumbo v33, "iwlan"

    const-string/jumbo v34, "lte_ca"

    const-string/jumbo v35, "nr"

    const-string v36, "emngcy"

    const-string/jumbo v37, "other"

    filled-new-array/range {v15 .. v37}, [Ljava/lang/String;

    move-result-object v44

    sput-object v44, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    add-int/2addr v6, v14

    sput v6, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const-string v6, "Other"

    const-string v7, "LTE"

    const-string v8, "NR"

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    const-string/jumbo v15, "invalid"

    const-string v16, "disconn"

    const-string v17, "disabled"

    const-string/jumbo v18, "inactive"

    const-string/jumbo v19, "scanning"

    const-string v20, "authenticating"

    const-string v21, "associating"

    const-string v22, "associated"

    const-string v23, "4-way-handshake"

    const-string v24, "group-handshake"

    const-string v25, "completed"

    const-string v26, "dormant"

    const-string/jumbo v27, "uninit"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v33

    sput-object v33, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    const-string/jumbo v15, "inv"

    const-string v16, "dsc"

    const-string v17, "dis"

    const-string/jumbo v18, "inact"

    const-string/jumbo v19, "scan"

    const-string v20, "auth"

    const-string v21, "ascing"

    const-string v22, "asced"

    const-string v23, "4-way"

    const-string v24, "group"

    const-string v25, "compl"

    const-string v26, "dorm"

    const-string/jumbo v27, "uninit"

    filled-new-array/range {v15 .. v27}, [Ljava/lang/String;

    move-result-object v34

    sput-object v34, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v6, 0x12

    new-array v15, v6, [Landroid/os/BatteryStats$BitDescription;

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, -0x80000000

    const-string/jumbo v8, "running"

    const-string/jumbo v9, "r"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    aput-object v6, v15, v16

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x40000000  # 2.0f

    const-string/jumbo v8, "wake_lock"

    const-string/jumbo v9, "w"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v6, v15, v14

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x800000

    const-string/jumbo v8, "sensor"

    const-string/jumbo v9, "s"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x2

    aput-object v6, v15, v17

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x20000000

    const-string v8, "gps"

    const-string v9, "g"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x3

    aput-object v6, v15, v18

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x10000000

    const-string/jumbo v8, "wifi_full_lock"

    const-string v9, "Wl"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x4

    aput-object v6, v15, v19

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x8000000

    const-string/jumbo v8, "wifi_scan"

    const-string v9, "Ws"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v6, v15, v0

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x10000

    const-string/jumbo v8, "wifi_multicast"

    const-string v9, "Wm"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x6

    aput-object v6, v15, v20

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x4000000

    const-string/jumbo v8, "wifi_radio"

    const-string v9, "Wr"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x7

    aput-object v6, v15, v7

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x2000000

    const-string/jumbo v8, "mobile_radio"

    const-string v9, "Pr"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x8

    aput-object v6, v15, v21

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x200000

    const-string/jumbo v8, "phone_scanning"

    const-string v9, "Psc"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v22, 0x9

    aput-object v6, v15, v22

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x400000

    const-string v8, "audio"

    const-string v9, "a"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xa

    aput-object v6, v15, v10

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x100000

    const-string/jumbo v8, "screen"

    const-string v9, "S"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0xb

    aput-object v6, v15, v23

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x80000

    const-string/jumbo v8, "plugged"

    const-string v9, "BP"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xc

    aput-object v6, v15, v7

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/high16 v7, 0x40000

    const-string/jumbo v8, "screen_doze"

    const-string v9, "Sd"

    invoke-direct {v6, v7, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v24, 0xd

    aput-object v6, v15, v24

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const/16 v39, 0x3e00

    const/16 v40, 0x9

    const-string v41, "data_conn"

    const-string v42, "Pcn"

    move-object/from16 v38, v6

    move-object/from16 v43, v44

    invoke-direct/range {v38 .. v44}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v25, 0xe

    aput-object v6, v15, v25

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v7, "in"

    const-string/jumbo v8, "out"

    const-string v9, "emergency"

    const-string/jumbo v0, "off"

    filled-new-array {v7, v8, v9, v0}, [Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v7, "in"

    const-string/jumbo v8, "out"

    const-string v9, "em"

    filled-new-array {v7, v8, v9, v0}, [Ljava/lang/String;

    move-result-object v32

    const/16 v27, 0x1c0

    const/16 v28, 0x6

    const-string/jumbo v29, "phone_state"

    const-string v30, "Pst"

    move-object/from16 v26, v6

    invoke-direct/range {v26 .. v32}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v26, 0xf

    aput-object v6, v15, v26

    new-instance v6, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v7, "none"

    const-string/jumbo v8, "poor"

    const-string/jumbo v9, "moderate"

    const-string v10, "good"

    const-string v14, "great"

    filled-new-array {v7, v8, v9, v10, v14}, [Ljava/lang/String;

    move-result-object v41

    filled-new-array {v1, v2, v3, v5, v13}, [Ljava/lang/String;

    move-result-object v42

    const/16 v37, 0x38

    const/16 v38, 0x3

    const-string/jumbo v39, "phone_signal_strength"

    const-string v40, "Pss"

    move-object/from16 v36, v6

    invoke-direct/range {v36 .. v42}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v14, 0x10

    aput-object v6, v15, v14

    new-instance v28, Landroid/os/BatteryStats$BitDescription;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const-string v9, "brightness"

    const-string v10, "Sb"

    move-object/from16 v6, v28

    invoke-direct/range {v6 .. v12}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0x11

    aput-object v28, v15, v6

    sput-object v15, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    new-array v6, v14, [Landroid/os/BatteryStats$BitDescription;

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const/high16 v8, -0x80000000

    const-string/jumbo v9, "power_save"

    const-string/jumbo v10, "ps"

    invoke-direct {v7, v8, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v16

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const/high16 v8, 0x40000000  # 2.0f

    const-string/jumbo v9, "video"

    const-string/jumbo v10, "v"

    invoke-direct {v7, v8, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const/high16 v8, 0x20000000

    const-string/jumbo v9, "wifi_running"

    const-string v10, "Ww"

    invoke-direct {v7, v8, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v17

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const/high16 v8, 0x10000000

    const-string/jumbo v9, "wifi"

    const-string v10, "W"

    invoke-direct {v7, v8, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v18

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const/high16 v8, 0x8000000

    const-string v9, "flashlight"

    const-string v10, "fl"

    invoke-direct {v7, v8, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v19

    new-instance v7, Landroid/os/BatteryStats$BitDescription;

    const-string v8, "full"

    const-string v9, "???"

    filled-new-array {v0, v4, v8, v9}, [Ljava/lang/String;

    move-result-object v41

    const-string v8, "full"

    const-string v9, "???"

    filled-new-array {v0, v4, v8, v9}, [Ljava/lang/String;

    move-result-object v42

    const/high16 v37, 0x6000000

    const/16 v38, 0x19

    const-string v39, "device_idle"

    const-string v40, "di"

    move-object/from16 v36, v7

    invoke-direct/range {v36 .. v42}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x5

    aput-object v7, v6, v0

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x1000000

    const-string v7, "charging"

    const-string v8, "ch"

    invoke-direct {v0, v4, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v20

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x40000

    const-string/jumbo v7, "usb_data"

    const-string v8, "Ud"

    invoke-direct {v0, v4, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object v0, v6, v4

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x800000

    const-string/jumbo v7, "phone_in_call"

    const-string v8, "Pcl"

    invoke-direct {v0, v4, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v21

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v4, 0x400000

    const-string v7, "bluetooth"

    const-string v8, "b"

    invoke-direct {v0, v4, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v22

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    filled-new-array {v1, v2, v3, v5, v13}, [Ljava/lang/String;

    move-result-object v41

    filled-new-array {v1, v2, v3, v5, v13}, [Ljava/lang/String;

    move-result-object v42

    const/16 v37, 0x70

    const/16 v38, 0x4

    const-string/jumbo v39, "wifi_signal_strength"

    const-string v40, "Wss"

    move-object/from16 v36, v0

    invoke-direct/range {v36 .. v42}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v6, v1

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/16 v29, 0xf

    const/16 v30, 0x0

    const-string/jumbo v31, "wifi_suppl"

    const-string v32, "Wsp"

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v34}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v0, v6, v23

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x200000

    const-string v3, "camera"

    const-string v4, "ca"

    invoke-direct {v0, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc

    aput-object v0, v6, v2

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x100000

    const-string v3, "ble_scan"

    const-string v4, "bles"

    invoke-direct {v0, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v24

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const/high16 v2, 0x80000

    const-string v3, "cellular_high_tx_power"

    const-string v4, "Chtp"

    invoke-direct {v0, v2, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v6, v25

    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v2, "poor"

    const-string v3, "good"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "poor"

    const-string v3, "good"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v13

    const/16 v8, 0x80

    const/4 v9, 0x7

    const-string v10, "gps_signal_quality"

    const-string v11, "Gss"

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v0, v6, v26

    sput-object v6, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v44, "null"

    const-string/jumbo v45, "proc"

    const-string v46, "fg"

    const-string/jumbo v47, "top"

    const-string/jumbo v48, "sync"

    const-string/jumbo v49, "wake_lock_in"

    const-string/jumbo v50, "job"

    const-string/jumbo v51, "user"

    const-string/jumbo v52, "userfg"

    const-string v53, "conn"

    const-string v54, "active"

    const-string/jumbo v55, "pkginst"

    const-string/jumbo v56, "pkgunin"

    const-string v57, "alarm"

    const-string/jumbo v58, "stats"

    const-string/jumbo v59, "pkginactive"

    const-string/jumbo v60, "pkgactive"

    const-string/jumbo v61, "tmpwhitelist"

    const-string/jumbo v62, "screenwake"

    const-string/jumbo v63, "wakeupap"

    const-string/jumbo v64, "longwake"

    const-string v65, "est_capacity"

    filled-new-array/range {v44 .. v65}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    const-string v44, "Enl"

    const-string v45, "Epr"

    const-string v46, "Efg"

    const-string v47, "Etp"

    const-string v48, "Esy"

    const-string v49, "Ewl"

    const-string v50, "Ejb"

    const-string v51, "Eur"

    const-string v52, "Euf"

    const-string v53, "Ecn"

    const-string v54, "Eac"

    const-string v55, "Epi"

    const-string v56, "Epu"

    const-string v57, "Eal"

    const-string v58, "Est"

    const-string v59, "Eai"

    const-string v60, "Eaa"

    const-string v61, "Etw"

    const-string v62, "Esw"

    const-string v63, "Ewa"

    const-string v64, "Elw"

    const-string v65, "Eec"

    filled-new-array/range {v44 .. v65}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/BatteryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    new-instance v2, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/os/BatteryStats$$ExternalSyntheticLambda1;-><init>()V

    sput-object v2, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v3, 0x16

    new-array v3, v3, [Landroid/os/BatteryStats$IntToString;

    aput-object v0, v3, v16

    const/4 v4, 0x1

    aput-object v0, v3, v4

    aput-object v0, v3, v17

    aput-object v0, v3, v18

    aput-object v0, v3, v19

    const/4 v4, 0x5

    aput-object v0, v3, v4

    aput-object v0, v3, v20

    const/4 v4, 0x7

    aput-object v0, v3, v4

    aput-object v0, v3, v21

    aput-object v0, v3, v22

    aput-object v0, v3, v1

    aput-object v2, v3, v23

    const/16 v4, 0xc

    aput-object v0, v3, v4

    aput-object v0, v3, v24

    aput-object v0, v3, v25

    aput-object v0, v3, v26

    aput-object v0, v3, v14

    const/16 v4, 0x11

    aput-object v0, v3, v4

    const/16 v4, 0x12

    aput-object v0, v3, v4

    const/16 v4, 0x13

    aput-object v0, v3, v4

    const/16 v4, 0x14

    aput-object v0, v3, v4

    const/16 v0, 0x15

    aput-object v2, v3, v0

    sput-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    const-string/jumbo v4, "off"

    const-string/jumbo v5, "scanning"

    const-string/jumbo v6, "no_net"

    const-string v7, "disconn"

    const-string/jumbo v8, "sta"

    const-string/jumbo v9, "p2p"

    const-string/jumbo v10, "sta_p2p"

    const-string/jumbo v11, "soft_ap"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    new-array v0, v1, [I

    fill-array-data v0, :array_4d0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4e8

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    const-string/jumbo v2, "screen off"

    const-string/jumbo v3, "screen off power save"

    const-string/jumbo v4, "screen off device idle"

    const-string/jumbo v5, "screen on"

    const-string/jumbo v6, "screen on power save"

    const-string/jumbo v7, "screen doze"

    const-string/jumbo v8, "screen doze power save"

    const-string/jumbo v9, "screen doze-suspend"

    const-string/jumbo v10, "screen doze-suspend power save"

    const-string/jumbo v11, "screen doze-suspend device idle"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    const-string/jumbo v2, "scrn"

    aput-object v2, v0, v16

    const-string v2, "cpu"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "blue"

    aput-object v2, v0, v17

    const-string v2, "camera"

    aput-object v2, v0, v18

    const-string v2, "audio"

    aput-object v2, v0, v19

    const-string/jumbo v2, "video"

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "flashlight"

    aput-object v2, v0, v20

    const-string v2, "cell"

    aput-object v2, v0, v21

    const-string/jumbo v2, "sensors"

    aput-object v2, v0, v22

    const-string v2, "gnss"

    aput-object v2, v0, v1

    const-string/jumbo v1, "wifi"

    aput-object v1, v0, v23

    const-string/jumbo v1, "memory"

    aput-object v1, v0, v24

    const-string/jumbo v1, "phone"

    aput-object v1, v0, v25

    const-string v1, "ambi"

    aput-object v1, v0, v26

    const-string/jumbo v1, "idle"

    aput-object v1, v0, v14

    return-void

    :array_4b8
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_4d0
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_4e8
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .registers 3

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return v1

    :cond_c
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .registers 10

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2

    :cond_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4f

    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_38

    goto :goto_4f

    :cond_38
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v5, v1

    move v6, v0

    :goto_3e
    if-ge v6, v5, :cond_4e

    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_4b

    return v2

    :cond_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_4e
    return v0

    :cond_4f
    :goto_4f
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 13

    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x414b774000000000L  # 3600000.0

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->print(D)V

    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_53
    if-ge v3, v2, :cond_64

    aget-object v4, v1, v3

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_64
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 16

    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {p0, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x414b774000000000L  # 3600000.0

    div-double/2addr v6, v8

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10100000005L

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v6, v8

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    const/4 v3, 0x0

    :goto_5a
    array-length v6, v2

    if-ge v3, v6, :cond_7d

    aget-object v6, v2, v3

    const-wide v7, 0x20b00000004L

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v9, 0x10500000001L

    invoke-virtual {p0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v6, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    invoke-virtual {p0, v4, v5, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5a

    :cond_7d
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_9

    return-void

    :cond_9
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    const-string v13, " steps)"

    const-string v14, " (from "

    const/4 v15, 0x0

    if-ltz v3, :cond_3f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " total time: "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v15

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3f
    const/4 v3, 0x0

    move v8, v3

    :goto_41
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v4, v3

    if-ge v8, v4, :cond_8a

    aget v3, v3, v8

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v8

    int-to-long v6, v3

    move-object/from16 v3, p4

    move/from16 v16, v8

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-lez v5, :cond_87

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v16

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " time: "

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v5, p6, v15

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_87
    add-int/lit8 v8, v16, 0x1

    goto :goto_41

    :cond_8a
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_34

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_41

    :cond_34
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_44
    return-void
.end method

.method private static dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_93

    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10300000001L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000002L

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v3}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x0

    const-wide/16 v11, 0x3

    and-long v13, v8, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x1

    if-nez v13, :cond_4d

    and-long/2addr v11, v6

    long-to-int v11, v11

    add-int/2addr v11, v14

    packed-switch v11, :pswitch_data_94

    const/4 v10, 0x5

    goto :goto_4d

    :pswitch_46  #0x4
    const/4 v10, 0x4

    goto :goto_4d

    :pswitch_48  #0x3
    const/4 v10, 0x3

    goto :goto_4d

    :pswitch_4a  #0x2
    const/4 v10, 0x1

    goto :goto_4d

    :pswitch_4c  #0x1
    const/4 v10, 0x2

    :cond_4d
    :goto_4d
    const-wide v11, 0x10e00000003L

    invoke-virtual {v0, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v11, 0x0

    const-wide/16 v12, 0x4

    and-long v17, v8, v12

    cmp-long v17, v17, v15

    const/16 v18, 0x2

    if-nez v17, :cond_69

    and-long/2addr v12, v6

    cmp-long v12, v12, v15

    if-eqz v12, :cond_66

    goto :goto_68

    :cond_66
    move/from16 v14, v18

    :goto_68
    move v11, v14

    :cond_69
    const-wide v12, 0x10e00000004L

    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v12, 0x0

    const-wide/16 v13, 0x8

    and-long v19, v8, v13

    cmp-long v17, v19, v15

    if-nez v17, :cond_84

    and-long/2addr v13, v6

    cmp-long v13, v13, v15

    if-eqz v13, :cond_80

    goto :goto_82

    :cond_80
    const/16 v18, 0x3

    :goto_82
    move/from16 v12, v18

    :cond_84
    const-wide v13, 0x10e00000005L

    invoke-virtual {v0, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    :cond_93
    return-void

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_4a  #00000002
        :pswitch_48  #00000003
        :pswitch_46  #00000004
    .end packed-switch
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return v3

    :cond_a
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v4, :cond_f

    return v3

    :cond_f
    if-nez p4, :cond_14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    :goto_18
    const/4 v7, 0x1

    if-ge v6, v4, :cond_158

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x3

    const-wide/16 v21, 0x0

    if-eqz p4, :cond_b4

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v3

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v5, v7

    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const-string v24, ""

    const/16 v25, 0x2

    if-nez v23, :cond_73

    move/from16 v26, v4

    and-long v3, v11, v19

    long-to-int v3, v3

    add-int/2addr v3, v7

    packed-switch v3, :pswitch_data_15a

    const-string v3, "?"

    aput-object v3, v5, v25

    goto :goto_77

    :pswitch_5b  #0x4
    const-string/jumbo v3, "sds"

    aput-object v3, v5, v25

    goto :goto_77

    :pswitch_61  #0x3
    const-string/jumbo v3, "sd"

    aput-object v3, v5, v25

    goto :goto_77

    :pswitch_67  #0x2
    const-string/jumbo v3, "s+"

    aput-object v3, v5, v25

    goto :goto_77

    :pswitch_6d  #0x1
    const-string/jumbo v3, "s-"

    aput-object v3, v5, v25

    goto :goto_77

    :cond_73
    move/from16 v26, v4

    aput-object v24, v5, v25

    :goto_77
    and-long v3, v13, v17

    cmp-long v3, v3, v21

    const/4 v4, 0x3

    if-nez v3, :cond_8e

    and-long v17, v11, v17

    cmp-long v3, v17, v21

    if-eqz v3, :cond_88

    const-string/jumbo v3, "p+"

    goto :goto_8b

    :cond_88
    const-string/jumbo v3, "p-"

    :goto_8b
    aput-object v3, v5, v4

    goto :goto_90

    :cond_8e
    aput-object v24, v5, v4

    :goto_90
    and-long v3, v13, v15

    cmp-long v3, v3, v21

    const/4 v4, 0x4

    if-nez v3, :cond_a6

    and-long/2addr v15, v11

    cmp-long v3, v15, v21

    if-eqz v3, :cond_a0

    const-string/jumbo v3, "i+"

    goto :goto_a3

    :cond_a0
    const-string/jumbo v3, "i-"

    :goto_a3
    aput-object v3, v5, v4

    goto :goto_a8

    :cond_a6
    aput-object v24, v5, v4

    :goto_a8
    move-object v3, v5

    check-cast v3, [Ljava/lang/Object;

    const-string/jumbo v4, "i"

    const/4 v7, 0x0

    invoke-static {v0, v7, v4, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_14d

    :cond_b4
    move/from16 v26, v4

    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/4 v4, 0x0

    and-long v23, v13, v19

    cmp-long v23, v23, v21

    const-string v3, " ("

    if-nez v23, :cond_107

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v1, v11, v19

    long-to-int v1, v1

    add-int/2addr v1, v7

    packed-switch v1, :pswitch_data_166

    const-string/jumbo v1, "screen-?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_106

    :pswitch_eb  #0x4
    const-string/jumbo v1, "screen-doze-suspend"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_106

    :pswitch_f2  #0x3
    const-string/jumbo v1, "screen-doze"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_106

    :pswitch_f9  #0x2
    const-string/jumbo v1, "screen-on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_106

    :pswitch_100  #0x1
    const-string/jumbo v1, "screen-off"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_106
    const/4 v4, 0x1

    :cond_107
    and-long v1, v13, v17

    cmp-long v1, v1, v21

    const-string v2, ", "

    if-nez v1, :cond_128

    if-eqz v4, :cond_113

    move-object v1, v2

    goto :goto_114

    :cond_113
    move-object v1, v3

    :goto_114
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v17, v11, v17

    cmp-long v1, v17, v21

    if-eqz v1, :cond_121

    const-string/jumbo v1, "power-save-on"

    goto :goto_124

    :cond_121
    const-string/jumbo v1, "power-save-off"

    :goto_124
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_128
    and-long v17, v13, v15

    cmp-long v1, v17, v21

    if-nez v1, :cond_143

    if-eqz v4, :cond_131

    move-object v3, v2

    :cond_131
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v1, v11, v15

    cmp-long v1, v1, v21

    if-eqz v1, :cond_13d

    const-string v1, "device-idle-on"

    goto :goto_13f

    :cond_13d
    const-string v1, "device-idle-off"

    :goto_13f
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_143
    if-eqz v4, :cond_14a

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_14a
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    :goto_14d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v4, v26

    const/4 v3, 0x0

    goto/16 :goto_18

    :cond_158
    return v7

    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_6d  #00000001
        :pswitch_67  #00000002
        :pswitch_61  #00000003
        :pswitch_5b  #00000004
    .end packed-switch

    :pswitch_data_166
    .packed-switch 0x1
        :pswitch_100  #00000001
        :pswitch_f9  #00000002
        :pswitch_f2  #00000003
        :pswitch_eb  #00000004
    .end packed-switch
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .registers 32

    move-object/from16 v8, p1

    new-instance v0, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    new-instance v1, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move-object v9, v1

    const-wide/16 v1, -0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, v6

    :goto_14
    move-object/from16 v11, p0

    invoke-virtual {v11, v9}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    const-wide/16 v12, 0x0

    if-eqz v6, :cond_16a

    iget-wide v14, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v1, v3, v12

    if-gez v1, :cond_28

    move-wide v1, v14

    move-wide/from16 v16, v1

    goto :goto_2a

    :cond_28
    move-wide/from16 v16, v3

    :goto_2a
    iget-wide v1, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v1, v1, p3

    if-ltz v1, :cond_165

    cmp-long v1, p3, v12

    const/16 v18, 0x1

    const/4 v7, 0x0

    if-ltz v1, :cond_14b

    if-nez v5, :cond_14b

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-eq v1, v3, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x4

    if-eq v1, v3, :cond_73

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_4f

    goto :goto_73

    :cond_4f
    iget-wide v3, v9, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v1, v3, v12

    if-eqz v1, :cond_70

    const/4 v12, 0x1

    iget-byte v13, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v2, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_61

    move/from16 v6, v18

    goto :goto_62

    :cond_61
    move v6, v7

    :goto_62
    move-object/from16 v1, p1

    move-object v2, v9

    move-wide/from16 v3, v16

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v13, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v11, v7

    goto :goto_8b

    :cond_70
    move v12, v5

    move v11, v7

    goto :goto_8b

    :cond_73
    :goto_73
    const/4 v12, 0x1

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_7b

    move/from16 v13, v18

    goto :goto_7c

    :cond_7b
    move v13, v7

    :goto_7c
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    move v11, v7

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v11, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_8b
    if-eqz v10, :cond_14c

    iget-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v1, :cond_a6

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_98

    move/from16 v7, v18

    goto :goto_99

    :cond_98
    move v7, v11

    :goto_99
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    iput-byte v11, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_a6
    iget v13, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v7, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    new-instance v1, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v1}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    move v6, v1

    :goto_b3
    const/16 v1, 0x16

    if-ge v6, v1, :cond_141

    nop

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v19

    if-nez v19, :cond_c3

    move/from16 v25, v6

    move-object v11, v7

    goto/16 :goto_13b

    :cond_c3
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_cb
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Ljava/util/Map$Entry;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    move v5, v1

    :goto_e2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_12f

    iput v6, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iput v2, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_10b

    move/from16 v22, v18

    goto :goto_10d

    :cond_10b
    move/from16 v22, v11

    :goto_10d
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v23, v4

    move/from16 v24, v5

    move-wide/from16 v4, v16

    move/from16 v25, v6

    move/from16 v6, p5

    move-object v11, v7

    move/from16 v7, v22

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    const/4 v1, 0x0

    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v1, v9, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v5, v24, 0x1

    move-object v7, v11

    move-object/from16 v4, v23

    move/from16 v6, v25

    const/4 v11, 0x0

    goto :goto_e2

    :cond_12f
    move-object/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move-object v11, v7

    const/4 v11, 0x0

    goto :goto_cb

    :cond_138
    move/from16 v25, v6

    move-object v11, v7

    :goto_13b
    add-int/lit8 v6, v25, 0x1

    move-object v7, v11

    const/4 v11, 0x0

    goto/16 :goto_b3

    :cond_141
    move/from16 v25, v6

    move-object v11, v7

    iput v13, v9, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v11, v9, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v1, 0x0

    move-object v10, v1

    goto :goto_14c

    :cond_14b
    move v12, v5

    :cond_14c
    :goto_14c
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_153

    move/from16 v7, v18

    goto :goto_154

    :cond_153
    const/4 v7, 0x0

    :goto_154
    move-object v1, v0

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move v5, v12

    move-wide v1, v14

    move-wide/from16 v3, v16

    goto/16 :goto_14

    :cond_165
    move-wide v1, v14

    move-wide/from16 v3, v16

    goto/16 :goto_14

    :cond_16a
    cmp-long v6, p3, v12

    if-ltz v6, :cond_181

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    if-eqz p5, :cond_176

    const-string v6, "NEXT: "

    goto :goto_178

    :cond_176
    const-string v6, "  NEXT: "

    :goto_178
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v6, 0x1

    add-long/2addr v6, v1

    invoke-virtual {v8, v6, v7}, Ljava/io/PrintWriter;->println(J)V

    :cond_181
    return-void
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9

    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    array-length v0, p4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_14

    aget-object v2, p4, v1

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V
    .registers 66
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Landroid/os/BatteryUsageStats;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Landroid/os/BatteryStats$ProportionalAttributionCalculator;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v11, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long v4, v13, v2

    move-object/from16 v15, p0

    invoke-virtual {v15, v11, v12}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v6, v0

    if-eqz v8, :cond_59

    const/4 v0, 0x0

    :goto_24
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_56

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    move-wide/from16 v16, v4

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_4a

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v18

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4a
    move/from16 v18, v4

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v16

    goto :goto_24

    :cond_56
    move-wide/from16 v16, v4

    goto :goto_5b

    :cond_59
    move-wide/from16 v16, v4

    :goto_5b
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_6b
    if-ltz v0, :cond_84

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Landroid/os/UidBatteryConsumer;

    move-object/from16 v18, v5

    invoke-virtual {v3}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v5, v18

    const/4 v3, 0x1

    goto :goto_6b

    :cond_84
    move-object/from16 v18, v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_8f
    if-ge v0, v3, :cond_aa7

    move/from16 v21, v3

    move-object/from16 v20, v4

    const-wide v3, 0x20b00000005L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v8, v22

    check-cast v8, Landroid/os/BatteryStats$Uid;

    move/from16 v22, v10

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move-wide/from16 v23, v11

    const-wide v11, 0x10500000001L

    invoke-virtual {v7, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_c8

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v12

    :cond_c8
    nop

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v27

    const/16 v19, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v28, v0

    move/from16 v0, v27

    :goto_d9
    move-object/from16 v27, v6

    if-ltz v0, :cond_1cb

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    nop

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v35 .. v35}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v35

    if-nez v35, :cond_107

    move-object/from16 v9, p1

    move-wide/from16 v41, v1

    move-wide/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v43, v8

    move/from16 v35, v10

    move-object v8, v11

    move-object/from16 v46, v12

    move-wide/from16 v39, v13

    goto/16 :goto_1b1

    :cond_107
    move-object/from16 v9, p1

    move-wide/from16 v37, v3

    move/from16 v35, v10

    move-object v10, v12

    move-wide/from16 v39, v13

    const-wide v3, 0x20b00000002L

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v3, 0x10900000001L

    invoke-virtual {v9, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_12a
    if-ltz v3, :cond_1a3

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v19, v7

    const/4 v7, 0x0

    invoke-virtual {v14, v1, v2, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v41

    move-object/from16 v36, v5

    invoke-static/range {v41 .. v42}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v4

    move-wide/from16 v41, v1

    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v1

    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v2

    const-wide/16 v29, 0x0

    cmp-long v43, v4, v29

    if-nez v43, :cond_159

    if-nez v1, :cond_159

    if-nez v2, :cond_159

    move-object/from16 v43, v8

    move-object/from16 v46, v10

    move-object v8, v11

    goto :goto_192

    :cond_159
    move-object/from16 v43, v8

    move-object/from16 v45, v14

    const-wide v7, 0x20b00000002L

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v46, v10

    move-object v8, v11

    const-wide v10, 0x10900000001L

    invoke-virtual {v9, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v10, 0x10300000002L

    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10500000003L

    invoke-virtual {v9, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10500000004L

    invoke-virtual {v9, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_192
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v15, p0

    move-object v11, v8

    move-object/from16 v7, v19

    move-object/from16 v5, v36

    move-wide/from16 v1, v41

    move-object/from16 v8, v43

    move-object/from16 v10, v46

    const/4 v4, 0x1

    goto :goto_12a

    :cond_1a3
    move-wide/from16 v41, v1

    move-object/from16 v36, v5

    move-object/from16 v19, v7

    move-object/from16 v43, v8

    move-object/from16 v46, v10

    move-object v8, v11

    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_1b1
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v15, p0

    move-object v11, v8

    move-object v7, v9

    move-object/from16 v6, v27

    move/from16 v10, v35

    move-object/from16 v5, v36

    move-wide/from16 v3, v37

    move-wide/from16 v13, v39

    move-wide/from16 v1, v41

    move-object/from16 v8, v43

    move-object/from16 v12, v46

    move-object/from16 v9, p4

    goto/16 :goto_d9

    :cond_1cb
    move-object/from16 v9, p1

    move-wide/from16 v41, v1

    move-wide/from16 v37, v3

    move-object/from16 v36, v5

    move-object/from16 v43, v8

    move/from16 v35, v10

    move-object v8, v11

    move-object/from16 v46, v12

    move-wide/from16 v39, v13

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_201

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v6, 0x20b00000002L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v10, 0x10900000001L

    invoke-virtual {v9, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1e0

    :cond_201
    const-wide v6, 0x20b00000002L

    const-wide v10, 0x10900000001L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    const-wide v12, 0x10300000001L

    if-eqz v0, :cond_245

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    move-wide/from16 v14, v39

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_22b

    invoke-virtual {v3, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v4

    goto :goto_22d

    :cond_22b
    const-wide/16 v4, 0x0

    :goto_22d
    const-wide v6, 0x10b00000018L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v9, v12, v13, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v10, 0x10300000002L

    invoke-virtual {v9, v10, v11, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_24c

    :cond_245
    move-wide/from16 v14, v39

    const-wide v10, 0x10300000002L

    :goto_24c
    const-wide v1, 0x10b00000008L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move/from16 v7, v28

    move-object/from16 v0, p1

    move-wide/from16 v33, v41

    move/from16 v19, v21

    move-wide/from16 v4, v37

    const/4 v10, 0x1

    move-wide/from16 v47, v4

    move-wide/from16 v39, v16

    move-object/from16 v16, v18

    move-object/from16 v11, v20

    move-object/from16 v17, v36

    move-wide/from16 v4, v39

    move-object/from16 v18, v27

    const/4 v10, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000003L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    invoke-static {v9, v0, v1, v2, v10}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v20

    const-wide v4, 0x10500000006L

    if-eqz v20, :cond_2ff

    const-wide v1, 0x10b00000006L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v31, 0x10b00000001L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v12, v1

    move-wide/from16 v1, v31

    move-object/from16 v3, v20

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000002L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000004L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_2d9

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_2da

    :cond_2d9
    move v6, v10

    :goto_2da
    const-wide v4, 0x10500000005L

    invoke-virtual {v9, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_2f2

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_2f3

    :cond_2f2
    move v6, v10

    :goto_2f3
    const-wide v1, 0x10500000006L

    invoke-virtual {v9, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_305

    :cond_2ff
    move-wide v1, v4

    const-wide v4, 0x10500000005L

    :goto_305
    const-wide v12, 0x10b00000009L

    invoke-virtual/range {v43 .. v43}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v1, v12

    move-wide v12, v4

    move-wide/from16 v4, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000007L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-object/from16 v6, v43

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v1

    if-eqz v1, :cond_3a9

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v0

    if-eqz v0, :cond_3a3

    array-length v12, v0

    array-length v13, v1

    if-ne v12, v13, :cond_3a3

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v12

    if-nez v12, :cond_35c

    array-length v13, v0

    new-array v12, v13, [J

    :cond_35c
    const/4 v13, 0x0

    :goto_35d
    array-length v10, v0

    if-ge v13, v10, :cond_39d

    const-wide v2, 0x20b00000003L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    add-int/lit8 v10, v13, 0x1

    move-wide/from16 v31, v14

    const-wide v14, 0x10500000001L

    invoke-virtual {v9, v14, v15, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v14, v0, v13

    move-object/from16 v21, v0

    move-object v10, v1

    const-wide v0, 0x10300000002L

    invoke-virtual {v9, v0, v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v0, v12, v13

    const-wide v14, 0x10300000003L

    invoke-virtual {v9, v14, v15, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v13, v13, 0x1

    move-object v1, v10

    move-object/from16 v0, v21

    move-wide/from16 v14, v31

    const-wide v2, 0x10300000002L

    const/4 v10, 0x0

    goto :goto_35d

    :cond_39d
    move-object/from16 v21, v0

    move-object v10, v1

    move-wide/from16 v31, v14

    goto :goto_3ac

    :cond_3a3
    move-object/from16 v21, v0

    move-object v10, v1

    move-wide/from16 v31, v14

    goto :goto_3ac

    :cond_3a9
    move-object v10, v1

    move-wide/from16 v31, v14

    :goto_3ac
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v0

    new-array v12, v0, [J

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v0

    new-array v13, v0, [J

    const/4 v0, 0x0

    :goto_3b9
    const-wide v14, 0x10e00000001L

    const/4 v3, 0x7

    if-ge v0, v3, :cond_442

    invoke-virtual {v6, v12, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v1

    if-eqz v1, :cond_42e

    invoke-virtual {v6, v13, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v1

    if-nez v1, :cond_3d3

    const-wide/16 v1, 0x0

    invoke-static {v13, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_3d5

    :cond_3d3
    const-wide/16 v1, 0x0

    :goto_3d5
    const-wide v1, 0x20b00000004L

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v9, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v3, 0x0

    :goto_3e2
    array-length v14, v12

    if-ge v3, v14, :cond_422

    move/from16 v37, v7

    move-object/from16 v21, v8

    const-wide v14, 0x20b00000002L

    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    add-int/lit8 v14, v3, 0x1

    move-object/from16 v41, v10

    move-object/from16 v38, v11

    const-wide v10, 0x10500000001L

    invoke-virtual {v9, v10, v11, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-wide v10, v12, v3

    const-wide v14, 0x10300000002L

    invoke-virtual {v9, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    aget-wide v10, v13, v3

    const-wide v14, 0x10300000003L

    invoke-virtual {v9, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v8, v21

    move/from16 v7, v37

    move-object/from16 v11, v38

    move-object/from16 v10, v41

    goto :goto_3e2

    :cond_422
    move/from16 v37, v7

    move-object/from16 v21, v8

    move-object/from16 v41, v10

    move-object/from16 v38, v11

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_436

    :cond_42e
    move/from16 v37, v7

    move-object/from16 v21, v8

    move-object/from16 v41, v10

    move-object/from16 v38, v11

    :goto_436
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v8, v21

    move/from16 v7, v37

    move-object/from16 v11, v38

    move-object/from16 v10, v41

    goto/16 :goto_3b9

    :cond_442
    move/from16 v37, v7

    move-object/from16 v21, v8

    move-object/from16 v41, v10

    move-object/from16 v38, v11

    const-wide v1, 0x10300000002L

    const-wide v7, 0x20b00000002L

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v10, 0x10b0000000aL

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v42

    const/16 v43, 0x0

    move-object/from16 v0, p1

    move-object/from16 v29, v41

    const-wide/16 v44, 0x0

    move-wide v1, v10

    move v10, v3

    move-object/from16 v3, v42

    move-wide/from16 v41, v4

    move-wide/from16 v4, v39

    move-object v11, v6

    move/from16 v6, v43

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000bL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v6

    const/4 v0, 0x0

    :goto_494
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_520

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseIntArray;

    if-eqz v1, :cond_509

    const-wide v2, 0x20b00000010L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v10, v30

    check-cast v10, Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {v9, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v10

    array-length v4, v10

    const/4 v5, 0x0

    :goto_4c1
    if-ge v5, v4, :cond_4fc

    aget v14, v10, v5

    move-object v15, v12

    move-object/from16 v30, v13

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    const-wide v7, 0x10e00000001L

    invoke-virtual {v9, v7, v8, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v7, 0x0

    invoke-virtual {v1, v14, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    move-object/from16 v56, v1

    move-wide/from16 v57, v2

    const-wide v1, 0x10500000002L

    invoke-virtual {v9, v1, v2, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    move-object v12, v15

    move-object/from16 v13, v30

    move-object/from16 v1, v56

    move-wide/from16 v2, v57

    const-wide v7, 0x20b00000002L

    const-wide v14, 0x10e00000001L

    goto :goto_4c1

    :cond_4fc
    move-object/from16 v56, v1

    move-wide/from16 v57, v2

    move-object v15, v12

    move-object/from16 v30, v13

    move-wide/from16 v1, v57

    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_50e

    :cond_509
    move-object/from16 v56, v1

    move-object v15, v12

    move-object/from16 v30, v13

    :goto_50e
    add-int/lit8 v0, v0, 0x1

    move-object v12, v15

    move-object/from16 v13, v30

    const-wide v7, 0x20b00000002L

    const/4 v10, 0x7

    const-wide v14, 0x10e00000001L

    goto/16 :goto_494

    :cond_520
    move-object v15, v12

    move-object/from16 v30, v13

    const-wide v1, 0x10500000002L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v8, v0

    :goto_533
    if-ltz v8, :cond_585

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    const-wide v3, 0x20b0000000fL

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v4, 0x10900000001L

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v49, 0x10b00000002L

    const/16 v51, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v54, v1

    move-wide/from16 v1, v49

    move-object v3, v10

    move-wide/from16 v4, v39

    move-object/from16 v49, v6

    move/from16 v6, v51

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object v3, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v9, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v6, v49

    const-wide v1, 0x10500000002L

    goto :goto_533

    :cond_585
    move-object/from16 v49, v6

    const-wide v0, 0x10b00000004L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v9, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b00000011L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    nop

    invoke-virtual {v11, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000001L

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v0, 0x1

    invoke-virtual {v11, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x10300000002L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v8, 0x2

    invoke-virtual {v11, v8, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const-wide v4, 0x10300000003L

    invoke-virtual {v9, v4, v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v0, 0x3

    invoke-virtual {v11, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x10300000004L

    invoke-virtual {v9, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000005L

    const/4 v6, 0x4

    invoke-virtual {v11, v6, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000006L

    const/4 v4, 0x5

    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000007L

    invoke-virtual {v11, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000008L

    const/4 v4, 0x1

    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v5

    invoke-virtual {v9, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000009L

    invoke-virtual {v11, v8, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1030000000aL

    invoke-virtual {v11, v0, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v9, v1, v2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1030000000bL

    invoke-virtual {v11, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v4

    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1050000000cL

    invoke-virtual {v11, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000dL

    invoke-virtual {v11, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v4

    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1050000000eL

    invoke-virtual {v11, v3}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v4

    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x1030000000fL

    const/4 v2, 0x6

    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000010L

    const/4 v4, 0x7

    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    invoke-virtual {v9, v0, v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000011L

    const/16 v4, 0x8

    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    invoke-virtual {v9, v0, v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000012L

    const/16 v5, 0x9

    move-object v10, v7

    invoke-virtual {v11, v5, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000013L

    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000014L

    const/4 v2, 0x7

    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000015L

    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    invoke-virtual {v9, v0, v1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000016L

    invoke-virtual {v11, v5, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v9, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move/from16 v14, v35

    move-object/from16 v7, v38

    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/UidBatteryConsumer;

    if-eqz v6, :cond_70d

    const-wide v0, 0x10b00000012L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10100000001L

    invoke-virtual {v6}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v4

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10800000002L

    move-object/from16 v4, p4

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v5

    invoke-virtual {v9, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10100000003L

    move-wide/from16 v54, v12

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v12

    invoke-virtual {v9, v2, v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v2, 0x10100000004L

    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v12

    invoke-virtual {v9, v2, v3, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_711

    :cond_70d
    move-object/from16 v4, p4

    move-wide/from16 v54, v12

    :goto_711
    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_71c
    if-ltz v0, :cond_797

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Proc;

    const-wide v2, 0x20b00000013L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v13, v6

    move-object/from16 v38, v7

    const-wide v6, 0x10900000001L

    invoke-virtual {v9, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v6

    move-object/from16 v35, v12

    move-object/from16 v50, v13

    const-wide v12, 0x10300000002L

    invoke-virtual {v9, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v6

    const-wide v12, 0x10300000003L

    invoke-virtual {v9, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v6

    const-wide v12, 0x10300000004L

    invoke-virtual {v9, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v6

    const-wide v12, 0x10500000005L

    invoke-virtual {v9, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v6

    const-wide v12, 0x10500000006L

    invoke-virtual {v9, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000007L

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v12

    invoke-virtual {v9, v6, v7, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v12, v35

    move-object/from16 v7, v38

    move-object/from16 v6, v50

    goto :goto_71c

    :cond_797
    move-object/from16 v50, v6

    move-object/from16 v38, v7

    move-object/from16 v35, v12

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v7

    const/4 v0, 0x0

    move v12, v0

    :goto_7a3
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_80c

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v27

    if-nez v27, :cond_7be

    move-object/from16 v25, v50

    const-wide v51, 0x10500000001L

    goto :goto_805

    :cond_7be
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v28

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const-wide v0, 0x20b00000015L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v51, v1

    const-wide v1, 0x10500000001L

    invoke-virtual {v9, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v25, 0x10b00000002L

    const/16 v53, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v59, v51

    move-wide/from16 v51, v1

    move-wide/from16 v1, v25

    move-object/from16 v3, v27

    move-wide/from16 v4, v39

    move/from16 v26, v6

    move-object/from16 v25, v50

    move/from16 v6, v53

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v3, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v0, v59

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_805
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, p4

    move-object/from16 v50, v25

    goto :goto_7a3

    :cond_80c
    move-object/from16 v25, v50

    const/4 v0, 0x0

    :goto_80f
    const/4 v1, 0x7

    if-ge v0, v1, :cond_852

    move-wide/from16 v12, v39

    const/4 v2, 0x0

    invoke-virtual {v11, v0, v12, v13, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    cmp-long v4, v2, v44

    if-nez v4, :cond_829

    move-object/from16 v26, v7

    const-wide v6, 0x10300000002L

    goto :goto_84b

    :cond_829
    const-wide v4, 0x20b00000014L

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    move-wide/from16 v26, v2

    const-wide v1, 0x10e00000001L

    invoke-virtual {v9, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v1, v26

    move-object/from16 v26, v7

    const-wide v6, 0x10300000002L

    invoke-virtual {v9, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_84b
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v39, v12

    move-object/from16 v7, v26

    goto :goto_80f

    :cond_852
    move-object/from16 v26, v7

    move-wide/from16 v12, v39

    const-wide v6, 0x10300000002L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v5, v0

    :goto_866
    if-ltz v5, :cond_8c1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/BatteryStats$Timer;

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v28

    const-wide v0, 0x20b00000016L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v7, 0x10900000001L

    invoke-virtual {v9, v7, v8, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v43, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v7, v1

    move-wide/from16 v1, v43

    move-object/from16 v3, v27

    move-object/from16 v40, v4

    move/from16 v43, v5

    move-wide v4, v12

    move/from16 v45, v14

    move-object/from16 v44, v15

    const-wide v14, 0x10300000002L

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object/from16 v3, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v43, -0x1

    move-wide v6, v14

    move-object/from16 v4, v40

    move-object/from16 v15, v44

    move/from16 v14, v45

    const/4 v8, 0x2

    goto :goto_866

    :cond_8c1
    move-object/from16 v40, v4

    move/from16 v43, v5

    move/from16 v45, v14

    move-object/from16 v44, v15

    move-wide v14, v6

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_90c

    const/4 v0, 0x0

    :goto_8d1
    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v0, v1, :cond_906

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    if-eqz v2, :cond_8f9

    const-wide v3, 0x20b00000017L

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10e00000001L

    invoke-virtual {v9, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10500000002L

    invoke-virtual {v9, v7, v8, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_903

    :cond_8f9
    const-wide v5, 0x10e00000001L

    const-wide v7, 0x10500000002L

    :goto_903
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d1

    :cond_906
    const-wide v7, 0x10500000002L

    goto :goto_911

    :cond_90c
    const-wide v7, 0x10500000002L

    :goto_911
    const-wide v1, 0x10b0000000dL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000eL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    :goto_938
    if-ltz v4, :cond_9bc

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    const-wide v0, 0x20b00000019L

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v14, 0x10900000001L

    invoke-virtual {v9, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v14, 0x10b00000002L

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move-wide v7, v1

    move-wide v1, v14

    move v14, v4

    move-object v15, v5

    move-wide v4, v12

    move-object/from16 v28, v6

    move/from16 v6, v27

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v27

    if-eqz v27, :cond_993

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, v27

    move-wide v4, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000004L

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    :cond_993
    const-wide v1, 0x10b00000005L

    const/4 v6, 0x2

    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/16 v39, 0x0

    move-object/from16 v0, p1

    move-wide v4, v12

    move/from16 v43, v6

    move/from16 v6, v39

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v9, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v14, -0x1

    move-object/from16 v6, v28

    const-wide v7, 0x10500000002L

    const-wide v14, 0x10300000002L

    goto/16 :goto_938

    :cond_9bc
    move v14, v4

    move-object/from16 v28, v6

    const-wide v1, 0x10b0000001cL

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual/range {v46 .. v46}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    :goto_9d5
    if-ltz v0, :cond_a27

    move-object/from16 v8, v46

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v7

    :goto_9e8
    if-ltz v3, :cond_a1c

    const-wide v4, 0x20b0000001aL

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v14, 0x10900000001L

    invoke-virtual {v9, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    nop

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    const-wide v14, 0x10500000002L

    invoke-virtual {v9, v14, v15, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v9, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, -0x1

    const/4 v7, 0x1

    goto :goto_9e8

    :cond_a1c
    const-wide v14, 0x10500000002L

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v46, v8

    const/4 v7, 0x1

    goto :goto_9d5

    :cond_a27
    move-object/from16 v8, v46

    const-wide v0, 0x10b00000005L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v9, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b0000001bL

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    nop

    invoke-virtual {v11, v12, v13, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000003L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v12

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    nop

    const/4 v0, 0x0

    invoke-virtual {v11, v12, v13, v0}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    invoke-virtual {v9, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000004L

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v0, v47

    invoke-virtual {v9, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v37, 0x1

    move-object/from16 v15, p0

    move-object/from16 v8, p3

    move-object v7, v9

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v3, v19

    move/from16 v10, v22

    move-wide/from16 v1, v33

    move-object/from16 v4, v38

    move-object/from16 v9, p4

    move-object/from16 v18, v16

    move-wide/from16 v16, v12

    move-wide/from16 v11, v23

    move-wide/from16 v13, v31

    goto/16 :goto_8f

    :cond_aa7
    return-void
.end method

.method private dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/16 v0, 0x23

    const-wide v2, 0x10500000001L

    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000002L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v0

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v0

    const-wide v4, 0x10900000003L

    invoke-virtual {v9, v4, v5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v6, 0x10900000004L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v0, 0x0

    :goto_3b
    :try_start_3b
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    if-ge v0, v6, :cond_67

    const-wide v6, 0x20b00000005L

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v9, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v8

    invoke-virtual {v9, v10, v11, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_67
    new-instance v2, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, v8

    :goto_78
    invoke-virtual {v1, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v8

    const-wide/16 v11, 0x0

    if-eqz v8, :cond_1c2

    iget-wide v13, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v3, v5, v11

    if-gez v3, :cond_89

    move-wide v3, v13

    move-wide v15, v3

    goto :goto_8a

    :cond_89
    move-wide v15, v5

    :goto_8a
    iget-wide v3, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v3, v3, p3

    if-ltz v3, :cond_1bc

    cmp-long v3, p3, v11

    const/4 v8, 0x0

    const/16 v17, 0x1

    if-ltz v3, :cond_1a4

    if-nez v7, :cond_1a4

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v4, 0x5

    if-eq v3, v4, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-eq v3, v5, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x4

    if-eq v3, v5, :cond_d1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v5, 0x8

    if-ne v3, v5, :cond_af

    goto :goto_d1

    :cond_af
    iget-wide v5, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v3, v5, v11

    if-eqz v3, :cond_ce

    const/4 v11, 0x1

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v12, v3

    iput-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_c2

    move/from16 v7, v17

    goto :goto_c3

    :cond_c2
    move v7, v8

    :goto_c3
    move-object/from16 v3, p1

    move-object v4, v0

    move-wide v5, v15

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v12, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v1, v8

    goto :goto_e6

    :cond_ce
    move v11, v7

    move v1, v8

    goto :goto_e6

    :cond_d1
    :goto_d1
    const/4 v11, 0x1

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_d9

    move/from16 v12, v17

    goto :goto_da

    :cond_d9
    move v12, v8

    :goto_da
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    move v1, v8

    move v8, v12

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_e6
    if-eqz v10, :cond_1a5

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v3, :cond_fe

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_f3

    move/from16 v8, v17

    goto :goto_f4

    :cond_f3
    move v8, v1

    :goto_f4
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    iput-byte v1, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :cond_fe
    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    move v12, v3

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object v8, v3

    new-instance v3, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v3, 0x0

    move v6, v3

    :goto_10d
    const/16 v3, 0x16

    if-ge v6, v3, :cond_19a

    nop

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v3

    move-object/from16 v18, v3

    if-nez v18, :cond_11f

    move/from16 v23, v6

    move-object v1, v8

    goto/16 :goto_194

    :cond_11f
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_127
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_191

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v20, v3

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    move-object v7, v3

    const/4 v3, 0x0

    move v5, v3

    :goto_13e
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_188

    iput v6, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_167

    move/from16 v21, v17

    goto :goto_169

    :cond_167
    move/from16 v21, v1

    :goto_169
    move-object v3, v2

    move-object/from16 v4, p1

    move/from16 v22, v5

    move-object v5, v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-wide v6, v15

    move-object v1, v8

    move/from16 v8, v21

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v3, 0x0

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iput-object v3, v0, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    add-int/lit8 v5, v22, 0x1

    move-object v8, v1

    move/from16 v6, v23

    move-object/from16 v7, v24

    const/4 v1, 0x0

    goto :goto_13e

    :cond_188
    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object v1, v8

    const/4 v1, 0x0

    goto :goto_127

    :cond_191
    move/from16 v23, v6

    move-object v1, v8

    :goto_194
    add-int/lit8 v6, v23, 0x1

    move-object v8, v1

    const/4 v1, 0x0

    goto/16 :goto_10d

    :cond_19a
    move/from16 v23, v6

    move-object v1, v8

    iput v12, v0, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    iput-object v1, v0, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    const/4 v3, 0x0

    move-object v10, v3

    goto :goto_1a5

    :cond_1a4
    move v11, v7

    :cond_1a5
    :goto_1a5
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_1ac

    move/from16 v8, v17

    goto :goto_1ad

    :cond_1ac
    const/4 v8, 0x0

    :goto_1ad
    move-object v3, v2

    move-object/from16 v4, p1

    move-object v5, v0

    move-wide v6, v15

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    move-object/from16 v1, p0

    move v7, v11

    move-wide v3, v13

    move-wide v5, v15

    goto/16 :goto_78

    :cond_1bc
    move-object/from16 v1, p0

    move-wide v3, v13

    move-wide v5, v15

    goto/16 :goto_78

    :cond_1c2
    cmp-long v1, p3, v11

    if-ltz v1, :cond_1e7

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    const-wide v11, 0x20900000006L

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NEXT: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v13, 0x1

    add-long/2addr v13, v3

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_1e7
    .catchall {:try_start_3b .. :try_end_1e7} :catchall_1ec

    :cond_1e7
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    nop

    return-void

    :catchall_1ec
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0
.end method

.method private dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V
    .registers 78

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-wide v1, 0x10b00000006L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    mul-long v13, v1, v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    mul-long v5, v15, v11

    const/16 v17, 0x0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v11

    move-wide/from16 v20, v9

    const-wide v9, 0x10300000001L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v1

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v22

    const-wide/16 v18, 0x3e8

    div-long v11, v22, v18

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000004L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000005L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000006L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000007L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v13, v14, v7}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000008L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v11

    div-long v11, v11, v18

    const-wide v9, 0x10300000009L

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000bL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v1

    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v11, 0x10b00000002L

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000001L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000002L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000003L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000004L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v1

    const-wide v9, 0x10500000005L

    invoke-virtual {v8, v9, v10, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v9

    const-wide/16 v18, 0x3e8

    div-long v9, v9, v18

    move-wide/from16 v42, v2

    const-wide v1, 0x10300000006L

    invoke-virtual {v8, v1, v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000007L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000008L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x10300000009L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v1

    div-long v1, v1, v18

    const-wide v3, 0x1030000000aL

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v9, v1, v3

    if-ltz v9, :cond_18a

    const-wide/16 v9, 0x3e8

    div-long v3, v1, v9

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide v9, v1

    goto :goto_1a9

    :cond_18a
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    cmp-long v3, v1, v3

    if-ltz v3, :cond_19f

    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_1a8

    :cond_19f
    const-wide v3, 0x10300000004L

    const/4 v9, -0x1

    invoke-virtual {v8, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_1a8
    move-wide v9, v1

    :goto_1a9
    const-wide v1, 0x20b00000005L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    const/4 v1, 0x0

    move v4, v1

    :goto_1b7
    sget v1, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    const/4 v7, 0x1

    if-ge v4, v1, :cond_21e

    if-nez v4, :cond_1bf

    goto :goto_1c0

    :cond_1bf
    const/4 v7, 0x0

    :goto_1c0
    move v1, v4

    sget v2, Landroid/os/BatteryStats;->DATA_CONNECTION_OTHER:I

    if-eq v4, v2, :cond_1cc

    sget v2, Landroid/os/BatteryStats;->DATA_CONNECTION_EMERGENCY_SERVICE:I

    if-ne v4, v2, :cond_1ca

    goto :goto_1cc

    :cond_1ca
    move v2, v1

    goto :goto_1ce

    :cond_1cc
    :goto_1cc
    const/4 v1, 0x0

    move v2, v1

    :goto_1ce
    move-wide/from16 v47, v5

    const-wide v5, 0x20b00000008L

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    if-eqz v7, :cond_1e6

    move-wide/from16 v49, v5

    const-wide v5, 0x10800000002L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_1f0

    :cond_1e6
    move-wide/from16 v49, v5

    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_1f0
    const-wide v5, 0x10b00000003L

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v45

    const/16 v46, 0x0

    move-object/from16 v1, p1

    move/from16 v51, v2

    move-wide v2, v5

    move/from16 v52, v4

    move-object/from16 v4, v45

    move-wide/from16 v53, v47

    move-wide/from16 v55, v49

    move-wide/from16 v5, v53

    move-wide/from16 v47, v9

    const/4 v9, 0x0

    move v10, v7

    move/from16 v7, v46

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v55

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v52, 0x1

    move v7, v9

    move-wide/from16 v9, v47

    goto :goto_1b7

    :cond_21e
    move/from16 v52, v4

    move-wide/from16 v53, v5

    move-wide/from16 v47, v9

    const-wide v5, 0x10e00000001L

    const/4 v9, 0x0

    const-wide v1, 0x20b00000006L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v10

    if-eqz v10, :cond_252

    array-length v1, v10

    move v2, v9

    :goto_23e
    if-ge v2, v1, :cond_252

    aget-wide v3, v10, v2

    const-wide v5, 0x20300000007L

    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v2, v2, 0x1

    const-wide v5, 0x10e00000001L

    goto :goto_23e

    :cond_252
    const-wide v1, 0x10b00000009L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000aL

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    nop

    invoke-virtual {v0, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v3, 0x10300000002L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v3, 0x10300000005L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v7, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v3, 0x10300000006L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    move-wide/from16 v49, v5

    const-wide v4, 0x10300000003L

    invoke-virtual {v8, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const-wide v4, 0x10300000004L

    invoke-virtual {v8, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v2

    const-wide v5, 0x10300000007L

    invoke-virtual {v8, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const-wide v5, 0x10300000008L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v5, 0x10300000009L

    invoke-virtual {v8, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const-wide v4, 0x1030000000aL

    invoke-virtual {v8, v4, v5, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    move-wide/from16 v4, v49

    invoke-virtual {v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b0000000bL

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    invoke-static {v8, v1, v2, v3, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000dL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    nop

    move-wide/from16 v7, v53

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v36

    const-wide/16 v18, 0x3e8

    div-long v6, v36, v18

    move-object/from16 v8, p1

    move-wide/from16 v36, v11

    move-object v12, v10

    const-wide v9, 0x10300000001L

    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    move-wide/from16 v9, v53

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v6

    div-long v6, v6, v18

    move-wide/from16 v50, v4

    const-wide v4, 0x10300000002L

    invoke-virtual {v8, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v52

    :goto_350
    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39b

    invoke-interface/range {v52 .. v52}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v53, v1

    check-cast v53, Ljava/util/Map$Entry;

    const-wide v5, 0x20b0000000eL

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-interface/range {v53 .. v53}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v56, v2

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    invoke-interface/range {v53 .. v53}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v45, v56

    move-wide/from16 v58, v5

    move-wide v5, v9

    move-object/from16 v34, v11

    const/4 v11, 0x1

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v58

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v11, v34

    move-wide/from16 v2, v45

    goto :goto_350

    :cond_39b
    move-wide/from16 v45, v2

    move-object/from16 v34, v11

    const/4 v11, 0x1

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v7

    const/4 v5, 0x0

    move-wide/from16 v52, v1

    move-wide/from16 v56, v3

    :goto_3ad
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_3f4

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid;

    nop

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_3c3
    if-ltz v3, :cond_3ee

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v4, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_3d9

    const/4 v11, 0x0

    invoke-virtual {v6, v9, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v58

    add-long v52, v52, v58

    goto :goto_3da

    :cond_3d9
    const/4 v11, 0x0

    :goto_3da
    move-object/from16 v44, v1

    invoke-virtual {v4, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_3e8

    invoke-virtual {v1, v9, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v58

    add-long v56, v56, v58

    :cond_3e8
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v1, v44

    const/4 v11, 0x1

    goto :goto_3c3

    :cond_3ee
    move-object/from16 v44, v1

    add-int/lit8 v5, v5, 0x1

    const/4 v11, 0x1

    goto :goto_3ad

    :cond_3f4
    const-wide v1, 0x10b0000000fL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v2, v2, v18

    move-object/from16 v44, v12

    const-wide v11, 0x10300000001L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000002L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v1, v52, v18

    const-wide v3, 0x10300000003L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    div-long v1, v56, v18

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000005L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000006L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000007L

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000008L

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v2, v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x10300000009L

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    nop

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v2

    div-long v2, v2, v18

    const-wide v11, 0x1030000000aL

    invoke-virtual {v8, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000bL

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v4

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v9, v10, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v3

    const-wide/16 v11, 0x3e8

    div-long/2addr v3, v11

    const-wide v11, 0x1030000000cL

    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000000dL

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v11

    invoke-virtual {v8, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1030000000eL

    invoke-virtual {v0, v2, v9, v10, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v3, v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000000fL

    invoke-virtual {v0, v2, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v11

    invoke-virtual {v8, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000010L

    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000011L

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v9, v10, v4}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v1, v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000012L

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v11

    invoke-virtual {v8, v1, v2, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000013L

    invoke-virtual {v0, v3, v9, v10, v4}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v11

    const-wide/16 v18, 0x3e8

    div-long v11, v11, v18

    invoke-virtual {v8, v1, v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000014L

    invoke-virtual {v0, v3, v4}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v11

    invoke-virtual {v8, v1, v2, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000015L

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    nop

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v10, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v11

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v4

    const-wide v1, 0x10b00000017L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v24, v5

    const-wide/16 v18, 0x3e8

    div-long v5, v11, v18

    move-wide/from16 v18, v11

    const-wide v11, 0x10300000001L

    invoke-virtual {v8, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10500000002L

    invoke-virtual {v8, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v11, p2

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v12

    const/4 v1, 0x0

    :goto_55d
    const/16 v5, 0x12

    if-ge v1, v5, :cond_5d2

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_836

    :pswitch_565  #0x1, 0x4, 0x5, 0x7, 0x9, 0xa, 0xc
    goto :goto_57d

    :pswitch_566  #0x10
    const/4 v5, 0x1

    goto :goto_57d

    :pswitch_568  #0xf
    const/16 v5, 0xd

    goto :goto_57d

    :pswitch_56b  #0xe
    const/4 v5, 0x3

    goto :goto_57d

    :pswitch_56d  #0xd
    const/16 v5, 0xc

    goto :goto_57d

    :pswitch_570  #0xb
    const/4 v5, 0x4

    goto :goto_57d

    :pswitch_572  #0x8
    const/4 v5, 0x2

    goto :goto_57d

    :pswitch_574  #0x6
    const/4 v5, 0x6

    goto :goto_57d

    :pswitch_576  #0x3
    const/16 v5, 0xb

    goto :goto_57d

    :pswitch_579  #0x2
    const/4 v5, 0x5

    goto :goto_57d

    :pswitch_57b  #0x0
    const/4 v5, 0x7

    nop

    :goto_57d
    move-wide/from16 v22, v2

    const-wide v2, 0x20b00000011L

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v26, v13

    const-wide v13, 0x10e00000001L

    invoke-virtual {v8, v13, v14, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v6, 0x0

    const-wide v13, 0x10500000002L

    invoke-virtual {v8, v13, v14, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10100000003L

    move v6, v4

    move/from16 v28, v5

    invoke-virtual {v12, v1}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v4

    invoke-virtual {v8, v13, v14, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v4, 0x10800000004L

    invoke-direct {v0, v1}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v13

    invoke-virtual {v8, v4, v5, v13}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10100000005L

    const/4 v13, 0x0

    invoke-virtual {v8, v4, v5, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10100000006L

    invoke-virtual {v8, v4, v5, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    move v4, v6

    move-wide/from16 v2, v22

    move-wide/from16 v13, v26

    goto :goto_55d

    :cond_5d2
    move-wide/from16 v22, v2

    move v6, v4

    move-wide/from16 v26, v13

    const-wide v1, 0x10b00000012L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v1, 0x10100000001L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000002L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000003L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v1, 0x10100000004L

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    invoke-virtual {v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v5

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_637
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a9

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Ljava/util/Map$Entry;

    const-wide v1, 0x20b00000013L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-wide/from16 v31, v2

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v38, 0x10b00000002L

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v33, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v60, v31

    move-wide/from16 v31, v2

    move-wide/from16 v2, v38

    move/from16 v35, v6

    move-object/from16 v62, v5

    move-wide v5, v9

    move-object/from16 v31, v7

    move/from16 v7, v33

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v2, 0x10b00000003L

    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, v62

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/16 v32, 0x0

    move-object/from16 v1, p1

    move-object/from16 v33, v7

    move/from16 v7, v32

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v60

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v7, v31

    move-object/from16 v5, v33

    move/from16 v6, v35

    goto :goto_637

    :cond_6a9
    move-object/from16 v33, v5

    move/from16 v35, v6

    move-object/from16 v31, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_6b1
    const/4 v5, 0x5

    if-ge v7, v5, :cond_6e6

    const-wide v1, 0x20b00000014L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const/16 v29, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v63, v2

    move-wide v2, v4

    move-object v4, v6

    move-wide v5, v9

    move/from16 v30, v7

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v63

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v30, 0x1

    goto :goto_6b1

    :cond_6e6
    move/from16 v30, v7

    const-wide v2, 0x10b00000015L

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v9

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v1, 0x0

    move v7, v1

    :goto_6fa
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    if-ge v7, v1, :cond_730

    const-wide v1, 0x20b00000010L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v29, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v65, v5

    move-wide v5, v9

    move/from16 v30, v7

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v65

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v30, 0x1

    goto :goto_6fa

    :cond_730
    move/from16 v30, v7

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_73e
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_782

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, Ljava/util/Map$Entry;

    const-wide v1, 0x20b00000016L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v38, 0x10b00000002L

    invoke-interface/range {v32 .. v32}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v40, v2

    move-wide/from16 v2, v38

    move-wide/from16 v67, v5

    move-wide v5, v9

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v67

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_73e

    :cond_782
    const/4 v1, 0x0

    move v7, v1

    :goto_784
    const/4 v5, 0x5

    if-ge v7, v5, :cond_7bb

    const-wide v1, 0x20b00000018L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v5, 0x10e00000001L

    invoke-virtual {v8, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const/16 v30, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v69, v2

    move-wide v2, v4

    move-object v4, v6

    const/16 v32, 0x5

    move-wide v5, v9

    move/from16 v38, v7

    move/from16 v7, v30

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v69

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v38, 0x1

    goto :goto_784

    :cond_7bb
    move/from16 v38, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_7bf
    const/16 v1, 0x8

    if-ge v7, v1, :cond_7f3

    const-wide v1, 0x20b00000019L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v1, 0x10e00000001L

    invoke-virtual {v8, v1, v2, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v30, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v71, v5

    move-wide v5, v9

    move/from16 v32, v7

    move/from16 v7, v30

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v71

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v32, 0x1

    goto :goto_7bf

    :cond_7f3
    move/from16 v32, v7

    const/4 v1, 0x0

    move v7, v1

    :goto_7f7
    const/16 v1, 0xd

    if-ge v7, v1, :cond_82f

    const-wide v1, 0x20b0000001aL

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v2, 0x10e00000001L

    invoke-virtual {v8, v2, v3, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v38, 0x10b00000002L

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v30, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v40, v2

    move-wide/from16 v2, v38

    move-wide/from16 v73, v5

    move-wide v5, v9

    move/from16 v32, v7

    move/from16 v7, v30

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    move-wide/from16 v1, v73

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v32, 0x1

    goto :goto_7f7

    :cond_82f
    move-wide/from16 v1, v20

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_836
    .packed-switch 0x0
        :pswitch_57b  #00000000
        :pswitch_565  #00000001
        :pswitch_579  #00000002
        :pswitch_576  #00000003
        :pswitch_565  #00000004
        :pswitch_565  #00000005
        :pswitch_574  #00000006
        :pswitch_565  #00000007
        :pswitch_572  #00000008
        :pswitch_565  #00000009
        :pswitch_565  #0000000a
        :pswitch_570  #0000000b
        :pswitch_565  #0000000c
        :pswitch_56d  #0000000d
        :pswitch_56b  #0000000e
        :pswitch_568  #0000000f
        :pswitch_566  #00000010
    .end packed-switch
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const/4 v1, 0x1

    return v1
.end method

.method private static dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    move/from16 v4, p6

    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    const-wide/16 v6, 0x3e8

    div-long v8, p4, v6

    invoke-virtual {v1, v8, v9}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    div-long v10, p4, v6

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    div-long v6, p4, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    const-wide/16 v13, -0x1

    if-nez v12, :cond_3f

    if-nez v5, :cond_3f

    cmp-long v12, v8, v13

    if-nez v12, :cond_3f

    cmp-long v12, v10, v13

    if-nez v12, :cond_3f

    cmp-long v12, v6, v13

    if-eqz v12, :cond_80

    :cond_3f
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    move-wide/from16 v16, v13

    const-wide v12, 0x10300000001L

    invoke-virtual {v0, v12, v13, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide/16 v12, -0x1

    cmp-long v14, v8, v12

    if-eqz v14, :cond_63

    const-wide v14, 0x10300000003L

    invoke-virtual {v0, v14, v15, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_63
    cmp-long v14, v10, v12

    if-eqz v14, :cond_6f

    const-wide v14, 0x10300000004L

    invoke-virtual {v0, v14, v15, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_6f
    cmp-long v12, v6, v12

    if-eqz v12, :cond_7b

    const-wide v12, 0x10300000005L

    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_7b
    move-wide/from16 v12, v16

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_80
    return-void
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .registers 14

    if-eqz p4, :cond_2a

    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_16

    if-eqz v2, :cond_2a

    :cond_16
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public static formatCharge(D)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .registers 7

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .registers 7

    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .registers 16

    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-wide/16 v4, 0x3c

    mul-long v6, v0, v4

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    cmp-long v10, v8, v2

    if-nez v10, :cond_28

    cmp-long v10, v6, v2

    if-eqz v10, :cond_30

    :cond_28
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "h "

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    mul-long v10, v8, v4

    mul-long/2addr v10, v4

    add-long/2addr v6, v10

    sub-long v10, p1, v6

    div-long/2addr v10, v4

    cmp-long v12, v10, v2

    if-nez v12, :cond_3f

    cmp-long v12, v6, v2

    if-eqz v12, :cond_48

    :cond_3f
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "m "

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    mul-long/2addr v4, v10

    add-long/2addr v6, v4

    cmp-long v4, p1, v2

    if-nez v4, :cond_52

    cmp-long v2, v6, v2

    if-eqz v2, :cond_5d

    :cond_52
    sub-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    return-void
.end method

.method private static formatValue(D)Ljava/lang/String;
    .registers 7

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_9

    const-string v0, "0"

    return-object v0

    :cond_9
    const-wide v0, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_15

    const-string v0, "%.8f"

    goto :goto_62

    :cond_15
    const-wide v0, 0x3f1a36e2eb1c432dL  # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_21

    const-string v0, "%.7f"

    goto :goto_62

    :cond_21
    const-wide v0, 0x3f50624dd2f1a9fcL  # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2d

    const-string v0, "%.6f"

    goto :goto_62

    :cond_2d
    const-wide v0, 0x3f847ae147ae147bL  # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_39

    const-string v0, "%.5f"

    goto :goto_62

    :cond_39
    const-wide v0, 0x3fb999999999999aL  # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_45

    const-string v0, "%.4f"

    goto :goto_62

    :cond_45
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4e

    const-string v0, "%.3f"

    goto :goto_62

    :cond_4e
    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_57

    const-string v0, "%.2f"

    goto :goto_62

    :cond_57
    const-wide/high16 v0, 0x4059000000000000L  # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_60

    const-string v0, "%.1f"

    goto :goto_62

    :cond_60
    const-string v0, "%.0f"

    :goto_62
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;
    .registers 6

    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsProvider;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    new-instance v1, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v2

    return-object v2
.end method

.method private getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UidBatteryConsumer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/BatteryStats$UidMobileRadioStats;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_75

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UidBatteryConsumer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_24

    goto :goto_72

    :cond_24
    invoke-virtual {v4}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v21

    const/4 v10, 0x1

    invoke-virtual {v6, v10, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v23

    const-wide/16 v10, 0x0

    cmp-long v12, v21, v10

    if-nez v12, :cond_43

    cmp-long v10, v23, v10

    if-nez v10, :cond_43

    goto :goto_72

    :cond_43
    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v13, v10, v12

    invoke-virtual {v6, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v25

    long-to-double v9, v13

    add-long v11, v21, v23

    long-to-double v11, v11

    div-double v26, v9, v11

    cmpl-double v7, v26, v7

    if-nez v7, :cond_5a

    goto :goto_72

    :cond_5a
    new-instance v7, Landroid/os/BatteryStats$UidMobileRadioStats;

    const/16 v20, 0x0

    move-object v9, v7

    move v10, v5

    move-wide/from16 v11, v21

    move-wide/from16 v28, v13

    move-wide/from16 v13, v23

    move-wide/from16 v15, v28

    move/from16 v17, v25

    move-wide/from16 v18, v26

    invoke-direct/range {v9 .. v20}, Landroid/os/BatteryStats$UidMobileRadioStats;-><init>(IJJJIDLandroid/os/BatteryStats$UidMobileRadioStats-IA;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_75
    move-object/from16 v3, p1

    new-instance v2, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/os/BatteryStats$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v1
.end method

.method static synthetic lambda$getUidMobileRadioStats$0(Landroid/os/BatteryStats$UidMobileRadioStats;Landroid/os/BatteryStats$UidMobileRadioStats;)I
    .registers 6

    iget-wide v0, p1, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    iget-wide v2, p0, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static mapToInternalProcessState(I)I
    .registers 3

    const/16 v0, 0x14

    if-ne p0, v0, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const/4 v0, 0x0

    return v0

    :cond_b
    invoke-static {p0}, Landroid/app/ActivityManager;->isForegroundService(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v1, 0x6

    if-gt p0, v1, :cond_17

    return v0

    :cond_17
    const/16 v0, 0xb

    if-gt p0, v0, :cond_1d

    const/4 v0, 0x3

    return v0

    :cond_1d
    const/16 v0, 0xc

    if-gt p0, v0, :cond_23

    const/4 v0, 0x4

    return v0

    :cond_23
    const/16 v0, 0xd

    if-gt p0, v0, :cond_29

    const/4 v0, 0x5

    return v0

    :cond_29
    return v1
.end method

.method public static mapUidProcessStateToBatteryConsumerProcessState(I)I
    .registers 2

    packed-switch p0, :pswitch_data_e

    :pswitch_3  #0x5
    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x6
    const/4 v0, 0x4

    return v0

    :pswitch_7  #0x3, 0x4
    const/4 v0, 0x2

    return v0

    :pswitch_9  #0x1
    const/4 v0, 0x3

    return v0

    :pswitch_b  #0x0, 0x2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b  #00000000
        :pswitch_9  #00000001
        :pswitch_b  #00000002
        :pswitch_7  #00000003
        :pswitch_7  #00000004
        :pswitch_3  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method

.method static printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .registers 15

    xor-int v0, p1, p2

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    array-length v3, p4

    const-string v4, "\""

    const-string v5, ":\""

    if-ge v2, v3, :cond_95

    aget-object v3, p4, v2

    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_91

    if-eqz p5, :cond_1a

    const-string v6, " "

    goto :goto_1c

    :cond_1a
    const-string v6, ","

    :goto_1c
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    const-string v7, "="

    if-gez v6, :cond_61

    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v6, p2

    if-eqz v6, :cond_2d

    const-string v6, "+"

    goto :goto_2f

    :cond_2d
    const-string v6, "-"

    :goto_2f
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_37

    iget-object v6, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_39

    :cond_37
    iget-object v6, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_39
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v8, 0x40000000  # 2.0f

    if-ne v6, v8, :cond_91

    if-eqz p3, :cond_91

    const/4 v1, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_5b

    iget v6, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_5b
    iget v4, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_61
    if-eqz p5, :cond_66

    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_68

    :cond_66
    iget-object v4, v3, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_68
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v4, p2

    iget v5, v3, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v4, v5

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_8e

    if-ltz v4, :cond_8e

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_8e

    if-eqz p5, :cond_86

    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_8a

    :cond_86
    iget-object v5, v3, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_8a
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_91

    :cond_8e
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_91
    :goto_91
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_95
    if-nez v1, :cond_bb

    if-eqz p3, :cond_bb

    if-eqz p5, :cond_9e

    const-string v2, " wake_lock="

    goto :goto_a0

    :cond_9e
    const-string v2, ",w="

    :goto_a0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_b6

    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bb

    :cond_b6
    iget v2, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_bb
    :goto_bb
    return-void
.end method

.method private printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .registers 36

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p4

    const-string v10, "    All frequencies:\n"

    const-string v0, "    Unknown frequency:\n"

    const-string v1, "    Low frequency (less than 1GHz):\n"

    const-string v2, "    Middle frequency (1GHz to 3GHz):\n"

    const-string v3, "    High frequency (3GHz to 6GHz):\n"

    const-string v4, "    Mmwave frequency (greater than 6GHz):\n"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const-string v12, "      Signal Strength Time:\n"

    const-string v13, "      Tx Time:\n"

    const-string v14, "      Rx Time: "

    const-string v0, "        unknown:  "

    const-string v1, "        poor:     "

    const-string v2, "        moderate: "

    const-string v3, "        good:     "

    const-string v4, "        great:    "

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-wide/16 v0, 0x3e8

    mul-long v2, v8, v0

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v3, v4}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v2

    div-long/2addr v2, v0

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Active Cellular Radio Access Technology Breakdown:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v5

    const/4 v1, 0x2

    :goto_4a
    if-ltz v1, :cond_19f

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats;->RADIO_ACCESS_TECHNOLOGY_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    if-ne v1, v4, :cond_6b

    array-length v4, v11

    goto :goto_6c

    :cond_6b
    const/4 v4, 0x1

    :goto_6c
    move/from16 v17, v4

    add-int/lit8 v4, v17, -0x1

    move/from16 v18, v0

    :goto_72
    if-ltz v4, :cond_17d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v19, 0x0

    move-object/from16 v20, v10

    const/4 v10, 0x2

    if-ne v1, v10, :cond_85

    aget-object v10, v11, v4

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8a

    :cond_85
    const-string v10, "    All frequencies:\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8a
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "      Signal Strength Time:\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :goto_93
    const-wide/16 v21, 0x0

    move-object/from16 v23, v11

    const-string v11, ")\n"

    move-object/from16 v24, v12

    const-string v12, "("

    if-ge v10, v5, :cond_eb

    move-object/from16 v25, v13

    move v13, v0

    move-object/from16 v0, p0

    move/from16 v26, v1

    move/from16 v28, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    move v2, v4

    move v3, v10

    move v9, v4

    move v8, v5

    const/16 v16, 0x2

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveRadioDurationMs(IIIJ)J

    move-result-wide v0

    cmp-long v2, v0, v21

    if-gtz v2, :cond_bc

    goto :goto_d7

    :cond_bc
    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v10

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    :goto_d7
    add-int/lit8 v10, v10, 0x1

    move v5, v8

    move v4, v9

    move-wide v2, v13

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move/from16 v1, v26

    move-object/from16 v14, v27

    move/from16 v0, v28

    move-wide/from16 v8, p4

    goto :goto_93

    :cond_eb
    move/from16 v28, v0

    move/from16 v26, v1

    move v9, v4

    move v8, v5

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    const/16 v16, 0x2

    move-wide v13, v2

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      Tx Time:\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v10, v0

    :goto_102
    if-ge v10, v8, :cond_133

    move-object/from16 v0, p0

    move/from16 v1, v26

    move v2, v9

    move v3, v10

    move-wide/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->getActiveTxRadioDurationMs(IIIJ)J

    move-result-wide v0

    cmp-long v2, v0, v21

    if-gtz v2, :cond_115

    goto :goto_130

    :cond_115
    const/4 v2, 0x1

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v15, v10

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v2

    :goto_130
    add-int/lit8 v10, v10, 0x1

    goto :goto_102

    :cond_133
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "      Rx Time: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, p4

    move v3, v8

    move-object v0, v11

    move/from16 v4, v26

    invoke-virtual {v6, v4, v9, v1, v2}, Landroid/os/BatteryStats;->getActiveRxRadioDurationMs(IIJ)J

    move-result-wide v10

    invoke-static {v7, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_164

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16a

    :cond_164
    const/4 v5, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_16a
    add-int/lit8 v0, v9, -0x1

    move-wide v8, v1

    move v5, v3

    move v1, v4

    move-wide v2, v13

    move-object/from16 v10, v20

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    move v4, v0

    goto/16 :goto_72

    :cond_17d
    move-object/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    move v3, v5

    const/4 v5, 0x0

    move/from16 v29, v4

    move v4, v1

    move-wide v1, v8

    move/from16 v9, v29

    add-int/lit8 v0, v4, -0x1

    move-wide v8, v1

    move v4, v5

    move v1, v0

    move v5, v3

    move-wide v2, v13

    move/from16 v0, v18

    move-object/from16 v13, v25

    move-object/from16 v14, v27

    goto/16 :goto_4a

    :cond_19f
    move-object/from16 v20, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    move-object/from16 v27, v14

    move-wide v13, v2

    move v3, v5

    move v5, v4

    move v4, v1

    move-wide v1, v8

    if-nez v0, :cond_1be

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  (no activity)"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1be
    return-void
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    nop

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getMonitoredRailChargeConsumedMaMs()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-virtual {v0, v13, v14, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    div-long/2addr v13, v15

    const-wide/16 v15, 0x0

    move-wide/from16 v17, v15

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v15

    move-wide/from16 v19, v11

    array-length v11, v15

    const/4 v12, 0x0

    :goto_44
    if-ge v12, v11, :cond_55

    move/from16 v21, v11

    aget-object v11, v15, v12

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    add-long v17, v17, v22

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v21

    goto :goto_44

    :cond_55
    const-string v11, "WiFi"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, " Sleep time:  "

    const-string v15, ")"

    move-wide/from16 v21, v9

    const-string v9, "("

    const-string v10, "     "

    if-eqz v11, :cond_ce

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v11

    move-object/from16 v23, v12

    invoke-virtual {v11, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v11

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Scan time:  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long v24, v5, v7

    add-long v24, v24, v17

    move-wide/from16 v26, v11

    sub-long v11, v13, v24

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v23, v7

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d1

    :cond_ce
    move-wide/from16 v23, v7

    move-object v4, v12

    :goto_d1
    const-string v7, "Cellular"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10e

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    move/from16 v11, p6

    move-object v12, v7

    invoke-virtual {v8, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    move-object/from16 v25, v12

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_112

    :cond_10e
    move/from16 v11, p6

    move-object/from16 v25, v7

    :goto_112
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Idle time:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Rx time:     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v7, v23

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Tx time:     "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, -0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_2a8

    :cond_180
    goto :goto_18a

    :pswitch_181  #0xcd383d8a
    move-object/from16 v12, v25

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_180

    const/4 v4, 0x0

    :goto_18a
    packed-switch v4, :pswitch_data_2ae

    move-wide/from16 v23, v5

    move-wide/from16 v25, v7

    const-string v4, "[0]"

    const-string v5, "[1]"

    const-string v6, "[2]"

    const-string v7, "[3]"

    const-string v8, "[4]"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    goto :goto_1b3

    :pswitch_1a0  #0x0
    const-string v4, "   less than 0dBm: "

    const-string v12, "   0dBm to 8dBm: "

    move-wide/from16 v23, v5

    const-string v5, "   8dBm to 15dBm: "

    const-string v6, "   15dBm to 20dBm: "

    move-wide/from16 v25, v7

    const-string v7, "   above 20dBm: "

    filled-new-array {v4, v12, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    nop

    :goto_1b3
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    array-length v5, v5

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_205

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_1c8
    if-ge v6, v5, :cond_204

    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-virtual {v7, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "    "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v6

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c8

    :cond_204
    goto :goto_227

    :cond_205
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v11}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7, v13, v14}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_227
    const-wide/16 v6, 0x0

    cmp-long v8, v21, v6

    const-wide v27, 0x414b774000000000L  # 3600000.0

    if-lez v8, :cond_261

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Battery drain: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    move v12, v5

    move-wide/from16 v6, v21

    long-to-double v4, v6

    div-double v4, v4, v27

    invoke-static {v4, v5}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mAh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_265

    :cond_261
    move-object v9, v4

    move v12, v5

    move-wide/from16 v6, v21

    :goto_265
    const-wide/16 v4, 0x0

    cmp-long v4, v19, v4

    if-lez v4, :cond_2a1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Monitored rail energy drain: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v8, "#.##"

    invoke-direct {v5, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v21, v6

    move-object v10, v9

    move-wide/from16 v6, v19

    long-to-double v8, v6

    div-double v8, v8, v27

    invoke-virtual {v5, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a6

    :cond_2a1
    move-wide/from16 v21, v6

    move-object v10, v9

    move-wide/from16 v6, v19

    :goto_2a6
    return-void

    nop

    :pswitch_data_2a8
    .packed-switch -0x32c7c276
        :pswitch_181  #cd383d8a
    .end packed-switch

    :pswitch_data_2ae
    .packed-switch 0x0
        :pswitch_1a0  #00000000
    .end packed-switch
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .registers 8

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    :cond_9
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .registers 9

    long-to-float v0, p2

    const-string v1, ""

    const/high16 v2, 0x46200000  # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000  # 1024.0f

    if-ltz v3, :cond_e

    const-string v1, "KB"

    div-float/2addr v0, v4

    :cond_e
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_15

    const-string v1, "MB"

    div-float/2addr v0, v4

    :cond_15
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1c

    const-string v1, "GB"

    div-float/2addr v0, v4

    :cond_1c
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_23

    const-string v1, "TB"

    div-float/2addr v0, v4

    :cond_23
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2a

    const-string v1, "PB"

    div-float/2addr v0, v4

    :cond_2a
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_8b

    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    const-wide/16 v9, 0x0

    cmp-long v11, v3, v9

    if-eqz v11, :cond_85

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v11, p6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "realtime ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v13, p3, v5

    invoke-virtual {v1, v13, v14}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v13

    cmp-long v2, v13, v9

    if-ltz v2, :cond_57

    const-string v2, " max="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_7b

    div-long v5, p3, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v5

    cmp-long v2, v5, v9

    if-ltz v2, :cond_76

    const-string v2, " (running for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b

    :cond_76
    const-string v2, " (running)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    :goto_7b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, p0

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_85
    move-object v5, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    goto :goto_92

    :cond_8b
    move-object v5, p0

    move/from16 v7, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    :goto_92
    return v2
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    if-eqz v1, :cond_8a

    invoke-static {v1, v2, v3, v5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    const-wide/16 v10, 0x0

    cmp-long v12, v7, v10

    if-eqz v12, :cond_8a

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz v4, :cond_2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2c
    const/16 v12, 0x28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " times)"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3e8

    div-long v14, v2, v12

    invoke-virtual {v1, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-ltz v16, :cond_4d

    const-string v10, " max="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4d
    div-long v10, v2, v12

    invoke-virtual {v1, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    cmp-long v18, v10, v7

    if-lez v18, :cond_5f

    const-string v12, " actual="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_5f
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v12

    if-eqz v12, :cond_87

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-ltz v16, :cond_82

    const-string v1, " (running for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_87

    :cond_82
    const-string v1, " (running)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    :goto_87
    const-string v1, ", "

    return-object v1

    :cond_8a
    return-object v6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x3e8

    if-eqz v1, :cond_35

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    move-wide/from16 v17, v6

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v11

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v9

    div-long v5, v2, v15

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v13

    move-wide/from16 v6, v17

    :cond_35
    move-object/from16 v5, p6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v17, 0x1f4

    add-long v17, v6, v17

    div-long v1, v17, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ","

    if-eqz v4, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_60

    :cond_5e
    const-string v3, ""

    :goto_60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_7a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_7a
    return-object v2
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .registers 5

    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .registers 5

    invoke-static {p2, p3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static roundUsToMs(J)J
    .registers 6

    const-wide/16 v0, 0x1f4

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private shouldHidePowerComponent(I)Z
    .registers 3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_11

    const/16 v0, 0x8

    if-eq p1, v0, :cond_11

    if-eqz p1, :cond_11

    const/16 v0, 0xf

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .registers 11

    invoke-static {p1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .registers 216

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v10, :cond_37

    sget-object v1, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v10

    new-array v2, v12, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: BatteryStats.dumpCheckin called for which type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but only STATS_SINCE_CHARGED is supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "err"

    invoke-static {v9, v13, v1, v3, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v15, 0x3e8

    mul-long v7, v1, v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    mul-long v3, v5, v15

    invoke-virtual {v0, v7, v8}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v17

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v19

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v21

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v23

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v25

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v27

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v29

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v31

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v33

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v35

    invoke-virtual {v0, v12, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v37

    move-wide/from16 v39, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v41

    invoke-virtual {v0, v12, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v43

    invoke-virtual {v0, v2, v3, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v45

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v47

    invoke-virtual {v0, v3, v4, v10}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v48

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v50

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v52

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v54

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v56

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v58

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    move-object/from16 v61, v2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    sget-object v62, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v12, v62, v10

    const/16 v15, 0xc

    new-array v13, v15, [Ljava/lang/Object;

    if-nez v10, :cond_c5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    goto :goto_c7

    :cond_c5
    const-string v62, "N/A"

    :goto_c7
    const/16 v16, 0x0

    aput-object v62, v13, v16

    const-wide/16 v64, 0x3e8

    div-long v66, v19, v64

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v63, 0x1

    aput-object v62, v13, v63

    div-long v66, v17, v64

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v60, 0x2

    aput-object v62, v13, v60

    div-long v66, v25, v64

    invoke-static/range {v66 .. v67}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x3

    aput-object v62, v13, v15

    div-long v67, v27, v64

    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x4

    aput-object v62, v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v68

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x5

    aput-object v62, v13, v15

    div-long v69, v23, v64

    invoke-static/range {v69 .. v70}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x6

    aput-object v62, v13, v15

    div-long v70, v21, v64

    invoke-static/range {v70 .. v71}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/4 v15, 0x7

    aput-object v62, v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0x8

    aput-object v62, v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0x9

    aput-object v62, v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v62

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    const/16 v15, 0xa

    aput-object v62, v13, v15

    const-wide/16 v64, 0x3e8

    div-long v74, v31, v64

    invoke-static/range {v74 .. v75}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const/16 v15, 0xb

    aput-object v62, v13, v15

    const-string v15, "bt"

    move-wide/from16 v75, v5

    const/4 v5, 0x0

    invoke-static {v9, v5, v12, v15, v13}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    const-wide/16 v77, 0x0

    const/4 v13, 0x0

    move-wide/from16 v79, v77

    move-wide/from16 v77, v5

    :goto_151
    if-ge v13, v2, :cond_1a0

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    nop

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v15

    move-object/from16 v81, v1

    const/4 v1, 0x1

    sub-int/2addr v15, v1

    :goto_166
    if-ltz v15, :cond_197

    invoke-virtual {v6, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v63

    move/from16 v82, v2

    move-object/from16 v2, v63

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v83, v5

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_180

    invoke-virtual {v5, v3, v4, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v84

    add-long v77, v77, v84

    :cond_180
    move-object/from16 v84, v5

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_18f

    invoke-virtual {v5, v3, v4, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v85

    add-long v79, v79, v85

    :cond_18f
    add-int/lit8 v15, v15, -0x1

    move/from16 v2, v82

    move-object/from16 v5, v83

    const/4 v1, 0x1

    goto :goto_166

    :cond_197
    move/from16 v82, v2

    move-object/from16 v83, v5

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v81

    goto :goto_151

    :cond_1a0
    move-object/from16 v81, v1

    move/from16 v82, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v83

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v85

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v87

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v89

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v91

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v93

    invoke-virtual {v0, v5, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v95

    invoke-virtual {v0, v6, v10}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v97

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v99

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v101

    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static/range {v83 .. v84}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v2, v5

    invoke-static/range {v85 .. v86}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v2, v5

    invoke-static/range {v87 .. v88}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v2, v5

    invoke-static/range {v89 .. v90}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x3

    aput-object v1, v2, v6

    invoke-static/range {v91 .. v92}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v2, v6

    invoke-static/range {v93 .. v94}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v2, v6

    invoke-static/range {v95 .. v96}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v2, v6

    invoke-static/range {v97 .. v98}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v2, v6

    invoke-static/range {v99 .. v100}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v2, v6

    invoke-static/range {v101 .. v102}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v6, 0x9

    aput-object v1, v2, v6

    const-string v1, "gn"

    const/4 v6, 0x0

    invoke-static {v9, v6, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    const-string v13, "gmcd"

    move-wide/from16 v103, v39

    move-object/from16 v15, v81

    move-object/from16 v1, p2

    move-wide/from16 v39, v7

    move/from16 v8, v82

    move v7, v5

    move-object/from16 v5, v61

    move-wide v7, v3

    move-object v3, v12

    move-object v4, v13

    move-object v13, v5

    move-wide/from16 v105, v75

    move-object v5, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v75

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v107

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long v5, v75, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v2, v5

    div-long v109, v107, v3

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v14, v2, v1

    const/4 v1, 0x3

    aput-object v14, v2, v1

    const/4 v1, 0x4

    aput-object v14, v2, v1

    const-string v1, "gwfl"

    invoke-static {v9, v5, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string v4, "gwfcd"

    move-object/from16 v1, p2

    move-object v3, v12

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string v4, "gble"

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    div-long v4, v29, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    div-long v4, v48, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    div-long v4, v77, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    div-long v4, v79, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    div-long v4, v33, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v1, v5

    div-long v4, v35, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v1, v5

    div-long v4, v41, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v1, v5

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xa

    aput-object v5, v1, v6

    div-long v5, v45, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    invoke-virtual {v0, v4, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0xd

    aput-object v2, v1, v6

    const/16 v2, 0xe

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    div-long v3, v37, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x11

    div-long v4, v43, v64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v10}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0x12

    aput-object v2, v1, v5

    const/16 v2, 0x13

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v109

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v109

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "m"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_380
    if-ge v3, v1, :cond_394

    invoke-virtual {v0, v3, v7, v8, v10}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x5

    goto :goto_380

    :cond_394
    const-string v1, "br"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_3a1
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    if-ge v2, v3, :cond_3b8

    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a1

    :cond_3b8
    const-string/jumbo v2, "sgt"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v3

    const-string/jumbo v2, "sst"

    invoke-static {v9, v3, v12, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_3d7
    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v3

    if-ge v2, v3, :cond_3ea

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d7

    :cond_3ea
    const-string/jumbo v2, "sgc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v2, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_3f6
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v2, v3, :cond_40b

    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f6

    :cond_40b
    const-string v2, "dct"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_412
    sget v3, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v2, v3, :cond_423

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_412

    :cond_423
    const-string v2, "dcc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_42e
    if-ge v3, v2, :cond_443

    invoke-virtual {v0, v3, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x8

    goto :goto_42e

    :cond_443
    const-string/jumbo v2, "wst"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_44b
    const/16 v3, 0x8

    if-ge v2, v3, :cond_45c

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_44b

    :cond_45c
    const-string/jumbo v2, "wsc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_466
    if-ge v2, v6, :cond_479

    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v3

    const-wide/16 v64, 0x3e8

    div-long v3, v3, v64

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_466

    :cond_479
    const-string/jumbo v2, "wsst"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_481
    if-ge v2, v6, :cond_490

    invoke-virtual {v0, v2, v10}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_481

    :cond_490
    const-string/jumbo v2, "wssc"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_49b
    if-ge v1, v2, :cond_4af

    invoke-virtual {v0, v1, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v109

    const-wide/16 v64, 0x3e8

    div-long v109, v109, v64

    invoke-static/range {v109 .. v110}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    goto :goto_49b

    :cond_4af
    const-string/jumbo v1, "wsgt"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_4b7
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c7

    invoke-virtual {v0, v1, v10}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b7

    :cond_4c7
    const-string/jumbo v1, "wsgc"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    invoke-virtual {v0, v7, v8, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v109

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v61

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-wide/16 v64, 0x3e8

    div-long v111, v109, v64

    invoke-static/range {v111 .. v112}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v4, v16

    const-string/jumbo v1, "wmct"

    invoke-static {v9, v2, v12, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xa

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v60, 0x2

    aput-object v1, v4, v60

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    const-wide/16 v1, 0x3e8

    div-long v64, v50, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const/16 v65, 0x4

    aput-object v64, v4, v65

    div-long v64, v52, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const/16 v65, 0x5

    aput-object v64, v4, v65

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v64

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    const/16 v65, 0x6

    aput-object v64, v4, v65

    div-long v64, v54, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const/16 v65, 0x7

    aput-object v64, v4, v65

    div-long v64, v56, v1

    invoke-static/range {v64 .. v65}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const/16 v65, 0x8

    aput-object v64, v4, v65

    div-long v111, v58, v1

    invoke-static/range {v111 .. v112}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v4, v2

    const-string v1, "dc"

    const/4 v2, 0x0

    invoke-static {v9, v2, v12, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v111, 0x1f4

    const-string v4, "\""

    if-gez v11, :cond_68e

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v81

    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5f8

    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v113

    :goto_580
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5ee

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v114, v1

    check-cast v114, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface/range {v114 .. v114}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Timer;

    const/16 v115, 0x0

    const-string v116, ""

    move-object v1, v13

    move-object/from16 v117, v3

    move-object/from16 v118, v14

    move-object v14, v4

    move-wide v3, v7

    move-wide/from16 v119, v7

    move v8, v5

    move-object/from16 v5, v115

    move v7, v6

    move/from16 v6, p3

    move/from16 v8, v60

    move-wide/from16 v121, v119

    move-object/from16 v7, v116

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v114 .. v114}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string/jumbo v2, "kwl"

    invoke-static {v9, v3, v12, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v14

    move-object/from16 v3, v117

    move-object/from16 v14, v118

    move-wide/from16 v7, v121

    const/16 v5, 0x12

    const/16 v6, 0xd

    goto :goto_580

    :cond_5ee
    move-object/from16 v117, v3

    move-wide/from16 v121, v7

    move-object/from16 v118, v14

    move/from16 v8, v60

    move-object v14, v4

    goto :goto_601

    :cond_5f8
    move-object/from16 v117, v3

    move-wide/from16 v121, v7

    move-object/from16 v118, v14

    move/from16 v8, v60

    move-object v14, v4

    :goto_601
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_689

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_613
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_684

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v6, v121

    invoke-virtual {v4, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v113

    move-object/from16 v8, v113

    check-cast v8, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v8

    move-object/from16 v113, v1

    move-object/from16 v115, v2

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v116

    move-object/from16 v119, v3

    move-object/from16 v3, v116

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    add-long v120, v4, v111

    const-wide/16 v64, 0x3e8

    div-long v120, v120, v64

    invoke-static/range {v120 .. v121}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v2, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x2

    aput-object v1, v2, v16

    const-string/jumbo v1, "wr"

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v121, v6

    move-object/from16 v1, v113

    move-object/from16 v2, v115

    const/4 v8, 0x2

    goto :goto_613

    :cond_684
    move-object/from16 v113, v1

    move-wide/from16 v6, v121

    goto :goto_694

    :cond_689
    move-object/from16 v113, v1

    move-wide/from16 v6, v121

    goto :goto_694

    :cond_68e
    move-object/from16 v117, v3

    move-wide v6, v7

    move-object/from16 v118, v14

    move-object v14, v4

    :goto_694
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v81

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v8

    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->size()I

    move-result v1

    const-wide/16 v115, 0x0

    if-lez v1, :cond_737

    invoke-interface/range {v81 .. v81}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_737

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v4

    add-long v4, v4, v111

    const-wide/16 v64, 0x3e8

    div-long v4, v4, v64

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v113

    move-object/from16 v119, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Timer;

    if-eqz v1, :cond_6e9

    invoke-virtual {v1, v6, v7, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v120

    add-long v120, v120, v111

    const-wide/16 v64, 0x3e8

    div-long v120, v120, v64

    goto :goto_6eb

    :cond_6e9
    move-wide/from16 v120, v115

    :goto_6eb
    if-eqz v1, :cond_6f2

    invoke-virtual {v1, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v122

    goto :goto_6f4

    :cond_6f2
    const/16 v122, 0x0

    :goto_6f4
    move-object/from16 v124, v1

    move-object/from16 v125, v3

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v126

    move-object/from16 v127, v2

    move-object/from16 v2, v126

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v3, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v3, v16

    invoke-static/range {v113 .. v113}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v16, 0x2

    aput-object v1, v3, v16

    const-string/jumbo v1, "rpm"

    invoke-static {v9, v2, v12, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, v119

    goto/16 :goto_6ac

    :cond_737
    invoke-direct/range {p0 .. p1}, Landroid/os/BatteryStats;->getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;

    move-result-object v5

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getBatteryCapacity()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getDischargedPowerRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const-string/jumbo v1, "pws"

    const/4 v3, 0x0

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v4

    const/4 v1, 0x0

    :goto_78a
    const/16 v2, 0x12

    if-ge v1, v2, :cond_7ca

    sget-object v2, Landroid/os/BatteryStats;->CHECKIN_POWER_COMPONENT_LABELS:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_796

    const-string v2, "???"

    :cond_796
    move-wide/from16 v121, v6

    const/4 v3, 0x5

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v6, v3

    invoke-virtual {v4, v1}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v119

    invoke-static/range {v119 .. v120}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-direct {v0, v1}, Landroid/os/BatteryStats;->shouldHidePowerComponent(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const-string v3, "0"

    const/4 v7, 0x3

    aput-object v3, v6, v7

    const-string v3, "0"

    const/4 v7, 0x4

    aput-object v3, v6, v7

    const-string/jumbo v3, "pwi"

    const/4 v7, 0x0

    invoke-static {v9, v7, v12, v3, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v6, v121

    goto :goto_78a

    :cond_7ca
    move-wide/from16 v121, v6

    new-instance v1, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    move-object/from16 v7, p1

    invoke-direct {v1, v7, v5}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    move-object v6, v1

    invoke-virtual {v5}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    :goto_7d9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_837

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UidBatteryConsumer;

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    move-object/from16 v113, v3

    move-object/from16 v119, v4

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "uid"

    const/16 v16, 0x0

    aput-object v3, v4, v16

    invoke-virtual {v2}, Landroid/os/UidBatteryConsumer;->getConsumedPower()D

    move-result-wide v124

    invoke-static/range {v124 .. v125}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    const/16 v63, 0x1

    aput-object v3, v4, v63

    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->isSystemBatteryConsumer(Landroid/os/UidBatteryConsumer;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v114, 0x2

    aput-object v3, v4, v114

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/UidBatteryConsumer;->getConsumedPower(I)D

    move-result-wide v124

    invoke-static/range {v124 .. v125}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    const/16 v67, 0x3

    aput-object v3, v4, v67

    invoke-virtual {v6, v2}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;->getProportionalPowerMah(Landroid/os/UidBatteryConsumer;)D

    move-result-wide v124

    invoke-static/range {v124 .. v125}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    const/16 v68, 0x4

    aput-object v3, v4, v68

    const-string/jumbo v3, "pwi"

    invoke-static {v9, v0, v12, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v113

    move-object/from16 v4, v119

    goto :goto_7d9

    :cond_837
    move-object/from16 v113, v3

    move-object/from16 v119, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v0

    const/16 v4, 0x2c

    if-eqz v0, :cond_867

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    :goto_848
    array-length v2, v0

    if-ge v1, v2, :cond_858

    if-eqz v1, :cond_850

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_850
    aget-wide v2, v0, v1

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_848

    :cond_858
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "gcf"

    invoke-static {v9, v3, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_867
    const/4 v1, 0x0

    move v3, v1

    :goto_869
    move/from16 v2, v82

    if-ge v3, v2, :cond_13c9

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ltz v11, :cond_8aa

    if-eq v1, v11, :cond_8aa

    move/from16 v60, v2

    move/from16 v169, v3

    move-object/from16 v170, v5

    move-object/from16 v114, v8

    move-object/from16 v206, v13

    move-object/from16 v202, v14

    move-object/from16 v167, v15

    move-wide/from16 v14, v103

    move-wide/from16 v196, v105

    move-object/from16 v82, v119

    move-wide/from16 v200, v121

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v66, 0xc

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v72, 0x8

    const/16 v73, 0x9

    const/16 v183, 0x12

    const/16 v188, 0xd

    const/16 v189, 0xa

    const/16 v204, 0x2

    move-object v8, v0

    move-object/from16 v121, v6

    goto/16 :goto_13a8

    :cond_8aa
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v82

    move-object/from16 v11, v82

    check-cast v11, Landroid/os/BatteryStats$Uid;

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v124

    const/4 v4, 0x1

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v126

    const/4 v4, 0x2

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v128

    const/4 v4, 0x3

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v130

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v132

    const/4 v4, 0x1

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v134

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v136

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v120

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v138

    const/4 v4, 0x2

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v140

    const/4 v4, 0x3

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v142

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v144

    const/4 v4, 0x4

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v146

    const/4 v4, 0x5

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v148

    const/4 v4, 0x6

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v150

    const/4 v4, 0x7

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v152

    const/16 v4, 0x8

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v154

    const/16 v4, 0x9

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v156

    const/4 v4, 0x6

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v158

    const/4 v4, 0x7

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v160

    const/16 v4, 0x8

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v162

    const/16 v4, 0x9

    invoke-virtual {v11, v4, v10}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v164

    cmp-long v4, v124, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v126, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v128, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v130, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v132, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v134, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v140, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v142, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v136, v115

    if-gtz v4, :cond_97f

    if-gtz v120, :cond_97f

    cmp-long v4, v146, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v148, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v138, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v144, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v150, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v152, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v154, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v156, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v158, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v160, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v162, v115

    if-gtz v4, :cond_97f

    cmp-long v4, v164, v115

    if-lez v4, :cond_977

    goto :goto_97f

    :cond_977
    move-object/from16 v167, v15

    const/16 v60, 0x12

    const/16 v66, 0xc

    goto/16 :goto_a3b

    :cond_97f
    :goto_97f
    const/16 v4, 0x16

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {v124 .. v125}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v16, 0x0

    aput-object v166, v4, v16

    invoke-static/range {v126 .. v127}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v63, 0x1

    aput-object v166, v4, v63

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v114, 0x2

    aput-object v166, v4, v114

    invoke-static/range {v130 .. v131}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v67, 0x3

    aput-object v166, v4, v67

    invoke-static/range {v132 .. v133}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v68, 0x4

    aput-object v166, v4, v68

    invoke-static/range {v134 .. v135}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v69, 0x5

    aput-object v166, v4, v69

    invoke-static/range {v140 .. v141}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v70, 0x6

    aput-object v166, v4, v70

    invoke-static/range {v142 .. v143}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v71, 0x7

    aput-object v166, v4, v71

    invoke-static/range {v136 .. v137}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v72, 0x8

    aput-object v166, v4, v72

    invoke-static/range {v120 .. v120}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v166

    const/16 v73, 0x9

    aput-object v166, v4, v73

    invoke-static/range {v146 .. v147}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v74, 0xa

    aput-object v166, v4, v74

    invoke-static/range {v148 .. v149}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v62, 0xb

    aput-object v166, v4, v62

    invoke-static/range {v138 .. v139}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    const/16 v66, 0xc

    aput-object v166, v4, v66

    invoke-static/range {v144 .. v145}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    move-object/from16 v167, v15

    const/16 v15, 0xd

    aput-object v166, v4, v15

    const/16 v123, 0xe

    invoke-static/range {v150 .. v151}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0xf

    invoke-static/range {v152 .. v153}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0x10

    invoke-static/range {v154 .. v155}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0x11

    invoke-static/range {v156 .. v157}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    invoke-static/range {v158 .. v159}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v123

    const/16 v60, 0x12

    aput-object v123, v4, v60

    const/16 v123, 0x13

    invoke-static/range {v160 .. v161}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0x14

    invoke-static/range {v162 .. v163}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const/16 v123, 0x15

    invoke-static/range {v164 .. v165}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v166

    aput-object v166, v4, v123

    const-string/jumbo v15, "nt"

    invoke-static {v9, v1, v12, v15, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a3b
    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v15

    const-string/jumbo v4, "mcd"

    move/from16 v166, v1

    move-object/from16 v1, p2

    move/from16 v168, v2

    move/from16 v2, v166

    move/from16 v169, v3

    move-object v3, v12

    move-object/from16 v82, v119

    move-object/from16 v119, v0

    const/16 v0, 0x2c

    move-object/from16 v170, v5

    move-object v5, v15

    move-object/from16 v171, v14

    move-wide/from16 v14, v121

    move-object/from16 v121, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v11, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v172

    invoke-virtual {v11, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v174

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v122

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v176

    invoke-virtual {v11, v14, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v1

    add-long v1, v1, v111

    const-wide/16 v3, 0x3e8

    div-long v177, v1, v3

    invoke-virtual {v11, v14, v15}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v1

    add-long v1, v1, v111

    div-long v179, v1, v3

    invoke-virtual {v11, v14, v15, v10}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v181

    cmp-long v1, v172, v115

    if-nez v1, :cond_aa4

    cmp-long v1, v174, v115

    if-nez v1, :cond_aa4

    if-nez v122, :cond_aa4

    if-nez v176, :cond_aa4

    cmp-long v1, v177, v115

    if-nez v1, :cond_aa4

    cmp-long v1, v179, v115

    if-nez v1, :cond_aa4

    cmp-long v1, v181, v115

    if-eqz v1, :cond_aa1

    goto :goto_aa4

    :cond_aa1
    move/from16 v6, v166

    goto :goto_aec

    :cond_aa4
    :goto_aa4
    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static/range {v172 .. v173}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static/range {v174 .. v175}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static/range {v181 .. v182}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static/range {v122 .. v122}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v1, 0x4

    aput-object v118, v2, v1

    const/4 v1, 0x5

    aput-object v118, v2, v1

    const/4 v1, 0x6

    aput-object v118, v2, v1

    invoke-static/range {v176 .. v176}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v2, v3

    invoke-static/range {v177 .. v178}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v2, v3

    invoke-static/range {v179 .. v180}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v2, v3

    const-string/jumbo v1, "wfl"

    move/from16 v6, v166

    invoke-static {v9, v6, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_aec
    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string/jumbo v4, "wfcd"

    move-object/from16 v1, p2

    move v2, v6

    move-object v3, v12

    move v0, v6

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_bfc

    invoke-virtual {v6, v14, v15, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    add-long v1, v1, v111

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    cmp-long v3, v1, v115

    if-eqz v3, :cond_bef

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_b20

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    goto :goto_b21

    :cond_b20
    const/4 v5, 0x0

    :goto_b21
    move-object/from16 v183, v8

    move-wide/from16 v7, v105

    invoke-virtual {v6, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v105

    if-eqz v4, :cond_b30

    invoke-virtual {v4, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v184

    goto :goto_b32

    :cond_b30
    move-wide/from16 v184, v115

    :goto_b32
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v186

    if-eqz v186, :cond_b43

    move-object/from16 v186, v4

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    goto :goto_b46

    :cond_b43
    move-object/from16 v186, v4

    const/4 v4, 0x0

    :goto_b46
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v187

    if-eqz v187, :cond_b57

    move-object/from16 v187, v6

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_b5a

    :cond_b57
    move-object/from16 v187, v6

    const/4 v6, 0x0

    :goto_b5a
    move-wide/from16 v188, v14

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_b67

    invoke-virtual {v14, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v190

    goto :goto_b69

    :cond_b67
    move-wide/from16 v190, v115

    :goto_b69
    if-eqz v14, :cond_b70

    invoke-virtual {v14, v7, v8}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v192

    goto :goto_b72

    :cond_b70
    move-wide/from16 v192, v115

    :goto_b72
    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    if-eqz v15, :cond_b7e

    invoke-virtual {v15, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v194

    goto :goto_b80

    :cond_b7e
    move-wide/from16 v194, v115

    :goto_b80
    if-eqz v15, :cond_b87

    invoke-virtual {v15, v7, v8}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v196

    goto :goto_b89

    :cond_b87
    move-wide/from16 v196, v115

    :goto_b89
    move-object/from16 v198, v14

    move-object/from16 v62, v15

    const/16 v14, 0xb

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v16, 0x0

    aput-object v199, v15, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v199

    const/16 v63, 0x1

    aput-object v199, v15, v63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v199

    const/16 v114, 0x2

    aput-object v199, v15, v114

    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v67, 0x3

    aput-object v199, v15, v67

    invoke-static/range {v184 .. v185}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v68, 0x4

    aput-object v199, v15, v68

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v199

    const/16 v69, 0x5

    aput-object v199, v15, v69

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v199

    const/16 v70, 0x6

    aput-object v199, v15, v70

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v71, 0x7

    aput-object v199, v15, v71

    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v72, 0x8

    aput-object v199, v15, v72

    invoke-static/range {v192 .. v193}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v73, 0x9

    aput-object v199, v15, v73

    invoke-static/range {v196 .. v197}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v199

    const/16 v74, 0xa

    aput-object v199, v15, v74

    const-string v14, "blem"

    invoke-static {v9, v0, v12, v14, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c08

    :cond_bef
    move-object/from16 v187, v6

    move-object/from16 v183, v8

    move-wide/from16 v188, v14

    move-wide/from16 v7, v105

    const/16 v72, 0x8

    const/16 v73, 0x9

    goto :goto_c08

    :cond_bfc
    move-object/from16 v187, v6

    move-object/from16 v183, v8

    move-wide/from16 v188, v14

    move-wide/from16 v7, v105

    const/16 v72, 0x8

    const/16 v73, 0x9

    :goto_c08
    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    const-string v4, "ble"

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v12

    move-object/from16 v14, v187

    move/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v1

    if-eqz v1, :cond_c44

    sget v1, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c26
    sget v4, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v3, v4, :cond_c3a

    invoke-virtual {v11, v3, v10}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    if-eqz v4, :cond_c37

    const/4 v2, 0x1

    :cond_c37
    add-int/lit8 v3, v3, 0x1

    goto :goto_c26

    :cond_c3a
    if-eqz v2, :cond_c42

    const-string/jumbo v3, "ua"

    invoke-static {v9, v0, v12, v3, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c42
    move-object/from16 v117, v1

    :cond_c44
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_c7a

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_c5d

    invoke-virtual {v4, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    goto :goto_c5f

    :cond_c5d
    move-wide/from16 v5, v115

    :goto_c5f
    move-object/from16 v62, v1

    const/4 v15, 0x2

    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v1, v16

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v63, 0x1

    aput-object v15, v1, v63

    const-string v15, "awl"

    invoke-static {v9, v0, v12, v15, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c7c

    :cond_c7a
    const/16 v63, 0x1

    :goto_c7c
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    :goto_c87
    const/16 v5, 0x5f

    if-ltz v6, :cond_d3f

    invoke-virtual {v15, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v62, ""

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string v105, "f"

    move-object v1, v13

    move-wide/from16 v184, v7

    move-object v8, v3

    move-wide/from16 v3, v188

    move v7, v5

    move-object/from16 v5, v105

    move-object/from16 v187, v14

    move v14, v6

    move/from16 v6, p3

    move v10, v7

    move-wide/from16 v200, v184

    move-object/from16 v7, v62

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v105

    const-string/jumbo v5, "p"

    move-object v1, v13

    move-object/from16 v2, v105

    move-object/from16 v7, v62

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    if-eqz v105, :cond_cce

    invoke-virtual/range {v105 .. v105}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    goto :goto_ccf

    :cond_cce
    const/4 v1, 0x0

    :goto_ccf
    move-object v2, v1

    const-string v5, "bp"

    move-object v1, v13

    move-wide/from16 v3, v188

    move/from16 v6, p3

    move-object/from16 v7, v62

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v62

    const/4 v1, 0x2

    invoke-virtual {v8, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    const-string/jumbo v5, "w"

    move-object v1, v13

    move-object/from16 v7, v62

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_d30

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_d04

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_d04
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_d10

    invoke-virtual {v2, v6, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_d10
    const/16 v7, 0xd

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_d1c

    invoke-virtual {v2, v7, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    :cond_d1c
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const-string/jumbo v3, "wl"

    invoke-static {v9, v0, v12, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d34

    :cond_d30
    const/16 v6, 0xa

    const/16 v7, 0xd

    :goto_d34
    add-int/lit8 v1, v14, -0x1

    move/from16 v10, p3

    move v6, v1

    move-object/from16 v14, v187

    move-wide/from16 v7, v200

    goto/16 :goto_c87

    :cond_d3f
    move v10, v5

    move-wide/from16 v200, v7

    move-object/from16 v187, v14

    const/16 v7, 0xd

    move v14, v6

    const/16 v6, 0xa

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_d7f

    nop

    move v8, v10

    move-wide/from16 v4, v188

    move/from16 v10, p3

    invoke-virtual {v14, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v64, 0x3e8

    div-long v1, v1, v64

    invoke-virtual {v14, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    cmp-long v62, v1, v115

    if-lez v62, :cond_d84

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v7, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v62, 0x1

    aput-object v6, v7, v62

    const-string/jumbo v6, "wmc"

    invoke-static {v9, v0, v12, v6, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d84

    :cond_d7f
    move v8, v10

    move-wide/from16 v4, v188

    move/from16 v10, p3

    :cond_d84
    :goto_d84
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_d8e
    if-ltz v1, :cond_e30

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v105

    add-long v105, v105, v111

    const-wide/16 v64, 0x3e8

    div-long v105, v105, v64

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v7

    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_db5

    move-object/from16 v185, v14

    move-object/from16 v184, v15

    move-wide/from16 v14, v200

    invoke-virtual {v2, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v188

    goto :goto_dbd

    :cond_db5
    move-object/from16 v185, v14

    move-object/from16 v184, v15

    move-wide/from16 v14, v200

    const-wide/16 v188, -0x1

    :goto_dbd
    if-eqz v2, :cond_dc4

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v62

    goto :goto_dc6

    :cond_dc4
    const/16 v62, -0x1

    :goto_dc6
    cmp-long v186, v105, v115

    if-eqz v186, :cond_e18

    move-object/from16 v190, v2

    const/4 v8, 0x5

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v191, v3

    move-object/from16 v3, v171

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v171

    move-object/from16 v192, v6

    move-object/from16 v6, v171

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v2, v8

    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v2, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v2, v8

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v2, v8

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x4

    aput-object v6, v2, v8

    const-string/jumbo v6, "sy"

    invoke-static {v9, v0, v12, v6, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e20

    :cond_e18
    move-object/from16 v190, v2

    move-object/from16 v191, v3

    move-object/from16 v192, v6

    move-object/from16 v3, v171

    :goto_e20
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v171, v3

    move-wide/from16 v200, v14

    move-object/from16 v15, v184

    move-object/from16 v14, v185

    move-object/from16 v6, v192

    const/16 v8, 0x5f

    goto/16 :goto_d8e

    :cond_e30
    move-object/from16 v192, v6

    move-object/from16 v185, v14

    move-object/from16 v184, v15

    move-object/from16 v3, v171

    move-wide/from16 v14, v200

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_e44
    if-ltz v1, :cond_ed2

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v4, v5, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v6, v6, v111

    const-wide/16 v64, 0x3e8

    div-long v6, v6, v64

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v105

    move-wide/from16 v188, v4

    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_e67

    invoke-virtual {v4, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v190

    goto :goto_e69

    :cond_e67
    const-wide/16 v190, -0x1

    :goto_e69
    if-eqz v4, :cond_e70

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    goto :goto_e71

    :cond_e70
    const/4 v5, -0x1

    :goto_e71
    cmp-long v106, v6, v115

    if-eqz v106, :cond_ec3

    move-object/from16 v106, v2

    move-object/from16 v171, v4

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v193

    move-object/from16 v194, v8

    move-object/from16 v8, v193

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v4, v8

    invoke-static/range {v105 .. v105}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v4, v8

    invoke-static/range {v190 .. v191}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v67, 0x3

    aput-object v2, v4, v67

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v68, 0x4

    aput-object v2, v4, v68

    const-string/jumbo v2, "jb"

    invoke-static {v9, v0, v12, v2, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_eca

    :cond_ec3
    move-object/from16 v106, v2

    move-object/from16 v171, v4

    move-object/from16 v194, v8

    const/4 v8, 0x2

    :goto_eca
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v4, v188

    move-object/from16 v8, v194

    goto/16 :goto_e44

    :cond_ed2
    move-wide/from16 v188, v4

    move-object/from16 v194, v8

    const/4 v8, 0x2

    invoke-static {}, Landroid/app/job/JobParameters;->getJobStopReasonCodes()[I

    move-result-object v6

    array-length v1, v6

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_ee9
    if-ltz v1, :cond_f49

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-eqz v2, :cond_f3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v62

    move-object/from16 v8, v62

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x0

    :goto_f14
    array-length v8, v6

    if-ge v4, v8, :cond_f32

    add-int/lit8 v8, v4, 0x1

    move-object/from16 v171, v3

    aget v3, v6, v4

    move-object/from16 v62, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v62

    move-object/from16 v3, v171

    const/4 v8, 0x0

    goto :goto_f14

    :cond_f32
    move-object/from16 v171, v3

    move-object/from16 v62, v5

    const-string/jumbo v3, "jbc"

    invoke-static {v9, v0, v12, v3, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f41

    :cond_f3d
    move-object/from16 v171, v3

    move-object/from16 v62, v5

    :goto_f41
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v5, v62

    move-object/from16 v3, v171

    const/4 v8, 0x2

    goto :goto_ee9

    :cond_f49
    move-object/from16 v171, v3

    move-object/from16 v62, v5

    invoke-virtual {v11, v13, v10}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f66

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string/jumbo v1, "jbd"

    invoke-static {v9, v0, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f66
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fla"

    move-object/from16 v1, p2

    move v2, v0

    move-object/from16 v8, v171

    move-object v3, v12

    move-wide/from16 v105, v188

    move-object/from16 v123, v6

    move-object/from16 v171, v7

    move-object/from16 v74, v192

    const/16 v188, 0xd

    const/16 v189, 0xa

    move-wide/from16 v6, v105

    move-object/from16 v202, v8

    move-object/from16 v186, v13

    move-object/from16 v114, v183

    const/4 v13, 0x2

    move/from16 v183, v60

    move/from16 v60, v168

    move-object/from16 v168, v194

    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "cam"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v4, "vid"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "aud"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_fb7
    if-ge v1, v6, :cond_104d

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_1040

    move-wide/from16 v200, v14

    move-wide/from16 v13, v105

    invoke-virtual {v4, v13, v14, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v105

    add-long v105, v105, v111

    const-wide/16 v64, 0x3e8

    div-long v105, v105, v64

    cmp-long v5, v105, v115

    if-eqz v5, :cond_1039

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_fea

    invoke-virtual {v7, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v190

    goto :goto_fec

    :cond_fea
    const/16 v190, 0x0

    :goto_fec
    move-wide/from16 v191, v13

    move-wide/from16 v13, v200

    invoke-virtual {v4, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v193

    if-eqz v7, :cond_ffb

    invoke-virtual {v7, v13, v14}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v195

    goto :goto_ffd

    :cond_ffb
    move-wide/from16 v195, v115

    :goto_ffd
    move-object/from16 v198, v2

    const/4 v15, 0x6

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v2, v16

    invoke-static/range {v105 .. v106}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v63, 0x1

    aput-object v15, v2, v63

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v197, 0x2

    aput-object v15, v2, v197

    invoke-static/range {v190 .. v190}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v197

    const/16 v67, 0x3

    aput-object v197, v2, v67

    invoke-static/range {v193 .. v194}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v197

    const/16 v68, 0x4

    aput-object v197, v2, v68

    invoke-static/range {v195 .. v196}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v197

    const/16 v69, 0x5

    aput-object v197, v2, v69

    const-string/jumbo v15, "sr"

    invoke-static {v9, v0, v12, v15, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1045

    :cond_1039
    move-object/from16 v198, v2

    move-wide/from16 v191, v13

    move-wide/from16 v13, v200

    goto :goto_1045

    :cond_1040
    move-object/from16 v198, v2

    move-wide v13, v14

    move-wide/from16 v191, v105

    :goto_1045
    add-int/lit8 v1, v1, 0x1

    move-wide v14, v13

    move-wide/from16 v105, v191

    const/4 v13, 0x2

    goto/16 :goto_fb7

    :cond_104d
    move-wide v13, v14

    move-wide/from16 v191, v105

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string/jumbo v4, "vib"

    move-object/from16 v1, p2

    move v2, v0

    move-object v3, v12

    move/from16 v105, v6

    move-wide/from16 v6, v191

    move-object/from16 v106, v8

    move/from16 v8, p3

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fg"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-string v4, "fgs"

    invoke-static/range {v1 .. v8}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const/4 v1, 0x7

    new-array v2, v1, [Ljava/lang/Object;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_107e
    if-ge v5, v1, :cond_109a

    move-wide/from16 v6, v191

    invoke-virtual {v11, v5, v6, v7, v10}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v190

    add-long v3, v3, v190

    add-long v192, v190, v111

    const-wide/16 v64, 0x3e8

    div-long v192, v192, v64

    invoke-static/range {v192 .. v193}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v2, v5

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v191, v6

    const/4 v1, 0x7

    goto :goto_107e

    :cond_109a
    move-wide/from16 v6, v191

    cmp-long v1, v3, v115

    if-lez v1, :cond_10a6

    const-string/jumbo v1, "st"

    invoke-static {v9, v0, v12, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10a6
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v190

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v192

    cmp-long v1, v190, v115

    if-gtz v1, :cond_10b6

    cmp-long v1, v192, v115

    if-lez v1, :cond_10d5

    :cond_10b6
    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Object;

    const-wide/16 v64, 0x3e8

    div-long v194, v190, v64

    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x0

    aput-object v1, v5, v8

    div-long v194, v192, v64

    invoke-static/range {v194 .. v195}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v5, v8

    const/4 v1, 0x2

    aput-object v118, v5, v1

    const-string v1, "cpu"

    invoke-static {v9, v0, v12, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10d5
    if-eqz v119, :cond_11e0

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v1

    if-eqz v1, :cond_1159

    array-length v5, v1

    move-object/from16 v8, v119

    array-length v15, v8

    if-ne v5, v15, :cond_1150

    move-object/from16 v5, v186

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v15, 0x0

    :goto_10ea
    move-object/from16 v119, v2

    array-length v2, v1

    if-ge v15, v2, :cond_1104

    if-eqz v15, :cond_10f6

    const/16 v2, 0x2c

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10f6
    move-wide/from16 v194, v3

    aget-wide v2, v1, v15

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v119

    move-wide/from16 v3, v194

    goto :goto_10ea

    :cond_1104
    move-wide/from16 v194, v3

    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v2

    if-eqz v2, :cond_1125

    const/4 v3, 0x0

    :goto_110d
    array-length v4, v2

    if-ge v3, v4, :cond_1122

    const/16 v4, 0x2c

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v200, v6

    aget-wide v6, v2, v3

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v6, v200

    goto :goto_110d

    :cond_1122
    move-wide/from16 v200, v6

    goto :goto_1133

    :cond_1125
    move-wide/from16 v200, v6

    const/4 v3, 0x0

    :goto_1128
    array-length v4, v1

    if-ge v3, v4, :cond_1133

    const-string v4, ",0"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1128

    :cond_1133
    :goto_1133
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const-string v3, "A"

    const/4 v6, 0x0

    aput-object v3, v4, v6

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v4, v6

    const-string v3, "ctf"

    invoke-static {v9, v0, v12, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1163

    :cond_1150
    move-object/from16 v119, v2

    move-wide/from16 v194, v3

    move-wide/from16 v200, v6

    move-object/from16 v5, v186

    goto :goto_1163

    :cond_1159
    move-wide/from16 v194, v3

    move-wide/from16 v200, v6

    move-object/from16 v8, v119

    move-object/from16 v5, v186

    move-object/from16 v119, v2

    :goto_1163
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    :goto_116a
    const/4 v4, 0x7

    if-ge v3, v4, :cond_11dd

    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v4

    if-eqz v4, :cond_11d6

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x0

    :goto_1178
    array-length v6, v2

    if-ge v4, v6, :cond_118a

    if-eqz v4, :cond_1182

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1182
    aget-wide v6, v2, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1178

    :cond_118a
    invoke-virtual {v11, v2, v3}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v4

    if-eqz v4, :cond_11a9

    const/4 v4, 0x0

    :goto_1191
    array-length v6, v2

    if-ge v4, v6, :cond_11a6

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v196, v13

    aget-wide v13, v2, v4

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v13, v196

    goto :goto_1191

    :cond_11a6
    move-wide/from16 v196, v13

    goto :goto_11b7

    :cond_11a9
    move-wide/from16 v196, v13

    const/4 v4, 0x0

    :goto_11ac
    array-length v6, v2

    if-ge v4, v6, :cond_11b7

    const-string v6, ",0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_11ac

    :cond_11b7
    :goto_11b7
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    sget-object v4, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v3

    const/4 v7, 0x0

    aput-object v4, v6, v7

    array-length v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const-string v4, "ctf"

    invoke-static {v9, v0, v12, v4, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11d8

    :cond_11d6
    move-wide/from16 v196, v13

    :goto_11d8
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v13, v196

    goto :goto_116a

    :cond_11dd
    move-wide/from16 v196, v13

    goto :goto_11ec

    :cond_11e0
    move-wide/from16 v194, v3

    move-wide/from16 v200, v6

    move-wide/from16 v196, v13

    move-object/from16 v8, v119

    move-object/from16 v5, v186

    move-object/from16 v119, v2

    :goto_11ec
    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_11f7
    if-ltz v2, :cond_129a

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v6

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v13

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v203

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v4

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v186

    invoke-virtual {v3, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v198

    cmp-long v205, v6, v115

    if-nez v205, :cond_1231

    cmp-long v205, v13, v115

    if-nez v205, :cond_1231

    cmp-long v205, v203, v115

    if-nez v205, :cond_1231

    if-nez v4, :cond_1231

    if-nez v198, :cond_1231

    if-eqz v186, :cond_122a

    goto :goto_1231

    :cond_122a
    move-object/from16 v207, v1

    move-object/from16 v206, v5

    move-object/from16 v5, v202

    goto :goto_1290

    :cond_1231
    :goto_1231
    move-object/from16 v71, v3

    const/4 v15, 0x7

    new-array v3, v15, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v206, v5

    move-object/from16 v5, v202

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v202

    move-object/from16 v207, v1

    move-object/from16 v1, v202

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v3, v15

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v15, 0x1

    aput-object v1, v3, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v3, v15

    invoke-static/range {v203 .. v204}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v67, 0x3

    aput-object v15, v3, v67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v68, 0x4

    aput-object v15, v3, v68

    invoke-static/range {v198 .. v198}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v69, 0x5

    aput-object v15, v3, v69

    invoke-static/range {v186 .. v186}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v70, 0x6

    aput-object v15, v3, v70

    const-string/jumbo v15, "pr"

    invoke-static {v9, v0, v12, v15, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1290
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v202, v5

    move-object/from16 v5, v206

    move-object/from16 v1, v207

    goto/16 :goto_11f7

    :cond_129a
    move-object/from16 v207, v1

    move-object/from16 v206, v5

    move-object/from16 v5, v202

    nop

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_12ab
    if-ltz v3, :cond_1396

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    :goto_12be
    if-ltz v13, :cond_12f5

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v14, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v14

    add-int/2addr v6, v14

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v202, v5

    const/16 v1, 0x5f

    const/16 v5, 0x2c

    invoke-virtual {v15, v5, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v15, v5, v16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    const/16 v63, 0x1

    aput-object v71, v5, v63

    const-string/jumbo v1, "wua"

    invoke-static {v9, v0, v12, v1, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v5, v202

    goto :goto_12be

    :cond_12f5
    move-object/from16 v202, v5

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v13, 0x1

    sub-int/2addr v5, v13

    :goto_1301
    if-ltz v5, :cond_137c

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v14, v103

    invoke-virtual {v13, v14, v15, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v103

    invoke-virtual {v13, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v71

    invoke-virtual {v13, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v186

    cmp-long v198, v103, v115

    if-nez v198, :cond_1333

    if-nez v71, :cond_1333

    if-eqz v186, :cond_1320

    goto :goto_1333

    :cond_1320
    move-object/from16 v198, v4

    move-object/from16 v70, v7

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v204, 0x2

    goto :goto_1373

    :cond_1333
    :goto_1333
    move-object/from16 v198, v4

    move-object/from16 v70, v7

    const/4 v4, 0x6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v203

    const/16 v16, 0x0

    aput-object v203, v7, v16

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v203

    const/16 v63, 0x1

    aput-object v203, v7, v63

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v203

    const/16 v204, 0x2

    aput-object v203, v7, v204

    const-wide/16 v64, 0x3e8

    div-long v208, v103, v64

    invoke-static/range {v208 .. v209}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v203

    const/16 v67, 0x3

    aput-object v203, v7, v67

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v203

    const/16 v68, 0x4

    aput-object v203, v7, v68

    invoke-static/range {v186 .. v186}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v203

    const/16 v69, 0x5

    aput-object v203, v7, v69

    const-string v4, "apk"

    invoke-static {v9, v0, v12, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1373
    add-int/lit8 v5, v5, -0x1

    move-wide/from16 v103, v14

    move-object/from16 v7, v70

    move-object/from16 v4, v198

    goto :goto_1301

    :cond_137c
    move-object/from16 v198, v4

    move-object/from16 v70, v7

    move-wide/from16 v14, v103

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v204, 0x2

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v5, v202

    goto/16 :goto_12ab

    :cond_1396
    move-object/from16 v202, v5

    move-wide/from16 v14, v103

    const/16 v16, 0x0

    const/16 v63, 0x1

    const-wide/16 v64, 0x3e8

    const/16 v67, 0x3

    const/16 v68, 0x4

    const/16 v69, 0x5

    const/16 v204, 0x2

    :goto_13a8
    add-int/lit8 v3, v169, 0x1

    move-object/from16 v7, p1

    move/from16 v11, p4

    move-object v0, v8

    move-wide/from16 v103, v14

    move-object/from16 v119, v82

    move-object/from16 v8, v114

    move-object/from16 v6, v121

    move-object/from16 v15, v167

    move-object/from16 v5, v170

    move-wide/from16 v105, v196

    move-wide/from16 v121, v200

    move-object/from16 v14, v202

    move-object/from16 v13, v206

    const/16 v4, 0x2c

    move/from16 v82, v60

    goto/16 :goto_869

    :cond_13c9
    return-void
.end method

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v10, 0x0

    aput-object v1, v0, v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v11, 0x1

    aput-object v1, v0, v11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x2

    aput-object v1, v0, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v13, "i"

    const-string/jumbo v1, "vers"

    invoke-static {v8, v10, v13, v1, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v14, v0, v2

    and-int/lit8 v0, p4, 0x18

    if-eqz v0, :cond_b2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x0

    :goto_4c
    :try_start_4c
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_9d

    const/16 v1, 0x9

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(C)V

    const-string/jumbo v2, "hsp"

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v8, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ",\""

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_7d
    .catchall {:try_start_4c .. :try_end_7d} :catchall_ad

    const-string v2, "\""

    if-eqz v1, :cond_94

    :try_start_81
    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_94
    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_9d
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_a9
    .catchall {:try_start_81 .. :try_end_a9} :catchall_ad

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_b2

    :catchall_ad
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    :cond_b2
    :goto_b2
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_b7

    return-void

    :cond_b7
    if-eqz v9, :cond_166

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    :goto_bf
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_fe

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    if-nez v3, :cond_f2

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/MutableBoolean;

    invoke-direct {v6, v10}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_f2
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    :cond_fe
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v12, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_109
    if-ge v4, v2, :cond_164

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    if-eqz v6, :cond_15c

    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/MutableBoolean;

    iget-boolean v12, v12, Landroid/util/MutableBoolean;->value:Z

    if-nez v12, :cond_15c

    iget-object v12, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroid/util/MutableBoolean;

    iput-boolean v11, v12, Landroid/util/MutableBoolean;->value:Z

    const/4 v12, 0x0

    :goto_12a
    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v12, v11, :cond_159

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v10

    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v11, v3, v16

    move-object v11, v3

    check-cast v11, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const-string/jumbo v0, "uid"

    invoke-static {v8, v10, v13, v0, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    const/4 v11, 0x1

    goto :goto_12a

    :cond_159
    move-object/from16 v17, v0

    goto :goto_15e

    :cond_15c
    move-object/from16 v17, v0

    :goto_15e
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v17

    const/4 v11, 0x1

    goto :goto_109

    :cond_164
    move-object/from16 v17, v0

    :cond_166
    and-int/lit8 v0, p4, 0x4

    if-nez v0, :cond_1d1

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v1, ""

    const-string v2, "dsd"

    const/4 v3, 0x1

    invoke-static {v8, v1, v2, v0, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v7, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    const-wide/16 v11, 0x0

    cmp-long v6, v2, v11

    if-ltz v6, :cond_197

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v10

    move-object v6, v0

    check-cast v6, [Ljava/lang/Object;

    const-string v11, "dtr"

    invoke-static {v8, v10, v13, v11, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_197
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v6

    const-string v11, "csd"

    const/4 v12, 0x1

    invoke-static {v8, v1, v11, v6, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    mul-long v4, v4, v18

    invoke-virtual {v7, v4, v5}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v18

    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-ltz v1, :cond_1bf

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    const-string v2, "ctr"

    invoke-static {v8, v10, v13, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1bf
    const/4 v4, 0x0

    const/4 v5, -0x1

    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_1c7

    move v6, v12

    goto :goto_1c8

    :cond_1c7
    move v6, v10

    :goto_1c8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    :cond_1d1
    return-void
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .registers 34

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v0, p3, 0xe

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move/from16 v16, v0

    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_16

    if-nez v16, :cond_78

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v0

    int-to-long v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v0

    int-to-long v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_78

    :try_start_26
    const-string v0, "Battery History ("

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v9

    div-long/2addr v0, v7

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "% used, "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v14, v15, v9, v10}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, " used of "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {v14, v15, v7, v8}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, ", "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " strings using "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v14, v15, v0, v1}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v0, "):"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_6f
    .catchall {:try_start_26 .. :try_end_6f} :catchall_73

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_78

    :catchall_73
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    :cond_78
    :goto_78
    if-eqz v16, :cond_7f

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_7f

    return-void

    :cond_7f
    if-nez v16, :cond_e4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    :goto_8f
    if-ge v5, v1, :cond_df

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v9

    if-eqz v9, :cond_dc

    const/4 v10, 0x0

    :goto_9e
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_dc

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v2, :cond_b2

    const-string v13, "Per-PID Stats:"

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_b2
    iget-wide v7, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v13, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v13, :cond_bd

    iget-wide v12, v11, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v3, v12

    goto :goto_bf

    :cond_bd
    const-wide/16 v12, 0x0

    :goto_bf
    add-long/2addr v7, v12

    const-string v12, "  PID "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " wake time: "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v7, v8, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v12, ""

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_9e

    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_8f

    :cond_df
    if-eqz v2, :cond_e4

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_e4
    if-eqz v16, :cond_ee

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_eb

    goto :goto_ee

    :cond_eb
    const/4 v12, 0x0

    goto/16 :goto_17d

    :cond_ee
    :goto_ee
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v7, "  "

    const-string v1, "Discharge step durations:"

    const/4 v2, 0x0

    invoke-static {v15, v7, v1, v0, v2}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    const-wide/16 v8, 0x3e8

    if-eqz v0, :cond_14f

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v8

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v10

    const-wide/16 v0, 0x0

    cmp-long v2, v10, v0

    if-ltz v2, :cond_11d

    const-string v0, "  Estimated discharge time remaining: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long v0, v10, v8

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_11d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const/4 v1, 0x0

    move v12, v1

    :goto_123
    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v2, v1

    if-ge v12, v2, :cond_14c

    sget-object v2, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v2, v12

    aget v1, v1, v12

    int-to-long v1, v1

    sget-object v4, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v4, v4, v12

    int-to-long v4, v4

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-wide/from16 v21, v1

    move-wide/from16 v23, v4

    invoke-virtual/range {v20 .. v25}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v5

    const-string v2, "  Estimated "

    const-string v4, " time: "

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_123

    :cond_14c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_14f
    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v0

    const-string v1, "Charge step durations:"

    const/4 v12, 0x0

    invoke-static {v15, v7, v1, v0, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v0

    if-eqz v0, :cond_17d

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v8

    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_17a

    const-string v2, "  Estimated charge time remaining: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    div-long v2, v0, v8

    invoke-static {v2, v3, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_17a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_17d
    :goto_17d
    if-eqz v16, :cond_189

    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_184

    goto :goto_189

    :cond_184
    move v1, v12

    const/16 v17, 0x1

    goto/16 :goto_333

    :cond_189
    :goto_189
    const-string v0, "Daily stats:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Current start time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v0

    const-string/jumbo v13, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Next min deadline: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Next max deadline: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v0

    invoke-static {v13, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x1

    new-array v11, v0, [I

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v8

    iget v1, v10, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const-string v7, "    "

    if-gtz v1, :cond_1ff

    iget v1, v9, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_1ff

    if-eqz v8, :cond_1f3

    goto :goto_1ff

    :cond_1f3
    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v26, v13

    goto/16 :goto_276

    :cond_1ff
    :goto_1ff
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_23d

    if-nez v16, :cond_210

    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v26, v13

    goto :goto_247

    :cond_210
    const-string v1, "  Current daily steps:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    const-string v4, "Discharge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v10

    move-object v0, v7

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v1, "    "

    const-string v2, "Charge"

    move-object/from16 v7, p0

    move-object v3, v8

    move-object/from16 v8, p2

    move-object v4, v9

    move-object v9, v1

    move-object v1, v10

    move-object v10, v2

    move-object v2, v11

    move-object v11, v4

    move v5, v12

    move-object v12, v6

    move-object/from16 v26, v13

    const/16 v17, 0x1

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_276

    :cond_23d
    move/from16 v17, v0

    move-object v0, v7

    move-object v3, v8

    move-object v4, v9

    move-object v1, v10

    move-object v2, v11

    move v5, v12

    move-object/from16 v26, v13

    :goto_247
    const-string v7, "  Current daily discharge step durations:"

    invoke-static {v15, v0, v7, v1, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_25d

    const-string v9, "      "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v11, v1

    move-object v12, v6

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_25d
    const-string v7, "  Current daily charge step durations:"

    invoke-static {v15, v0, v7, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_273

    const-string v9, "      "

    const-string v10, "Charge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v11, v4

    move-object v12, v6

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_273
    invoke-direct {v14, v15, v0, v3}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_276
    const/4 v7, 0x0

    :goto_277
    invoke-virtual {v14, v7}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v8

    move-object v13, v8

    if-eqz v8, :cond_32c

    add-int/lit8 v18, v7, 0x1

    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_287

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_287
    const-string v7, "  Daily from "

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v13, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    move-object/from16 v12, v26

    invoke-static {v12, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " to "

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v13, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v12, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v15, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v7, p3, 0x4

    if-nez v7, :cond_2db

    if-nez v16, :cond_2bc

    move-object/from16 v19, v12

    move-object v5, v13

    goto :goto_2de

    :cond_2bc
    iget-object v11, v13, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "    "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v19, v12

    move-object v12, v6

    move-object v5, v13

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "    "

    const-string v10, "Charge"

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    move-object/from16 v20, v1

    const/4 v1, 0x0

    goto :goto_323

    :cond_2db
    move-object/from16 v19, v12

    move-object v5, v13

    :goto_2de
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v13, "      "

    const-string v8, "    Discharge step durations:"

    const/4 v9, 0x0

    invoke-static {v15, v13, v8, v7, v9}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v7

    if-eqz v7, :cond_2fe

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "        "

    const-string v10, "Discharge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v12, v6

    move-object/from16 v20, v1

    move-object v1, v13

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_301

    :cond_2fe
    move-object/from16 v20, v1

    move-object v1, v13

    :goto_301
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v8, "    Charge step durations:"

    const/4 v13, 0x0

    invoke-static {v15, v1, v8, v7, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_31d

    iget-object v11, v5, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const-string v9, "        "

    const-string v10, "Charge"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object v12, v6

    move v1, v13

    move-object v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_31e

    :cond_31d
    move v1, v13

    :goto_31e
    iget-object v7, v5, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v14, v15, v0, v7}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_323
    move v5, v1

    move/from16 v7, v18

    move-object/from16 v26, v19

    move-object/from16 v1, v20

    goto/16 :goto_277

    :cond_32c
    move-object/from16 v20, v1

    move v1, v5

    move-object v5, v13

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_333
    if-eqz v16, :cond_339

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_37f

    :cond_339
    const-string v0, "Statistics since last charge:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  System starts: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", currently on battery: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_36e

    move/from16 v7, v17

    goto :goto_36f

    :cond_36e
    move v7, v1

    :goto_36f
    const-string v4, ""

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_37f
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .registers 13

    invoke-static {p1}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .registers 241

    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p4

    move/from16 v11, p5

    if-eqz v13, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: BatteryStats.dump called for which type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " but only STATS_SINCE_CHARGED is supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v16, 0x3e8

    mul-long v9, v0, v16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v5, v0, v16

    const-wide/16 v18, 0x1f4

    add-long v0, v5, v18

    div-long v3, v0, v16

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    move-wide/from16 v20, v3

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v3

    move-wide/from16 v22, v1

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v11

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v24

    move-wide/from16 v26, v3

    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v3

    move-wide/from16 v28, v9

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v9

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v30

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v32

    move-wide/from16 v34, v3

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    move-wide/from16 v36, v5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v6

    move-object/from16 v38, v0

    const-string v0, " mAh"

    move/from16 v39, v5

    const/4 v5, 0x0

    if-lez v6, :cond_ae

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Estimated battery capacity: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v41, v3

    int-to-double v3, v6

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b0

    :cond_ae
    move-wide/from16 v41, v3

    :goto_b0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLearnedBatteryCapacity()I

    move-result v5

    if-lez v5, :cond_d6

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Last learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v5, 0x3e8

    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    if-lez v4, :cond_ff

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Min learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v4, 0x3e8

    move/from16 v43, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_101

    :cond_ff
    move/from16 v43, v4

    :goto_101
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    if-lez v4, :cond_12a

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Max learned battery capacity: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v4, 0x3e8

    move/from16 v44, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12c

    :cond_12a
    move/from16 v44, v4

    :goto_12c
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v1, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") realtime, "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v46, v5

    move/from16 v45, v6

    div-long v5, v26, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v26

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") uptime"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery screen off: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    div-long v5, v9, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") realtime, "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v34, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v34

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") uptime"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Time on battery screen doze: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    div-long v5, v41, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v41

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Total run time: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v11, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "realtime, "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v24, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "uptime"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    cmp-long v47, v30, v5

    if-ltz v47, :cond_21f

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Battery time remaining: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v30, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21f
    const-wide/16 v5, 0x0

    cmp-long v49, v32, v5

    if-ltz v49, :cond_23d

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  Charge time remaining: "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v32, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_23d
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v5

    const-wide/16 v47, 0x0

    cmp-long v49, v5, v47

    const-wide v50, 0x408f400000000000L  # 1000.0

    if-ltz v49, :cond_26f

    move-wide/from16 v52, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Discharge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v9, v5

    div-double v9, v9, v50

    invoke-static {v9, v10}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_271

    :cond_26f
    move-wide/from16 v52, v9

    :goto_271
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v9

    const-wide/16 v47, 0x0

    cmp-long v49, v9, v47

    if-ltz v49, :cond_29e

    move-wide/from16 v54, v11

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Screen off discharge: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v11, v9

    div-double v11, v11, v50

    invoke-static {v11, v12}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a0

    :cond_29e
    move-wide/from16 v54, v11

    :goto_2a0
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v11

    const-wide/16 v47, 0x0

    cmp-long v49, v11, v47

    if-ltz v49, :cond_2cf

    move-object/from16 v49, v3

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Screen doze discharge: "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v56, v1

    long-to-double v1, v11

    div-double v1, v1, v50

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d3

    :cond_2cf
    move-wide/from16 v56, v1

    move-object/from16 v49, v3

    :goto_2d3
    sub-long v2, v5, v9

    const-wide/16 v47, 0x0

    cmp-long v1, v2, v47

    if-ltz v1, :cond_2fe

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Screen on discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v58, v5

    long-to-double v5, v2

    div-double v5, v5, v50

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_300

    :cond_2fe
    move-wide/from16 v58, v5

    :goto_300
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v5

    const-wide/16 v47, 0x0

    cmp-long v1, v5, v47

    if-ltz v1, :cond_32d

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Device light doze discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v60, v2

    long-to-double v1, v5

    div-double v1, v1, v50

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32f

    :cond_32d
    move-wide/from16 v60, v2

    :goto_32f
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v2

    const-wide/16 v47, 0x0

    cmp-long v1, v2, v47

    if-ltz v1, :cond_35c

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Device deep doze discharge: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v62, v5

    long-to-double v5, v2

    div-double v5, v5, v50

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35e

    :cond_35c
    move-wide/from16 v62, v5

    :goto_35e
    const-string v0, "  Start clock time: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v0

    const-string/jumbo v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v5, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v5, v36

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    move-wide/from16 v36, v11

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v11

    move-wide/from16 v50, v9

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v9

    move-wide/from16 v64, v2

    const/4 v3, 0x1

    move-wide/from16 v66, v9

    invoke-virtual {v7, v3, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    const/4 v2, 0x2

    move-wide/from16 v68, v9

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    move-wide/from16 v70, v9

    invoke-virtual {v7, v3, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    move-object/from16 v72, v4

    invoke-virtual {v7, v2, v5, v6, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v3

    move-wide/from16 v75, v3

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v2

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v77

    invoke-virtual {v7, v5, v6, v13}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v79

    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Screen on: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v81, v2

    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v4, v72

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v56

    move-wide/from16 v56, v9

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x, Interactive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v72, v10

    div-long v9, v11, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v49

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  Screen brightnesses:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    const/16 v49, 0x0

    move-wide/from16 v83, v11

    move/from16 v11, v49

    :goto_416
    const/4 v12, 0x5

    move-wide/from16 v85, v2

    const-string v2, " "

    if-ge v11, v12, :cond_45d

    move-object/from16 v49, v9

    move v3, v10

    invoke-virtual {v7, v11, v5, v6, v13}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v9

    const-wide/16 v47, 0x0

    cmp-long v12, v9, v47

    if-nez v12, :cond_42e

    move v10, v3

    move-object/from16 v2, v49

    goto :goto_457

    :cond_42e
    const-string v12, "\n    "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    sget-object v12, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v12, v12, v11

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v12, v3

    div-long v2, v9, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10, v0, v1}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v49

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v12

    :goto_457
    add-int/lit8 v11, v11, 0x1

    move-object v9, v2

    move-wide/from16 v2, v85

    goto :goto_416

    :cond_45d
    move v3, v10

    const-string v10, " (no activity)"

    if-nez v3, :cond_465

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_465
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v47, 0x0

    cmp-long v11, v66, v47

    if-eqz v11, :cond_4a0

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Power save mode enabled: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v12, v66, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v85

    move-wide/from16 v228, v0

    move-wide/from16 v0, v66

    move-wide/from16 v66, v228

    invoke-virtual {v7, v0, v1, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a8

    :cond_4a0
    move-wide/from16 v12, v85

    move-wide/from16 v228, v0

    move-wide/from16 v0, v66

    move-wide/from16 v66, v228

    :goto_4a8
    const-wide/16 v47, 0x0

    cmp-long v11, v56, v47

    move/from16 v85, v3

    const-string/jumbo v3, "x"

    if-eqz v11, :cond_4ee

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Device light idling: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v86, v0

    div-long v0, v56, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v56

    invoke-virtual {v7, v0, v1, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v72

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v72, v10

    const/4 v0, 0x1

    move/from16 v1, p4

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4f6

    :cond_4ee
    move-wide/from16 v86, v0

    move-object/from16 v11, v72

    move/from16 v1, p4

    move-object/from16 v72, v10

    :goto_4f6
    const-wide/16 v47, 0x0

    cmp-long v0, v68, v47

    if-eqz v0, :cond_53d

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode light time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v88, v9

    div-long v9, v68, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v68

    invoke-virtual {v7, v9, v10, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -- longest "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53f

    :cond_53d
    move-object/from16 v88, v9

    :goto_53f
    const-wide/16 v9, 0x0

    cmp-long v0, v75, v9

    if-eqz v0, :cond_577

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device full idling: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v75, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v75

    invoke-virtual {v7, v9, v10, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_577
    const-wide/16 v9, 0x0

    cmp-long v0, v70, v9

    if-eqz v0, :cond_5bb

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode full time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v70, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v70

    invoke-virtual {v7, v9, v10, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -- longest "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5bb
    const-wide/16 v9, 0x0

    cmp-long v0, v81, v9

    if-eqz v0, :cond_5ec

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Active phone call: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v81, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v81

    invoke-virtual {v7, v9, v10, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5ee

    :cond_5ec
    move-wide/from16 v9, v81

    :goto_5ee
    invoke-virtual {v7, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v0

    if-eqz v0, :cond_602

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v81, v3

    const-string v3, "  Connectivity changes: "

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_604

    :cond_602
    move-object/from16 v81, v3

    :goto_604
    const-wide/16 v89, 0x0

    const-wide/16 v91, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v82, 0x0

    move/from16 v93, v0

    move/from16 v0, v82

    :goto_613
    move-wide/from16 v94, v9

    move/from16 v9, v39

    if-ge v0, v9, :cond_696

    move-object/from16 v10, v38

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/BatteryStats$Uid;

    nop

    move/from16 v39, v9

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v82

    move-object/from16 v96, v10

    const/4 v10, 0x1

    add-int/lit8 v82, v82, -0x1

    move/from16 v10, v82

    :goto_633
    if-ltz v10, :cond_688

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v82

    move-object/from16 v97, v11

    move-object/from16 v11, v82

    check-cast v11, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/from16 v82, v2

    move-wide/from16 v98, v12

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_650

    invoke-virtual {v12, v5, v6, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v100

    add-long v89, v89, v100

    :cond_650
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v13

    if-eqz v13, :cond_67f

    invoke-virtual {v13, v5, v6, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v106

    const-wide/16 v47, 0x0

    cmp-long v2, v106, v47

    if-lez v2, :cond_67f

    if-gez p5, :cond_67d

    new-instance v2, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v100

    move-object/from16 v101, v100

    check-cast v101, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v102

    move-object/from16 v100, v2

    move-object/from16 v103, v13

    move-wide/from16 v104, v106

    invoke-direct/range {v100 .. v105}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67d
    add-long v91, v91, v106

    :cond_67f
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v2, v82

    move-object/from16 v11, v97

    move-wide/from16 v12, v98

    goto :goto_633

    :cond_688
    move-object/from16 v82, v2

    move-object/from16 v97, v11

    move-wide/from16 v98, v12

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v9, v94

    move-object/from16 v38, v96

    goto/16 :goto_613

    :cond_696
    move-object/from16 v82, v2

    move/from16 v39, v9

    move-object/from16 v97, v11

    move-wide/from16 v98, v12

    move-object/from16 v96, v38

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v12

    const/4 v2, 0x1

    invoke-virtual {v7, v2, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-object/from16 v38, v3

    const/4 v11, 0x2

    invoke-virtual {v7, v11, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v2

    const/4 v11, 0x3

    move-wide/from16 v100, v9

    invoke-virtual {v7, v11, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v102, v9

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v104, v9

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v106, v9

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v108, v9

    invoke-virtual {v7, v11, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v9

    const/4 v11, 0x4

    move-wide/from16 v110, v9

    invoke-virtual {v7, v11, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v112, v9

    const/4 v11, 0x5

    invoke-virtual {v7, v11, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move/from16 v49, v0

    move-object/from16 v0, v97

    const-wide/16 v47, 0x0

    cmp-long v74, v89, v47

    if-eqz v74, :cond_707

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  Total full wakelock time: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v114, v89, v18

    move-wide/from16 v116, v2

    div-long v2, v114, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_709

    :cond_707
    move-wide/from16 v116, v2

    :goto_709
    const-wide/16 v2, 0x0

    cmp-long v11, v91, v2

    if-eqz v11, :cond_729

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total partial wakelock time: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v2, v91, v18

    div-long v2, v2, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_729
    nop

    invoke-virtual {v7, v5, v6, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v114

    invoke-virtual {v7, v1}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v3

    const-wide/16 v47, 0x0

    cmp-long v2, v114, v47

    if-eqz v2, :cond_76b

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total WiFi Multicast wakelock Count: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total WiFi Multicast wakelock time: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v118, v114, v18

    move/from16 v97, v3

    div-long v2, v118, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_76d

    :cond_76b
    move/from16 v97, v3

    :goto_76d
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDisplayCount()I

    move-result v3

    const/4 v2, 0x1

    if-le v3, v2, :cond_8d8

    const-string v11, ""

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "  MULTI-DISPLAY POWER SUMMARY START"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_790
    if-ge v11, v3, :cond_8af

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Display "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Statistics:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v118, v3

    invoke-virtual {v7, v11, v5, v6}, Landroid/os/BatteryStats;->getDisplayScreenOnTime(IJ)J

    move-result-wide v2

    move/from16 v119, v11

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Screen on: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v120, v9

    div-long v9, v2, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v98

    invoke-virtual {v7, v2, v3, v9, v10}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v11, "    Screen brightness levels:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    const/16 v85, 0x0

    move/from16 v228, v85

    move/from16 v85, v11

    move/from16 v11, v228

    :goto_7f0
    move-wide/from16 v98, v12

    const/4 v12, 0x5

    if-ge v11, v12, :cond_849

    move v13, v11

    move/from16 v12, v119

    move-object/from16 v74, v0

    invoke-virtual {v7, v12, v13, v5, v6}, Landroid/os/BatteryStats;->getDisplayScreenBrightnessTime(IIJ)J

    move-result-wide v0

    const-wide/16 v47, 0x0

    cmp-long v119, v0, v47

    if-nez v119, :cond_80b

    move-wide/from16 v122, v9

    move-object/from16 v11, v82

    move-object/from16 v9, v88

    goto :goto_837

    :cond_80b
    const/16 v85, 0x1

    const-string v11, "\n      "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v11, v11, v13

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v82

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v122, v9

    div-long v9, v0, v16

    invoke-static {v8, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v88

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_837
    add-int/lit8 v0, v13, 0x1

    move/from16 v1, p4

    move-object/from16 v88, v9

    move-object/from16 v82, v11

    move/from16 v119, v12

    move-wide/from16 v12, v98

    move-wide/from16 v9, v122

    move v11, v0

    move-object/from16 v0, v74

    goto :goto_7f0

    :cond_849
    move-object/from16 v74, v0

    move-wide/from16 v122, v9

    move v13, v11

    move-object/from16 v11, v82

    move-object/from16 v9, v88

    move/from16 v12, v119

    const-wide/16 v47, 0x0

    if-nez v85, :cond_85e

    move-object/from16 v10, v72

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_860

    :cond_85e
    move-object/from16 v10, v72

    :goto_860
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7, v12, v5, v6}, Landroid/os/BatteryStats;->getDisplayScreenDozeTime(IJ)J

    move-result-wide v0

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "    Screen Doze: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v124, v2

    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v122

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v74

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v122, v0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v12, 0x1

    move/from16 v1, p4

    move-object/from16 v88, v9

    move-object/from16 v72, v10

    move-object/from16 v82, v11

    move-wide/from16 v9, v120

    move v11, v0

    move-object v0, v13

    move-wide/from16 v12, v98

    move-wide/from16 v98, v2

    move/from16 v3, v118

    const/4 v2, 0x1

    goto/16 :goto_790

    :cond_8af
    move/from16 v118, v3

    move-wide/from16 v120, v9

    move-object/from16 v10, v72

    move-object/from16 v9, v88

    move-wide/from16 v2, v98

    const-wide/16 v47, 0x0

    move-wide/from16 v98, v12

    move-object v13, v0

    move v12, v11

    move-object/from16 v11, v82

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  MULTI-DISPLAY POWER SUMMARY END"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8e9

    :cond_8d8
    move/from16 v118, v3

    move-wide/from16 v120, v9

    move-object/from16 v10, v72

    move-object/from16 v11, v82

    move-object/from16 v9, v88

    move-wide/from16 v2, v98

    const-wide/16 v47, 0x0

    move-wide/from16 v98, v12

    move-object v13, v0

    :goto_8e9
    const-string v0, ""

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Logging duration for connectivity statistics: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v2, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Cellular Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p4

    move-object/from16 v82, v11

    invoke-virtual {v7, v5, v6, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v11

    div-long v0, v11, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v72

    const-string v74, "Cellular"

    move-object v1, v13

    move/from16 v88, v93

    move-object/from16 v13, v96

    move-wide/from16 v228, v66

    move-wide/from16 v66, v86

    move-wide/from16 v86, v56

    move-wide/from16 v56, v228

    move-object/from16 v0, p0

    move-wide/from16 v126, v22

    move-wide/from16 v22, v11

    move-wide v11, v2

    move/from16 v3, p4

    move-object v2, v1

    move-object/from16 v1, p2

    move-object/from16 v49, v9

    move-object/from16 v13, v82

    move-wide/from16 v93, v94

    move-wide/from16 v128, v116

    const/16 v82, 0x1

    move-object v9, v2

    move-object v2, v8

    move-object/from16 v95, v10

    move-object/from16 v131, v49

    move-object/from16 v130, v81

    move/from16 v49, v97

    move/from16 v81, v118

    move v10, v3

    move-object/from16 v3, p3

    move-object/from16 v97, v9

    move-object v9, v4

    move-object/from16 v4, v74

    move-wide/from16 v122, v11

    move/from16 v133, v39

    move/from16 v39, v46

    move-wide v11, v5

    const/4 v6, 0x0

    move-object/from16 v5, v72

    move-object/from16 v72, v9

    move/from16 v40, v45

    move v9, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v4, v20

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats;->printCellularPerRatBreakdown(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;J)V

    const-string v0, "     Cellular data received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v98

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular data sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v100

    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular packets received: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v104

    invoke-virtual {v15, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Cellular packets sent: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v9, v106

    invoke-virtual {v15, v9, v10}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular Radio Access Technology:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v46, 0x0

    move/from16 v1, v46

    :goto_a11
    sget v2, Landroid/os/BatteryStats;->NUM_DATA_CONNECTION_TYPES:I

    if-ge v1, v2, :cond_a70

    move-wide/from16 v100, v3

    move-wide/from16 v98, v9

    move/from16 v10, p4

    invoke-virtual {v7, v1, v11, v12, v10}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v2

    const-wide/16 v46, 0x0

    cmp-long v4, v2, v46

    if-nez v4, :cond_a2e

    move-wide/from16 v106, v5

    move-object/from16 v9, v72

    move-object/from16 v4, v97

    move-wide/from16 v5, v122

    goto :goto_a61

    :cond_a2e
    const-string v4, "\n       "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v4, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    array-length v9, v4

    if-ge v1, v9, :cond_a3f

    aget-object v4, v4, v1

    goto :goto_a41

    :cond_a3f
    const-string v4, "ERROR"

    :goto_a41
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v106, v5

    div-long v4, v2, v16

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v9, v72

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v122

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v97

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a61
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v97, v4

    move-wide/from16 v122, v5

    move-object/from16 v72, v9

    move-wide/from16 v9, v98

    move-wide/from16 v3, v100

    move-wide/from16 v5, v106

    goto :goto_a11

    :cond_a70
    move-wide/from16 v100, v3

    move-wide/from16 v106, v5

    move-wide/from16 v98, v9

    move-object/from16 v9, v72

    move-object/from16 v4, v97

    move-wide/from16 v5, v122

    move/from16 v10, p4

    if-nez v0, :cond_a86

    move-object/from16 v3, v95

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a88

    :cond_a86
    move-object/from16 v3, v95

    :goto_a88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "very poor (less than -128dBm): "

    const-string/jumbo v2, "poor (-128dBm to -118dBm): "

    move/from16 v46, v0

    const-string/jumbo v0, "moderate (-118dBm to -108dBm): "

    const-string v15, "good (-108dBm to -98dBm): "

    move-object/from16 v72, v3

    const-string v3, "great (greater than -98dBm): "

    filled-new-array {v1, v2, v0, v15, v3}, [Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/CellSignalStrength;->getNumSignalStrengthLevels()I

    move-result v1

    array-length v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v1, 0x0

    move/from16 v46, v0

    :goto_abe
    if-ge v1, v3, :cond_aff

    move/from16 v74, v3

    invoke-virtual {v7, v1, v11, v12, v10}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v47, 0x0

    cmp-long v0, v2, v47

    if-nez v0, :cond_acf

    move-wide/from16 v116, v11

    goto :goto_af6

    :cond_acf
    const-string v0, "\n       "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    move/from16 v46, v0

    aget-object v0, v15, v1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v116, v11

    div-long v10, v2, v16

    invoke-static {v8, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_af6
    add-int/lit8 v1, v1, 0x1

    move/from16 v10, p4

    move/from16 v3, v74

    move-wide/from16 v11, v116

    goto :goto_abe

    :cond_aff
    move/from16 v74, v3

    move-wide/from16 v116, v11

    if-nez v46, :cond_b0b

    move-object/from16 v3, v72

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b0d

    :cond_b0b
    move-object/from16 v3, v72

    :goto_b0d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p2

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wifi Statistics:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi kernel active time: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p4

    move-object/from16 v82, v13

    move-wide/from16 v1, v116

    invoke-virtual {v7, v1, v2, v10}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v12

    nop

    div-long v0, v12, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v131

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v72

    const-string v85, "WiFi"

    move-object/from16 v0, p0

    move-wide/from16 v122, v12

    move-wide/from16 v12, v116

    move-object/from16 v1, p2

    move-object/from16 v95, v15

    move-object v15, v2

    move-object v2, v8

    move-object/from16 v131, v15

    move-object v15, v3

    move-object/from16 v3, p3

    move-object/from16 v97, v15

    move-object v15, v4

    move-object/from16 v4, v85

    move-wide/from16 v134, v5

    move-object/from16 v5, v72

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v0, "     Wifi data received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v128

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v102

    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi packets received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v108

    invoke-virtual {v11, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Wifi packets sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v5, v110

    invoke-virtual {v11, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi states:"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v46, 0x0

    move/from16 v1, v46

    :goto_bc8
    const/16 v2, 0x8

    if-ge v1, v2, :cond_c16

    move-wide/from16 v102, v3

    invoke-virtual {v7, v1, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v2

    const-wide/16 v46, 0x0

    cmp-long v4, v2, v46

    if-nez v4, :cond_bdf

    move-wide/from16 v110, v5

    move-object/from16 v4, v82

    move-wide/from16 v5, v134

    goto :goto_c0b

    :cond_bdf
    const-string v4, "\n       "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    sget-object v4, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v82

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v110, v5

    div-long v5, v2, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v46, v0

    move-wide/from16 v5, v134

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v46

    :goto_c0b
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v82, v4

    move-wide/from16 v134, v5

    move-wide/from16 v3, v102

    move-wide/from16 v5, v110

    goto :goto_bc8

    :cond_c16
    move-wide/from16 v102, v3

    move-wide/from16 v110, v5

    move-object/from16 v4, v82

    move-wide/from16 v5, v134

    if-nez v0, :cond_c26

    move-object/from16 v1, v97

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c28

    :cond_c26
    move-object/from16 v1, v97

    :goto_c28
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     Wifi supplicant states:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_c3d
    const/16 v3, 0xd

    if-ge v2, v3, :cond_c81

    move v3, v0

    move-object/from16 v72, v1

    invoke-virtual {v7, v2, v12, v13, v10}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v0

    const-wide/16 v46, 0x0

    cmp-long v82, v0, v46

    if-nez v82, :cond_c52

    move v0, v3

    move-object/from16 v82, v4

    goto :goto_c78

    :cond_c52
    const-string v10, "\n       "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    sget-object v10, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v3

    move-object/from16 v82, v4

    div-long v3, v0, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v10

    :goto_c78
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, p4

    move-object/from16 v1, v72

    move-object/from16 v4, v82

    goto :goto_c3d

    :cond_c81
    move v3, v0

    move-object/from16 v72, v1

    move-object/from16 v82, v4

    if-nez v3, :cond_c8e

    move-object/from16 v0, v72

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c90

    :cond_c8e
    move-object/from16 v0, v72

    :goto_c90
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "very poor (less than -88.75dBm): "

    const-string/jumbo v2, "poor (-88.75 to -77.5dBm): "

    const-string/jumbo v4, "moderate (-77.5dBm to -66.25dBm): "

    const-string v10, "good (-66.25dBm to -55dBm): "

    move/from16 v46, v3

    const-string v3, "great (greater than -55dBm): "

    filled-new-array {v1, v2, v4, v10, v3}, [Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    const/4 v1, 0x0

    array-length v2, v10

    const/4 v4, 0x5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v2, 0x0

    move/from16 v46, v1

    :goto_cc1
    if-ge v2, v3, :cond_d0e

    move/from16 v1, p4

    move-wide/from16 v134, v5

    invoke-virtual {v7, v2, v12, v13, v1}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v4

    const-wide/16 v47, 0x0

    cmp-long v6, v4, v47

    if-nez v6, :cond_cd8

    move/from16 v72, v3

    move-wide/from16 v116, v12

    move-wide/from16 v12, v134

    goto :goto_d05

    :cond_cd8
    const-string v6, "\n    "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move/from16 v72, v3

    const-string v3, "     "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v10, v2

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v116, v12

    div-long v12, v4, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, v134

    invoke-virtual {v7, v4, v5, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v46, v6

    :goto_d05
    add-int/lit8 v2, v2, 0x1

    move-wide v5, v12

    move/from16 v3, v72

    move-wide/from16 v12, v116

    const/4 v4, 0x5

    goto :goto_cc1

    :cond_d0e
    move/from16 v1, p4

    move/from16 v72, v3

    move-wide/from16 v116, v12

    move-wide v12, v5

    if-nez v46, :cond_d1a

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d1a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  GPS Statistics:"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     GPS signal quality (Top 4 Average CN0):"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "poor (less than 20 dBHz): "

    const-string v2, "good (greater than 20 dBHz): "

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    array-length v0, v6

    const/4 v5, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v0, 0x0

    :goto_d53
    if-ge v0, v4, :cond_d8e

    move-object/from16 v73, v6

    move-wide/from16 v2, v116

    invoke-virtual {v7, v0, v2, v3, v1}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v5

    move/from16 v97, v4

    const-string v4, "\n    "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v73, v0

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    div-long v1, v5, v16

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p4

    move-object/from16 v6, v73

    move/from16 v4, v97

    const/4 v5, 0x2

    goto :goto_d53

    :cond_d8e
    move/from16 v97, v4

    move-object/from16 v73, v6

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-lez v2, :cond_dd4

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     GPS Battery Drain: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v1, v5

    const-wide v3, 0x414b774000000000L  # 3600000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mAh"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_dd4
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Bluetooth total received: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v112

    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", sent: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v1, v120

    invoke-virtual {v7, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v0, p4

    move-wide/from16 v2, v116

    invoke-virtual {v7, v2, v3, v0}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v116

    move-wide/from16 v134, v12

    div-long v12, v116, v16

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Bluetooth scan time: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v116

    const-string v4, "Bluetooth"

    move-object/from16 v0, p0

    move-object/from16 v117, v10

    move/from16 v10, p4

    move-object/from16 v1, p2

    move-wide/from16 v124, v12

    move-wide v12, v2

    move-object v2, v8

    move-object/from16 v3, p3

    move-object/from16 v136, v82

    move/from16 v82, v97

    const/16 v97, 0x5

    move-wide/from16 v118, v12

    move-wide/from16 v12, v134

    const/16 v85, 0x2

    move-wide/from16 v134, v5

    move-wide/from16 v228, v110

    move-wide/from16 v110, v128

    move-wide/from16 v128, v228

    move-object/from16 v5, v116

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device battery use since last full charge"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (lower bound): "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (upper bound): "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Lcom/android/internal/os/BatteryUsageStatsProvider;

    move-object/from16 v6, p1

    invoke-direct {v0, v6, v7}, Lcom/android/internal/os/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    move-object v5, v0

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeVirtualUids()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryUsageStatsProvider;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v4

    invoke-virtual {v4, v11, v14}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    nop

    invoke-virtual {v4}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/BatteryStats;->getUidMobileRadioStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, " ("

    const-string v1, ": "

    if-lez v0, :cond_f99

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Per-app mobile ms per packet:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v137, 0x0

    const/4 v0, 0x0

    move-object/from16 v116, v5

    move-wide/from16 v228, v137

    move-object/from16 v137, v4

    move-wide/from16 v4, v228

    :goto_f08
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_f6a

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$UidMobileRadioStats;

    move-object/from16 v138, v2

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Uid "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->uid:I

    invoke-static {v8, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v139, v1

    iget-wide v1, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->millisecondsPerPacket:D

    invoke-static {v1, v2}, Landroid/os/BatteryStats;->formatValue(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->rxPackets:J

    move-wide/from16 v140, v12

    iget-wide v12, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->txPackets:J

    add-long/2addr v1, v12

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " packets over "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveCount:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v130

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-wide v1, v6, Landroid/os/BatteryStats$UidMobileRadioStats;->radioActiveMs:J

    add-long/2addr v4, v1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, p1

    move-object/from16 v2, v138

    move-object/from16 v1, v139

    move-wide/from16 v12, v140

    goto :goto_f08

    :cond_f6a
    move-object/from16 v139, v1

    move-object/from16 v138, v2

    move-wide/from16 v140, v12

    move-object/from16 v13, v130

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    TOTAL TIME: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v140

    invoke-virtual {v7, v4, v5, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v131

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_fa6

    :cond_f99
    move-object/from16 v139, v1

    move-object/from16 v138, v2

    move-object/from16 v137, v4

    move-object/from16 v116, v5

    move-wide v1, v12

    move-object/from16 v13, v130

    move-object/from16 v12, v131

    :goto_fa6
    new-instance v0, Landroid/os/BatteryStats$1;

    invoke-direct {v0, v7}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    move-object v6, v0

    const-string v5, " realtime"

    if-gez p5, :cond_1204

    nop

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v130

    invoke-interface/range {v130 .. v130}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_10bd

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    invoke-interface/range {v130 .. v130}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_fc9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v131

    if-eqz v131, :cond_1017

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v131

    check-cast v131, Ljava/util/Map$Entry;

    invoke-interface/range {v131 .. v131}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v140

    move-object/from16 v147, v0

    move-object/from16 v0, v140

    check-cast v0, Landroid/os/BatteryStats$Timer;

    move-object/from16 v148, v12

    move-object/from16 v140, v13

    move-wide/from16 v12, v118

    invoke-static {v0, v12, v13, v10}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v118

    const-wide/16 v47, 0x0

    cmp-long v141, v118, v47

    if-lez v141, :cond_100a

    move-wide/from16 v149, v1

    new-instance v1, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v131 .. v131}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v142, v2

    check-cast v142, Ljava/lang/String;

    const/16 v143, 0x0

    move-object/from16 v141, v1

    move-object/from16 v144, v0

    move-wide/from16 v145, v118

    invoke-direct/range {v141 .. v146}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_100c

    :cond_100a
    move-wide/from16 v149, v1

    :goto_100c
    move-wide/from16 v118, v12

    move-object/from16 v13, v140

    move-object/from16 v0, v147

    move-object/from16 v12, v148

    move-wide/from16 v1, v149

    goto :goto_fc9

    :cond_1017
    move-wide/from16 v149, v1

    move-object/from16 v148, v12

    move-object/from16 v140, v13

    move-wide/from16 v12, v118

    const-wide/16 v47, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_10b1

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All kernel wake locks:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1034
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_10a0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/os/BatteryStats$TimerEntry;

    const-string v118, ": "

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Kernel Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v119, 0x0

    move-object/from16 v131, v0

    move-object v0, v8

    move-object/from16 v151, v139

    move-wide/from16 v141, v149

    move-object/from16 v139, v1

    move-object/from16 v1, v131

    move-object/from16 v152, v3

    move-object/from16 v131, v138

    move/from16 v138, v2

    move-wide v2, v12

    move-object/from16 v143, v4

    move-object/from16 v4, v119

    move-object/from16 v153, v5

    move/from16 v5, p4

    move-object v7, v6

    move-object/from16 v6, v118

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v151

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_108e

    move-object/from16 v5, v153

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1090

    :cond_108e
    move-object/from16 v5, v153

    :goto_1090
    add-int/lit8 v2, v138, 0x1

    move-object/from16 v139, v6

    move-object v6, v7

    move-object/from16 v138, v131

    move-wide/from16 v149, v141

    move-object/from16 v4, v143

    move-object/from16 v3, v152

    move-object/from16 v7, p0

    goto :goto_1034

    :cond_10a0
    move-object/from16 v152, v3

    move-object/from16 v143, v4

    move-object v7, v6

    move-object/from16 v131, v138

    move-object/from16 v6, v139

    move-wide/from16 v141, v149

    move/from16 v138, v2

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_10ce

    :cond_10b1
    move-object/from16 v152, v3

    move-object/from16 v143, v4

    move-object v7, v6

    move-object/from16 v131, v138

    move-object/from16 v6, v139

    move-wide/from16 v141, v149

    goto :goto_10ce

    :cond_10bd
    move-wide/from16 v141, v1

    move-object/from16 v152, v3

    move-object v7, v6

    move-object/from16 v148, v12

    move-object/from16 v140, v13

    move-wide/from16 v12, v118

    move-object/from16 v131, v138

    move-object/from16 v6, v139

    const-wide/16 v47, 0x0

    :goto_10ce
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1149

    move-object/from16 v4, v38

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All partial wake locks:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_10e3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_113b

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/BatteryStats$TimerEntry;

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "  Wake lock "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v8, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    move-object/from16 v1, v136

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v38, 0x0

    const-string v118, ": "

    move-object/from16 v119, v0

    move-object v0, v8

    move-object/from16 v1, v119

    move/from16 v119, v2

    move-object/from16 v138, v3

    move-wide v2, v12

    move-object/from16 v139, v4

    move-object/from16 v4, v38

    move-object/from16 v154, v5

    move/from16 v5, p4

    move-object/from16 v155, v6

    move-object/from16 v6, v118

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-object/from16 v6, v154

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v119, 0x1

    move-object v5, v6

    move-object/from16 v4, v139

    move-object/from16 v6, v155

    goto :goto_10e3

    :cond_113b
    move/from16 v119, v2

    move-object/from16 v139, v4

    move-object/from16 v155, v6

    move-object v6, v5

    invoke-virtual/range {v139 .. v139}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_114e

    :cond_1149
    move-object/from16 v155, v6

    move-object/from16 v139, v38

    move-object v6, v5

    :goto_114e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1200

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All wakeup reasons:"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_116e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v157, v4

    check-cast v157, Ljava/lang/String;

    const/16 v158, 0x0

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    move-object/from16 v118, v0

    move-object/from16 v119, v1

    int-to-long v0, v4

    move-object/from16 v156, v3

    move-object/from16 v159, v2

    move-wide/from16 v160, v0

    invoke-direct/range {v156 .. v161}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v118

    goto :goto_116e

    :cond_11a4
    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    move v4, v0

    :goto_11a9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_11f5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/BatteryStats$TimerEntry;

    const-string v118, ": "

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wakeup reason "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v119, 0x0

    const-string v138, ": "

    move-object v0, v8

    move-object/from16 v143, v2

    move-wide v2, v12

    move/from16 v144, v4

    move-object/from16 v4, v119

    move-object/from16 v119, v5

    move/from16 v5, p4

    move-object/from16 v145, v7

    move-object v7, v6

    move-object/from16 v6, v138

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v144, 0x1

    move-object v6, v7

    move-object/from16 v5, v119

    move-object/from16 v7, v145

    goto :goto_11a9

    :cond_11f5
    move/from16 v144, v4

    move-object/from16 v119, v5

    move-object/from16 v145, v7

    move-object v7, v6

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1219

    :cond_1200
    move-object/from16 v145, v7

    move-object v7, v6

    goto :goto_1219

    :cond_1204
    move-wide/from16 v141, v1

    move-object/from16 v152, v3

    move-object v7, v5

    move-object/from16 v145, v6

    move-object/from16 v148, v12

    move-object/from16 v140, v13

    move-wide/from16 v12, v118

    move-object/from16 v131, v138

    move-object/from16 v155, v139

    const-wide/16 v47, 0x0

    move-object/from16 v139, v38

    :goto_1219
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1260

    const-string v0, "  Memory Stats"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1229
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_125b

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "  Bandwidth "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Time "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v2, v12, v13, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1229

    :cond_125b
    const/4 v1, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1261

    :cond_1260
    const/4 v1, 0x0

    :goto_1261
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1392

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Resource Power Manager Stats"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1355

    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1281
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_131b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move-object v5, v8

    move-object/from16 v8, p2

    move-object/from16 v162, v9

    move-wide/from16 v85, v86

    move-wide/from16 v118, v112

    move-wide/from16 v112, v128

    move-wide/from16 v228, v102

    move-wide/from16 v102, v104

    move-wide/from16 v104, v98

    move-wide/from16 v98, v100

    move-wide/from16 v100, v228

    move-wide/from16 v230, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v230

    move-object v9, v5

    move-object/from16 v87, v117

    move-object v10, v4

    move-wide/from16 v165, v22

    move-wide/from16 v22, v36

    move-wide/from16 v163, v141

    move-object/from16 v97, v148

    move-wide/from16 v36, v12

    move/from16 v13, p5

    move-wide/from16 v228, v122

    move-wide/from16 v122, v124

    move-wide/from16 v124, v47

    move-wide/from16 v47, v83

    move-wide/from16 v83, v106

    move-wide/from16 v106, v228

    move-wide/from16 v11, v36

    move-object/from16 v168, v96

    move-object/from16 v170, v136

    move-object/from16 v169, v140

    move/from16 v13, p4

    move-object/from16 v14, p3

    move-object/from16 v172, v15

    move-object/from16 v171, v97

    move-object v15, v3

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v11, p2

    move/from16 v10, p4

    move-object v8, v5

    move-wide/from16 v12, v36

    move-wide/from16 v112, v118

    move-object/from16 v9, v162

    move-object/from16 v148, v171

    move-object/from16 v15, v172

    const/16 v97, 0x5

    move-wide/from16 v36, v22

    move-wide/from16 v86, v85

    move-wide/from16 v22, v165

    const/16 v85, 0x2

    move-wide/from16 v228, v47

    move-wide/from16 v47, v124

    move-wide/from16 v124, v122

    move-wide/from16 v122, v106

    move-wide/from16 v106, v83

    move-wide/from16 v83, v228

    move-wide/from16 v230, v98

    move-wide/from16 v98, v104

    move-wide/from16 v104, v102

    move-wide/from16 v102, v100

    move-wide/from16 v100, v230

    move-wide/from16 v232, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v232

    goto/16 :goto_1281

    :cond_131b
    move-object v5, v8

    move-object/from16 v162, v9

    move-object/from16 v172, v15

    move-wide/from16 v165, v22

    move-wide/from16 v22, v36

    move-wide/from16 v85, v86

    move-object/from16 v168, v96

    move-wide/from16 v118, v112

    move-object/from16 v87, v117

    move-wide/from16 v112, v128

    move-object/from16 v170, v136

    move-object/from16 v169, v140

    move-wide/from16 v163, v141

    move-object/from16 v171, v148

    move-wide/from16 v36, v12

    move-wide/from16 v228, v122

    move-wide/from16 v122, v124

    move-wide/from16 v124, v47

    move-wide/from16 v47, v83

    move-wide/from16 v83, v106

    move-wide/from16 v106, v228

    move-wide/from16 v230, v102

    move-wide/from16 v102, v104

    move-wide/from16 v104, v98

    move-wide/from16 v98, v100

    move-wide/from16 v100, v230

    move-wide/from16 v232, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v232

    goto :goto_138e

    :cond_1355
    move-object v5, v8

    move-object/from16 v162, v9

    move-object/from16 v172, v15

    move-wide/from16 v165, v22

    move-wide/from16 v22, v36

    move-wide/from16 v85, v86

    move-object/from16 v168, v96

    move-wide/from16 v118, v112

    move-object/from16 v87, v117

    move-wide/from16 v112, v128

    move-object/from16 v170, v136

    move-object/from16 v169, v140

    move-wide/from16 v163, v141

    move-object/from16 v171, v148

    move-wide/from16 v36, v12

    move-wide/from16 v228, v122

    move-wide/from16 v122, v124

    move-wide/from16 v124, v47

    move-wide/from16 v47, v83

    move-wide/from16 v83, v106

    move-wide/from16 v106, v228

    move-wide/from16 v230, v102

    move-wide/from16 v102, v104

    move-wide/from16 v104, v98

    move-wide/from16 v98, v100

    move-wide/from16 v100, v230

    move-wide/from16 v232, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v232

    :goto_138e
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_13cb

    :cond_1392
    move-object v5, v8

    move-object/from16 v162, v9

    move-object/from16 v172, v15

    move-wide/from16 v165, v22

    move-wide/from16 v22, v36

    move-wide/from16 v85, v86

    move-object/from16 v168, v96

    move-wide/from16 v118, v112

    move-object/from16 v87, v117

    move-wide/from16 v112, v128

    move-object/from16 v170, v136

    move-object/from16 v169, v140

    move-wide/from16 v163, v141

    move-object/from16 v171, v148

    move-wide/from16 v36, v12

    move-wide/from16 v228, v122

    move-wide/from16 v122, v124

    move-wide/from16 v124, v47

    move-wide/from16 v47, v83

    move-wide/from16 v83, v106

    move-wide/from16 v106, v228

    move-wide/from16 v230, v102

    move-wide/from16 v102, v104

    move-wide/from16 v104, v98

    move-wide/from16 v98, v100

    move-wide/from16 v100, v230

    move-wide/from16 v232, v50

    move-wide/from16 v50, v52

    move-wide/from16 v52, v232

    :goto_13cb
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v15

    if-eqz v15, :cond_13f8

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "  CPU freqs:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_13da
    array-length v2, v15

    if-ge v0, v2, :cond_13eb

    const/16 v2, 0x20

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, v15, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13da

    :cond_13eb
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, p2

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_13fa

    :cond_13f8
    move-object/from16 v14, p2

    :goto_13fa
    const/4 v0, 0x0

    move v13, v0

    :goto_13fc
    move/from16 v11, v133

    if-ge v13, v11, :cond_25d1

    move-object/from16 v12, v168

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move/from16 v9, p5

    if-ltz v9, :cond_1442

    if-eq v10, v9, :cond_1442

    const/16 v0, 0x3e8

    if-eq v10, v0, :cond_1442

    move-object/from16 v3, p3

    move-object/from16 v45, v6

    move/from16 v150, v11

    move-object/from16 v147, v12

    move-object/from16 v117, v15

    move-wide/from16 v210, v20

    move-wide/from16 v215, v36

    move-object/from16 v128, v145

    move-object/from16 v219, v152

    move-object/from16 v9, v155

    move-wide/from16 v160, v165

    move-object/from16 v152, v169

    move-object/from16 v203, v170

    move-object/from16 v170, v171

    move-object/from16 v153, v172

    const/16 v133, 0x5

    const/16 v169, 0x1

    move/from16 v12, p4

    move-object v6, v5

    move-object/from16 v21, v7

    move/from16 v20, v13

    move-object v5, v14

    move-wide/from16 v14, v126

    move-object/from16 v166, v162

    move-wide/from16 v162, v163

    goto/16 :goto_25a6

    :cond_1442
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/BatteryStats$Uid;

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v14, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, ":"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v96, 0x0

    move/from16 v4, p4

    invoke-virtual {v8, v1, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    move-wide/from16 v128, v2

    const/4 v0, 0x1

    invoke-virtual {v8, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    move-wide/from16 v140, v1

    const/4 v3, 0x2

    invoke-virtual {v8, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-virtual {v8, v2, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v2

    move-wide/from16 v142, v0

    const/4 v0, 0x4

    invoke-virtual {v8, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move/from16 v133, v11

    move-object/from16 v168, v12

    move-object/from16 v117, v15

    const/4 v15, 0x5

    invoke-virtual {v8, v15, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    move/from16 v130, v10

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v9

    move-wide/from16 v146, v11

    const/4 v15, 0x1

    invoke-virtual {v8, v15, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v11

    move-object/from16 v45, v6

    move-object/from16 v153, v7

    const/4 v15, 0x2

    invoke-virtual {v8, v15, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    const/4 v15, 0x3

    move-wide/from16 v148, v6

    invoke-virtual {v8, v15, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v6

    move-wide/from16 v150, v6

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v6

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v15

    move-wide/from16 v156, v2

    move-wide/from16 v2, v36

    move-wide/from16 v36, v0

    invoke-virtual {v8, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    move-wide/from16 v158, v0

    invoke-virtual {v8, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v0

    move/from16 v138, v13

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v13

    move/from16 v144, v13

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v13

    move-wide/from16 v160, v0

    invoke-virtual {v8, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v0

    move-wide/from16 v173, v0

    invoke-virtual {v8, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v0

    move-wide/from16 v175, v0

    invoke-virtual {v8, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    move-wide/from16 v177, v2

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v2

    move-wide/from16 v179, v0

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v0

    cmp-long v154, v128, v124

    if-gtz v154, :cond_1506

    cmp-long v154, v140, v124

    if-gtz v154, :cond_1506

    cmp-long v154, v9, v124

    if-gtz v154, :cond_1506

    cmp-long v154, v11, v124

    if-lez v154, :cond_14f9

    goto :goto_1506

    :cond_14f9
    move-wide/from16 v181, v0

    move-wide/from16 v183, v2

    move-wide/from16 v185, v128

    move-wide/from16 v2, v140

    move-object/from16 v128, v145

    move-object/from16 v1, p0

    goto :goto_1544

    :cond_1506
    :goto_1506
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v181, v0

    const-string v0, "    Mobile network: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-wide/from16 v183, v2

    move-wide/from16 v2, v128

    move-object/from16 v128, v145

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v185, v2

    move-wide/from16 v2, v140

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent (packets "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " received, "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " sent)"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1544
    cmp-long v0, v6, v124

    if-gtz v0, :cond_1556

    if-lez v15, :cond_154b

    goto :goto_1556

    :cond_154b
    move-object/from16 v0, p3

    move-wide/from16 v140, v2

    move-wide/from16 v187, v6

    move/from16 v129, v15

    move-object/from16 v15, v169

    goto :goto_15ba

    :cond_1556
    :goto_1556
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v140, v2

    const-string v2, "    Mobile radio active: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v2, v6, v16

    invoke-static {v5, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v3, v162

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v165

    invoke-virtual {v1, v6, v7, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v172

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v129, v15

    move-object/from16 v15, v169

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v165, v9, v11

    cmp-long v145, v165, v124

    if-nez v145, :cond_1595

    const-wide/16 v165, 0x1

    move-object/from16 v172, v2

    move-wide/from16 v1, v165

    goto :goto_1599

    :cond_1595
    move-object/from16 v172, v2

    move-wide/from16 v1, v165

    :goto_1599
    move-wide/from16 v165, v3

    const-string v3, " @ "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v6, v16

    long-to-double v3, v3

    move-wide/from16 v187, v6

    long-to-double v6, v1

    div-double/2addr v3, v6

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mspp"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_15ba
    cmp-long v1, v183, v124

    if-lez v1, :cond_15d7

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Mobile radio AP wakeups: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v183

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15da

    :cond_15d7
    move-wide/from16 v2, v183

    const/4 v1, 0x0

    :goto_15da
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    const-string v7, "Cellular"

    move-wide/from16 v183, v11

    move-wide/from16 v189, v36

    move-wide/from16 v11, v158

    move-wide/from16 v191, v160

    move-wide/from16 v193, v173

    move-wide/from16 v195, v175

    move-wide/from16 v197, v179

    move-wide/from16 v199, v181

    move-wide/from16 v36, v9

    move-wide/from16 v9, v142

    move-object/from16 v0, p0

    move-object/from16 v97, v8

    move-object/from16 v169, v15

    move-object/from16 v8, p0

    move v15, v1

    move-object/from16 v1, p2

    move-wide/from16 v11, v156

    move-wide/from16 v202, v177

    move-wide/from16 v142, v185

    move-wide/from16 v156, v2

    move-object/from16 v3, v172

    move-object v2, v5

    move-object/from16 v204, v3

    move-object/from16 v205, v162

    move-wide/from16 v160, v165

    move-object v3, v4

    move-object v4, v7

    move-object v7, v5

    move-object v5, v6

    move-object/from16 v132, v7

    move/from16 v136, v13

    move-wide/from16 v7, v148

    move-wide/from16 v13, v150

    move-wide/from16 v148, v187

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v9, v124

    if-gtz v0, :cond_164e

    cmp-long v0, v11, v124

    if-gtz v0, :cond_164e

    cmp-long v0, v7, v124

    if-gtz v0, :cond_164e

    cmp-long v0, v13, v124

    if-lez v0, :cond_1647

    goto :goto_164e

    :cond_1647
    move-wide v3, v7

    move-wide v5, v13

    move-object/from16 v7, p0

    move-object/from16 v14, p2

    goto :goto_1684

    :cond_164e
    :goto_164e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Wi-Fi network: "

    move-wide v5, v13

    move-object/from16 v14, p2

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide v3, v7

    move-object/from16 v7, p0

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent (packets "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " received, "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " sent)"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1684
    cmp-long v0, v158, v124

    if-nez v0, :cond_16e5

    move-wide/from16 v1, v191

    cmp-long v0, v1, v124

    if-nez v0, :cond_16d8

    if-nez v144, :cond_16d8

    if-nez v136, :cond_16d8

    move-wide/from16 v150, v11

    move-wide/from16 v11, v193

    cmp-long v0, v11, v124

    if-nez v0, :cond_16cf

    move-wide/from16 v165, v9

    move-wide/from16 v9, v195

    cmp-long v0, v9, v124

    if-nez v0, :cond_16ca

    move-wide/from16 v172, v5

    move-wide/from16 v5, v197

    cmp-long v0, v5, v124

    if-eqz v0, :cond_16ab

    goto :goto_16f3

    :cond_16ab
    move-object/from16 v8, p3

    move-wide/from16 v191, v1

    move-wide/from16 v197, v5

    move-wide/from16 v193, v11

    move-object/from16 v13, v132

    move/from16 v5, v136

    move/from16 v6, v144

    move-wide/from16 v144, v158

    move-wide/from16 v162, v163

    move-wide/from16 v1, v202

    move-wide/from16 v158, v3

    move-wide v11, v9

    move-object/from16 v4, v169

    move-object/from16 v9, v204

    move-object/from16 v10, v205

    goto/16 :goto_17cd

    :cond_16ca
    move-wide/from16 v172, v5

    move-wide/from16 v5, v197

    goto :goto_16f3

    :cond_16cf
    move-wide/from16 v172, v5

    move-wide/from16 v165, v9

    move-wide/from16 v9, v195

    move-wide/from16 v5, v197

    goto :goto_16f3

    :cond_16d8
    move-wide/from16 v172, v5

    move-wide/from16 v165, v9

    move-wide/from16 v150, v11

    move-wide/from16 v11, v193

    move-wide/from16 v9, v195

    move-wide/from16 v5, v197

    goto :goto_16f3

    :cond_16e5
    move-wide/from16 v172, v5

    move-wide/from16 v165, v9

    move-wide/from16 v150, v11

    move-wide/from16 v1, v191

    move-wide/from16 v11, v193

    move-wide/from16 v9, v195

    move-wide/from16 v5, v197

    :goto_16f3
    move-object/from16 v13, v132

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v8, p3

    move-wide/from16 v228, v3

    move-wide/from16 v3, v158

    move-wide/from16 v158, v228

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wifi Running: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v195, v9

    div-long v9, v5, v16

    invoke-static {v13, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v10, v205

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v163

    invoke-virtual {v7, v5, v6, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Full Wifi Lock: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v197, v5

    div-long v5, v3, v16

    invoke-static {v13, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wifi Scan (blamed): "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v5, v1, v16

    invoke-static {v13, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2, v14, v15}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v204

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v144

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wifi Scan (actual): "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v191, v1

    div-long v0, v11, v16

    invoke-static {v13, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v144, v3

    move-wide/from16 v1, v202

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v2, v0}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v3

    invoke-virtual {v7, v11, v12, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Background Wifi Scan: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v3, v195, v16

    invoke-static {v13, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v7, v1, v2, v0}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v3

    move-wide/from16 v193, v11

    move-wide/from16 v11, v195

    invoke-virtual {v7, v11, v12, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v136

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v169

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v162, v14

    move-object/from16 v14, p2

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_17cd
    move-wide/from16 v195, v11

    move-wide/from16 v11, v199

    cmp-long v0, v11, v124

    if-lez v0, :cond_17eb

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    WiFi AP wakeups: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_17eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v15

    const-string v136, "WiFi"

    move-object/from16 v0, p0

    move-wide/from16 v199, v11

    move-wide/from16 v174, v191

    move-wide v11, v1

    move-object/from16 v1, p2

    move-object v2, v13

    move-wide/from16 v228, v144

    move-wide/from16 v144, v158

    move-wide/from16 v158, v228

    move-object/from16 v154, v4

    move-object/from16 v4, v136

    move/from16 v136, v5

    move-wide/from16 v176, v197

    move-object v5, v15

    move v15, v6

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-wide/from16 v5, v189

    cmp-long v0, v5, v124

    if-gtz v0, :cond_1831

    cmp-long v0, v146, v124

    if-lez v0, :cond_182e

    goto :goto_1831

    :cond_182e
    move-wide/from16 v2, v146

    goto :goto_1853

    :cond_1831
    :goto_1831
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Bluetooth network: "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v2, v146

    invoke-virtual {v7, v2, v3}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent"

    invoke-virtual {v14, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1853
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const-string v1, "\n"

    const-string v0, " times)"

    if-eqz v4, :cond_1a42

    move/from16 v7, p4

    invoke-virtual {v4, v11, v12, v7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v146

    add-long v146, v146, v18

    move-wide/from16 v178, v2

    div-long v2, v146, v16

    cmp-long v146, v2, v124

    if-eqz v146, :cond_1a2c

    move-wide/from16 v189, v5

    invoke-virtual {v4, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_187e

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v146

    goto :goto_1880

    :cond_187e
    const/16 v146, 0x0

    :goto_1880
    move/from16 v147, v146

    move-object/from16 v204, v9

    move-object/from16 v205, v10

    move-wide/from16 v202, v11

    move-wide/from16 v9, v20

    invoke-virtual {v4, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v11

    if-eqz v6, :cond_1895

    invoke-virtual {v6, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v20

    goto :goto_1897

    :cond_1895
    move-wide/from16 v20, v124

    :goto_1897
    move-wide/from16 v180, v20

    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v20

    if-eqz v20, :cond_18aa

    move/from16 v20, v15

    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v15

    goto :goto_18ad

    :cond_18aa
    move/from16 v20, v15

    const/4 v15, 0x0

    :goto_18ad
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v21

    if-eqz v21, :cond_18bc

    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v14

    goto :goto_18bd

    :cond_18bc
    const/4 v14, 0x0

    :goto_18bd
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_18c8

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v185

    goto :goto_18ca

    :cond_18c8
    move-wide/from16 v185, v124

    :goto_18ca
    move-wide/from16 v187, v185

    if-eqz v7, :cond_18d3

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v185

    goto :goto_18d5

    :cond_18d3
    move-wide/from16 v185, v124

    :goto_18d5
    move-wide/from16 v191, v185

    nop

    move-object/from16 v21, v7

    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_18e5

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v185

    goto :goto_18e7

    :cond_18e5
    move-wide/from16 v185, v124

    :goto_18e7
    move-wide/from16 v197, v185

    if-eqz v7, :cond_18f0

    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v185

    goto :goto_18f2

    :cond_18f0
    move-wide/from16 v185, v124

    :goto_18f2
    move-wide/from16 v206, v185

    move-wide/from16 v185, v9

    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    cmp-long v9, v11, v2

    if-eqz v9, :cond_1923

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v10, v152

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v9

    if-eqz v9, :cond_191f

    const-string v9, " (currently running)"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_191f
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1925

    :cond_1923
    move-object/from16 v10, v152

    :goto_1925
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v9

    if-eqz v9, :cond_1944

    const-string v9, " (currently running)"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1944
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v208, v2

    move-wide/from16 v2, v180

    cmp-long v9, v2, v124

    if-gtz v9, :cond_1957

    move/from16 v9, v147

    if-lez v9, :cond_1954

    goto :goto_1959

    :cond_1954
    move-object/from16 v146, v4

    goto :goto_197f

    :cond_1957
    move/from16 v9, v147

    :goto_1959
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v146, v4

    const-string v4, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_197c

    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v4

    if-eqz v4, :cond_197c

    const-string v4, " (currently running in background)"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_197c
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_197f
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Bluetooth Scan Results: "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in background)"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v180, v2

    move-wide/from16 v2, v187

    cmp-long v4, v2, v124

    if-gtz v4, :cond_19ae

    move/from16 v147, v5

    move-wide/from16 v4, v197

    cmp-long v152, v4, v124

    if-lez v152, :cond_19a6

    goto :goto_19b2

    :cond_19a6
    move-object/from16 v152, v0

    move-wide/from16 v187, v2

    move-wide/from16 v2, v206

    goto/16 :goto_1a1e

    :cond_19ae
    move/from16 v147, v5

    move-wide/from16 v4, v197

    :goto_19b2
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v152, v0

    const-string v0, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v187, v2

    move-wide/from16 v2, v191

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v0, v171

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v21, :cond_19e6

    invoke-virtual/range {v21 .. v21}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v164

    if-eqz v164, :cond_19e3

    move-wide/from16 v191, v2

    const-string v2, " (currently running unoptimized)"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19e8

    :cond_19e3
    move-wide/from16 v191, v2

    goto :goto_19e8

    :cond_19e6
    move-wide/from16 v191, v2

    :goto_19e8
    if-eqz v7, :cond_1a1a

    cmp-long v2, v4, v124

    if-lez v2, :cond_1a1a

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, " (max "

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v206

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v164

    if-eqz v164, :cond_1a17

    move-object/from16 v171, v0

    const-string v0, " (currently running unoptimized in background)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a1e

    :cond_1a17
    move-object/from16 v171, v0

    goto :goto_1a1e

    :cond_1a1a
    move-object/from16 v171, v0

    move-wide/from16 v2, v206

    :goto_1a1e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v164, v7

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v96, 0x1

    goto :goto_1a57

    :cond_1a2c
    move-wide/from16 v208, v2

    move-object/from16 v146, v4

    move-wide/from16 v189, v5

    move-object/from16 v204, v9

    move-object/from16 v205, v10

    move-wide/from16 v202, v11

    move-object v7, v14

    move-wide/from16 v185, v20

    move-object/from16 v10, v152

    move-object/from16 v152, v0

    move/from16 v20, v15

    goto :goto_1a57

    :cond_1a42
    move-wide/from16 v178, v2

    move-object/from16 v146, v4

    move-wide/from16 v189, v5

    move-object/from16 v204, v9

    move-object/from16 v205, v10

    move-wide/from16 v202, v11

    move-object v7, v14

    move-wide/from16 v185, v20

    move-object/from16 v10, v152

    move-object/from16 v152, v0

    move/from16 v20, v15

    :goto_1a57
    invoke-virtual/range {v97 .. v97}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    const-string v15, ", "

    if-eqz v0, :cond_1aa8

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1a61
    sget v3, Landroid/os/BatteryStats$Uid;->NUM_USER_ACTIVITY_TYPES:I

    if-ge v2, v3, :cond_1a98

    move/from16 v14, p4

    move-object/from16 v9, v97

    invoke-virtual {v9, v2, v14}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v3

    if-eqz v3, :cond_1a8f

    if-nez v0, :cond_1a7c

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v4, "    User activity: "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_1a7f

    :cond_1a7c
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a7f
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v170

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a91

    :cond_1a8f
    move-object/from16 v11, v170

    :goto_1a91
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v97, v9

    move-object/from16 v170, v11

    goto :goto_1a61

    :cond_1a98
    move/from16 v14, p4

    move-object/from16 v9, v97

    move-object/from16 v11, v170

    if-eqz v0, :cond_1aae

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1aae

    :cond_1aa8
    move/from16 v14, p4

    move-object/from16 v9, v97

    move-object/from16 v11, v170

    :cond_1aae
    :goto_1aae
    nop

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v12

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v169, 0x0

    const-wide/16 v180, 0x0

    const/4 v0, 0x0

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move-object/from16 v21, v10

    const/4 v10, 0x1

    sub-int/2addr v6, v10

    move-wide/from16 v210, v169

    move-wide/from16 v212, v180

    move/from16 v228, v6

    move v6, v0

    move/from16 v0, v228

    move-wide/from16 v229, v2

    move-wide v2, v4

    move-wide/from16 v4, v229

    :goto_1ad2
    if-ltz v0, :cond_1bc4

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v97

    move-object/from16 v10, v97

    check-cast v10, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v97, ": "

    move-object/from16 v147, v1

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Wake lock "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v164

    const-string v169, "full"

    move-object/from16 v1, v152

    move-object/from16 v170, v171

    move/from16 v152, v0

    move-object v0, v13

    move-object/from16 v214, v147

    move-object/from16 v147, v12

    move-object v12, v1

    move-object/from16 v1, v164

    move-object/from16 v164, v11

    move-object/from16 v171, v12

    move-wide v11, v2

    move-wide/from16 v2, v202

    move-object/from16 v180, v9

    move-wide v8, v4

    move-object/from16 v4, v169

    move-wide/from16 v181, v189

    move/from16 v5, p4

    move-object/from16 v169, v15

    move v15, v6

    move-object/from16 v6, v97

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v97

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v187

    const-string/jumbo v4, "partial"

    move-object v0, v13

    move-object/from16 v1, v187

    move-object/from16 v6, v97

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v97

    if-eqz v187, :cond_1b3b

    invoke-virtual/range {v187 .. v187}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    goto :goto_1b3c

    :cond_1b3b
    const/4 v0, 0x0

    :goto_1b3c
    move-object v1, v0

    const-string v4, "background partial"

    move-object v0, v13

    move-wide/from16 v2, v202

    move/from16 v5, p4

    move-object/from16 v6, v97

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v97

    const/4 v6, 0x2

    invoke-virtual {v10, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    move-object/from16 v6, v97

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v97

    const/16 v0, 0x12

    invoke-virtual {v10, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    move-object v0, v13

    move-object/from16 v6, v97

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v153

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v96, 0x1

    add-int/lit8 v6, v15, 0x1

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    move-wide/from16 v4, v202

    invoke-static {v3, v4, v5, v14}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v2

    add-long/2addr v2, v8

    const/4 v8, 0x0

    invoke-virtual {v10, v8}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    invoke-static {v9, v4, v5, v14}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v8

    add-long/2addr v8, v11

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    invoke-static {v12, v4, v5, v14}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v188

    move-wide/from16 v190, v2

    move-wide/from16 v2, v210

    add-long v210, v2, v188

    const/16 v2, 0x12

    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    invoke-static {v2, v4, v5, v14}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v2

    move-wide/from16 v4, v212

    add-long v212, v4, v2

    add-int/lit8 v0, v152, -0x1

    move-wide v2, v8

    move-object/from16 v12, v147

    move-object/from16 v11, v164

    move-object/from16 v15, v169

    move-object/from16 v152, v171

    move-object/from16 v9, v180

    move-wide/from16 v4, v190

    move-object/from16 v1, v214

    const/4 v10, 0x1

    move-object/from16 v8, p3

    move-object/from16 v171, v170

    move-wide/from16 v189, v181

    goto/16 :goto_1ad2

    :cond_1bc4
    move-object/from16 v214, v1

    move-object/from16 v180, v9

    move-object/from16 v164, v11

    move-object/from16 v147, v12

    move-object/from16 v169, v15

    move-object/from16 v1, v153

    move-object/from16 v170, v171

    move-wide/from16 v181, v189

    move-wide v11, v2

    move-wide v8, v4

    move v15, v6

    move-object/from16 v171, v152

    move-wide/from16 v2, v210

    move-wide/from16 v4, v212

    move/from16 v152, v0

    const/4 v0, 0x2

    const/4 v6, 0x1

    if-le v15, v6, :cond_1cdf

    const-wide/16 v152, 0x0

    const-wide/16 v187, 0x0

    invoke-virtual/range {v180 .. v180}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_1c11

    invoke-virtual/range {v180 .. v180}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    nop

    move-object/from16 v97, v1

    move-wide/from16 v0, v185

    invoke-virtual {v6, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v152

    invoke-virtual {v6}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_1c05

    invoke-virtual {v10, v0, v1}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v185

    goto :goto_1c07

    :cond_1c05
    move-wide/from16 v185, v124

    :goto_1c07
    move-wide/from16 v187, v185

    move-wide/from16 v185, v0

    move v6, v15

    move-wide/from16 v0, v152

    move-wide/from16 v14, v187

    goto :goto_1c1a

    :cond_1c11
    move-object/from16 v97, v1

    move-wide/from16 v0, v185

    move v6, v15

    move-wide/from16 v0, v152

    move-wide/from16 v14, v187

    :goto_1c1a
    cmp-long v10, v0, v124

    if-nez v10, :cond_1c3b

    cmp-long v10, v14, v124

    if-nez v10, :cond_1c3b

    cmp-long v10, v8, v124

    if-nez v10, :cond_1c3b

    cmp-long v10, v11, v124

    if-nez v10, :cond_1c3b

    cmp-long v10, v2, v124

    if-eqz v10, :cond_1c2f

    goto :goto_1c3b

    :cond_1c2f
    move/from16 v152, v6

    move-wide/from16 v187, v8

    move-object/from16 v10, v97

    move-object/from16 v6, v169

    move-object/from16 v8, p3

    goto/16 :goto_1ce8

    :cond_1c3b
    :goto_1c3b
    const/4 v10, 0x0

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    move-wide v9, v8

    move-object/from16 v8, p3

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v152, v6

    const-string v6, "    TOTAL wake: "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    cmp-long v153, v9, v124

    if-eqz v153, :cond_1c5e

    const/4 v6, 0x1

    invoke-static {v13, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move/from16 v153, v6

    const-string v6, "full"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v153

    :cond_1c5e
    cmp-long v153, v11, v124

    if-eqz v153, :cond_1c7d

    if-eqz v6, :cond_1c6c

    move/from16 v153, v6

    move-object/from16 v6, v169

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c70

    :cond_1c6c
    move/from16 v153, v6

    move-object/from16 v6, v169

    :goto_1c70
    const/16 v153, 0x1

    invoke-static {v13, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v187, v9

    const-string v9, "blamed partial"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c83

    :cond_1c7d
    move/from16 v153, v6

    move-wide/from16 v187, v9

    move-object/from16 v6, v169

    :goto_1c83
    cmp-long v9, v0, v124

    if-eqz v9, :cond_1c96

    if-eqz v153, :cond_1c8c

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c8c
    const/16 v153, 0x1

    invoke-static {v13, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "actual partial"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c96
    cmp-long v9, v14, v124

    if-eqz v9, :cond_1ca9

    if-eqz v153, :cond_1c9f

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c9f
    const/16 v153, 0x1

    invoke-static {v13, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "actual background partial"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ca9
    cmp-long v9, v2, v124

    if-eqz v9, :cond_1cbd

    if-eqz v153, :cond_1cb2

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cb2
    const/16 v153, 0x1

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v9, "window"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cbd
    cmp-long v9, v4, v124

    if-eqz v9, :cond_1cd2

    if-eqz v153, :cond_1cc8

    const-string v9, ","

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cc8
    const/16 v153, 0x1

    invoke-static {v13, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v9, "draw"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cd2
    move-object/from16 v10, v97

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ce8

    :cond_1cdf
    move-object v10, v1

    move-wide/from16 v187, v8

    move/from16 v152, v15

    move-object/from16 v6, v169

    move-object/from16 v8, p3

    :goto_1ce8
    invoke-virtual/range {v180 .. v180}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_1d2f

    move/from16 v1, p4

    move-wide/from16 v14, v202

    invoke-virtual {v0, v14, v15, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v189

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    cmp-long v97, v189, v124

    if-lez v97, :cond_1d2a

    move-object/from16 v97, v0

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    WiFi Multicast Wakelock"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " count = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " time = "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v191, v189, v18

    move-wide/from16 v197, v2

    div-long v2, v191, v16

    invoke-static {v13, v2, v3}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d37

    :cond_1d2a
    move-object/from16 v97, v0

    move-wide/from16 v197, v2

    goto :goto_1d37

    :cond_1d2f
    move/from16 v1, p4

    move-object/from16 v97, v0

    move-wide/from16 v197, v2

    move-wide/from16 v14, v202

    :goto_1d37
    invoke-virtual/range {v180 .. v180}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1d41
    if-ltz v2, :cond_1df9

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v9, v14, v15, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v189

    add-long v189, v189, v18

    move-wide/from16 v191, v4

    div-long v3, v189, v16

    invoke-virtual {v9, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    move-object/from16 v169, v10

    invoke-virtual {v9}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_1d68

    move-wide/from16 v189, v11

    move-wide/from16 v11, v185

    invoke-virtual {v10, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v185

    goto :goto_1d6e

    :cond_1d68
    move-wide/from16 v189, v11

    move-wide/from16 v11, v185

    const-wide/16 v185, -0x1

    :goto_1d6e
    move-wide/from16 v202, v185

    if-eqz v10, :cond_1d77

    invoke-virtual {v10, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v153

    goto :goto_1d79

    :cond_1d77
    const/16 v153, -0x1

    :goto_1d79
    move/from16 v185, v153

    move-object/from16 v186, v9

    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "    Sync "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v155

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v153, v3, v124

    if-eqz v153, :cond_1dd1

    invoke-static {v13, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v155, v0

    const-string/jumbo v0, "realtime ("

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v0, v171

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v206, v3

    move-wide/from16 v3, v202

    cmp-long v153, v3, v124

    if-lez v153, :cond_1dcc

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v202, v3

    const-string v3, "background ("

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v185

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1dde

    :cond_1dcc
    move-wide/from16 v202, v3

    move/from16 v3, v185

    goto :goto_1dde

    :cond_1dd1
    move-object/from16 v155, v0

    move-wide/from16 v206, v3

    move-object/from16 v0, v171

    move/from16 v3, v185

    const-string v4, "(not used)"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1dde
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v96, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v171, v0

    move-wide/from16 v185, v11

    move-object/from16 v0, v155

    move-object/from16 v10, v169

    move-wide/from16 v11, v189

    move-wide/from16 v4, v191

    move-object/from16 v155, v9

    goto/16 :goto_1d41

    :cond_1df9
    move-wide/from16 v191, v4

    move-object/from16 v169, v10

    move-wide/from16 v189, v11

    move-object/from16 v9, v155

    move-wide/from16 v11, v185

    move-object/from16 v155, v0

    move-object/from16 v0, v171

    invoke-virtual/range {v180 .. v180}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_1e11
    if-ltz v3, :cond_1eb7

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v4, v14, v15, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v185

    add-long v185, v185, v18

    move-wide/from16 v202, v14

    div-long v14, v185, v16

    invoke-virtual {v4, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_1e32

    invoke-virtual {v10, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v185

    goto :goto_1e34

    :cond_1e32
    const-wide/16 v185, -0x1

    :goto_1e34
    move-wide/from16 v206, v185

    if-eqz v10, :cond_1e3d

    invoke-virtual {v10, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v171

    goto :goto_1e3f

    :cond_1e3d
    const/16 v171, -0x1

    :goto_1e3f
    move/from16 v185, v171

    move-object/from16 v171, v4

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Job "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v4, v14, v124

    if-eqz v4, :cond_1e95

    invoke-static {v13, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v4, "realtime ("

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v186, v5

    move-wide/from16 v4, v206

    cmp-long v206, v4, v124

    if-lez v206, :cond_1e8e

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-object/from16 v206, v2

    const-string v2, "background ("

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v185

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v185, v0

    goto :goto_1ea4

    :cond_1e8e
    move-object/from16 v206, v2

    move/from16 v2, v185

    move-object/from16 v185, v0

    goto :goto_1ea4

    :cond_1e95
    move/from16 v186, v5

    move-wide/from16 v4, v206

    move-object/from16 v206, v2

    move/from16 v2, v185

    move-object/from16 v185, v0

    const-string v0, "(not used)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1ea4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v96, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v185

    move-wide/from16 v14, v202

    move-object/from16 v2, v206

    goto/16 :goto_1e11

    :cond_1eb7
    move-object/from16 v185, v0

    move-object/from16 v206, v2

    move-wide/from16 v202, v14

    invoke-virtual/range {v180 .. v180}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1ec7
    if-ltz v2, :cond_1f26

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseIntArray;

    if-eqz v4, :cond_1f1b

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "    Job Completions "

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1ee8
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v5, v10, :cond_1f13

    move-object/from16 v14, v164

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v10, v205

    invoke-virtual {v7, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v15, "x)"

    invoke-virtual {v7, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ee8

    :cond_1f13
    move-object/from16 v14, v164

    move-object/from16 v10, v205

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1f1f

    :cond_1f1b
    move-object/from16 v14, v164

    move-object/from16 v10, v205

    :goto_1f1f
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v205, v10

    move-object/from16 v164, v14

    goto :goto_1ec7

    :cond_1f26
    move-object/from16 v14, v164

    move-object/from16 v10, v205

    move-object/from16 v2, v180

    invoke-virtual {v2, v13, v1}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1f41

    const-string v4, "    Jobs deferred on launch "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f41
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const-string v15, "Flashlight"

    move-object/from16 v8, p2

    move-object v5, v9

    move-object/from16 v153, v204

    move-wide/from16 v228, v187

    move-wide/from16 v186, v195

    move-wide/from16 v195, v228

    move-wide/from16 v230, v36

    move-wide/from16 v36, v165

    move-wide/from16 v164, v230

    move-object v9, v13

    move-object/from16 v166, v10

    move/from16 v228, v130

    move-object/from16 v130, v0

    move-object/from16 v0, v21

    move-object/from16 v21, v169

    move/from16 v169, v3

    move/from16 v3, v228

    move-object v10, v4

    move-object/from16 v4, p3

    move-object v1, v14

    move-object/from16 v14, v185

    move-wide/from16 v204, v189

    move-wide/from16 v188, v183

    move-wide/from16 v183, v178

    move-wide/from16 v178, v150

    move/from16 v150, v133

    move-object/from16 v151, v147

    move-object/from16 v147, v168

    move-object/from16 v133, v6

    move-wide v6, v11

    move-wide/from16 v11, v202

    move-object/from16 v168, v13

    move/from16 v228, v136

    move/from16 v136, v20

    move/from16 v20, v138

    move/from16 v138, v228

    move/from16 v13, p4

    move-object/from16 v180, v0

    move-object/from16 v185, v1

    move/from16 v171, v3

    move-object v1, v14

    move-object/from16 v3, p2

    move/from16 v0, p4

    move-object/from16 v14, p3

    move/from16 v132, v152

    move-object/from16 v152, v154

    const/4 v3, 0x0

    move-object/from16 v154, v133

    const/16 v133, 0x5

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v96, v96, v8

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Camera"

    move-object/from16 v8, p2

    move-object/from16 v9, v168

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v96, v96, v8

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Video"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v96, v96, v8

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Audio"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v8, v96, v8

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v15

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v14

    const/4 v9, 0x0

    move/from16 v96, v8

    :goto_1fdf
    if-ge v9, v14, :cond_20ce

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v15, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move-object/from16 v13, v168

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Sensor "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v11

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_2006

    const-string v12, "GPS"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2009

    :cond_2006
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2009
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_209f

    move-wide/from16 v3, v202

    invoke-virtual {v12, v3, v4, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v202

    add-long v202, v202, v18

    move/from16 v168, v10

    move/from16 v190, v11

    div-long v10, v202, v16

    move/from16 v201, v14

    invoke-virtual {v12, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    move-object/from16 v202, v15

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    if-eqz v15, :cond_2033

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v203

    goto :goto_2035

    :cond_2033
    const/16 v203, 0x0

    :goto_2035
    move/from16 v207, v203

    move-wide/from16 v208, v3

    invoke-virtual {v12, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v3

    if-eqz v15, :cond_2044

    invoke-virtual {v15, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v210

    goto :goto_2046

    :cond_2044
    move-wide/from16 v210, v124

    :goto_2046
    move-wide/from16 v212, v210

    cmp-long v203, v10, v124

    if-eqz v203, :cond_2091

    cmp-long v203, v3, v10

    if-eqz v203, :cond_205b

    invoke-static {v13, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    move-wide/from16 v210, v6

    const-string v6, "blamed realtime, "

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_205d

    :cond_205b
    move-wide/from16 v210, v6

    :goto_205d
    invoke-static {v13, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "realtime ("

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v212

    cmp-long v203, v6, v124

    if-nez v203, :cond_2079

    move-wide/from16 v212, v3

    move/from16 v3, v207

    if-lez v3, :cond_209e

    goto :goto_207d

    :cond_2079
    move-wide/from16 v212, v3

    move/from16 v3, v207

    :goto_207d
    move-object/from16 v4, v154

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "background ("

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_209e

    :cond_2091
    move-wide/from16 v210, v6

    move-wide/from16 v6, v212

    move-wide/from16 v212, v3

    move/from16 v3, v207

    const-string v4, "(not used)"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_209e
    :goto_209e
    goto :goto_20b0

    :cond_209f
    move-wide/from16 v210, v6

    move/from16 v168, v10

    move/from16 v190, v11

    move/from16 v201, v14

    move-wide/from16 v208, v202

    move-object/from16 v202, v15

    const-string v3, "(not used)"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20b0
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v6, v154

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v96, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p3

    move-object/from16 v168, v13

    move/from16 v14, v201

    move-object/from16 v15, v202

    move-wide/from16 v202, v208

    move-wide/from16 v6, v210

    const/4 v3, 0x0

    goto/16 :goto_1fdf

    :cond_20ce
    move-object/from16 v4, p2

    move-wide/from16 v210, v6

    move/from16 v201, v14

    move-object/from16 v6, v154

    move-object/from16 v13, v168

    move-wide/from16 v208, v202

    move-object/from16 v202, v15

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Vibrator"

    move-object/from16 v8, p2

    move-object v9, v13

    move-wide/from16 v11, v208

    move-object v1, v13

    move/from16 v13, p4

    move/from16 v3, v201

    move-object/from16 v14, p3

    move-object/from16 v7, v202

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v96, v96, v8

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground activities"

    move-object/from16 v8, p2

    move-object v9, v1

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v96, v96, v8

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground services"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int v8, v96, v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    :goto_2116
    const/4 v12, 0x7

    if-ge v11, v12, :cond_2166

    move-wide/from16 v12, v208

    invoke-virtual {v2, v11, v12, v13, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v14

    cmp-long v96, v14, v124

    if-lez v96, :cond_2155

    add-long/2addr v9, v14

    move/from16 v201, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v202, v7

    const-string v7, "    "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v207, v14, v18

    move/from16 v96, v8

    div-long v7, v207, v16

    invoke-static {v1, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    move v8, v7

    goto :goto_215d

    :cond_2155
    move/from16 v201, v3

    move-object/from16 v202, v7

    move/from16 v96, v8

    move-object/from16 v3, p3

    :goto_215d
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v208, v12

    move/from16 v3, v201

    move-object/from16 v7, v202

    goto :goto_2116

    :cond_2166
    move/from16 v201, v3

    move-object/from16 v202, v7

    move/from16 v96, v8

    move-wide/from16 v12, v208

    move-object/from16 v3, p3

    cmp-long v7, v9, v124

    if-lez v7, :cond_218e

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    Total running: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v7, v9, v18

    div-long v7, v7, v16

    invoke-static {v1, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_218e
    invoke-virtual {v2, v0}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v7

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v14

    cmp-long v11, v7, v124

    if-gtz v11, :cond_21a2

    cmp-long v11, v14, v124

    if-lez v11, :cond_219f

    goto :goto_21a2

    :cond_219f
    move-wide/from16 v207, v9

    goto :goto_21c7

    :cond_21a2
    :goto_21a2
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Total cpu time: u="

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v207, v9

    div-long v9, v7, v16

    invoke-static {v1, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v9, "s="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v9, v14, v16

    invoke-static {v1, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_21c7
    invoke-virtual {v2, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v9

    if-eqz v9, :cond_21f6

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v10, "    Total cpu time per freq:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :goto_21d7
    array-length v11, v9

    if-ge v10, v11, :cond_21ec

    const/16 v11, 0x20

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v212, v7

    aget-wide v7, v9, v10

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v7, v212

    goto :goto_21d7

    :cond_21ec
    move-wide/from16 v212, v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21f8

    :cond_21f6
    move-wide/from16 v212, v7

    :goto_21f8
    invoke-virtual {v2, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v7

    if-eqz v7, :cond_2227

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "    Total screen-off cpu time per freq:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_2208
    array-length v10, v7

    if-ge v8, v10, :cond_221d

    const/16 v10, 0x20

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v215, v12

    aget-wide v11, v7, v8

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v12, v215

    goto :goto_2208

    :cond_221d
    move-wide/from16 v215, v12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2229

    :cond_2227
    move-wide/from16 v215, v12

    :goto_2229
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqCount()I

    move-result v8

    new-array v8, v8, [J

    const/4 v10, 0x0

    :goto_2230
    const/4 v11, 0x7

    if-ge v10, v11, :cond_22b2

    invoke-virtual {v2, v8, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes([JI)Z

    move-result v11

    if-eqz v11, :cond_2272

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v11, "    Cpu times per freq at state "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v12, v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_2251
    array-length v12, v8

    if-ge v11, v12, :cond_2266

    move-object/from16 v12, v185

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v217, v14

    aget-wide v14, v8, v11

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v14, v217

    goto :goto_2251

    :cond_2266
    move-wide/from16 v217, v14

    move-object/from16 v12, v185

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2276

    :cond_2272
    move-wide/from16 v217, v14

    move-object/from16 v12, v185

    :goto_2276
    invoke-virtual {v2, v8, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes([JI)Z

    move-result v11

    if-eqz v11, :cond_22aa

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v11, "   Screen-off cpu times per freq at state "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v13, v13, v10

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v13, 0x3a

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_2294
    array-length v13, v8

    if-ge v11, v13, :cond_22a3

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-wide v14, v8, v11

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2294

    :cond_22a3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_22aa
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v185, v12

    move-wide/from16 v14, v217

    goto/16 :goto_2230

    :cond_22b2
    move-wide/from16 v217, v14

    move-object/from16 v12, v185

    nop

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_22c1
    if-ltz v11, :cond_2457

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v14

    move-object/from16 v154, v7

    move-object/from16 v168, v8

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v7

    move-object/from16 v185, v5

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v4

    move-object/from16 v190, v9

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v9

    move-object/from16 v203, v12

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v12

    move-object/from16 v209, v2

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v2

    if-nez v0, :cond_22f4

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v219

    goto :goto_22f6

    :cond_22f4
    const/16 v219, 0x0

    :goto_22f6
    move/from16 v220, v219

    cmp-long v219, v14, v124

    if-nez v219, :cond_231b

    cmp-long v219, v7, v124

    if-nez v219, :cond_231b

    cmp-long v219, v4, v124

    if-nez v219, :cond_231b

    if-nez v9, :cond_231b

    move/from16 v0, v220

    if-nez v0, :cond_231d

    if-nez v12, :cond_231d

    if-eqz v2, :cond_230f

    goto :goto_231d

    :cond_230f
    move-object/from16 v5, p2

    move-object/from16 v223, v6

    move-object/from16 v6, v180

    move-object/from16 v13, v214

    move-object/from16 v180, v1

    goto/16 :goto_243c

    :cond_231b
    move/from16 v0, v220

    :cond_231d
    :goto_231d
    move-object/from16 v219, v13

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "    Proc "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":\n"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "      CPU: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v13, "usr + "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v13, "krn ; "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v13, "fg"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v9, :cond_2367

    if-nez v12, :cond_2367

    if-eqz v2, :cond_2362

    goto :goto_2367

    :cond_2362
    move-wide/from16 v220, v4

    move-object/from16 v13, v214

    goto :goto_23a1

    :cond_2367
    :goto_2367
    move-object/from16 v13, v214

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v220, v4

    const-string v4, "      "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-eqz v9, :cond_2382

    const/4 v4, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " starts"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2382
    if-eqz v12, :cond_2392

    if-eqz v4, :cond_2389

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2389
    const/4 v4, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " crashes"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2392
    if-eqz v2, :cond_23a1

    if-eqz v4, :cond_2399

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2399
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " anrs"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23a1
    :goto_23a1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_23ab
    if-ge v4, v0, :cond_242b

    move/from16 v214, v0

    move-object/from16 v0, v219

    move/from16 v219, v2

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v2

    if-eqz v2, :cond_2410

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v222, v0

    const-string v0, "      * Killed for "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    move-object/from16 v223, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_23d0

    const-string v0, "cpu"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_23d6

    :cond_23d0
    const-string/jumbo v0, "unknown"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_23d6
    const-string v0, " use: "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v224, v7

    iget-wide v6, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget-wide v6, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v6, v6, v124

    if-eqz v6, :cond_240b

    move-object/from16 v6, v180

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v226, 0x64

    mul-long v7, v7, v226

    move-object/from16 v180, v1

    iget-wide v0, v2, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v7, v0

    invoke-virtual {v5, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, "%)"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_241a

    :cond_240b
    move-object/from16 v6, v180

    move-object/from16 v180, v1

    goto :goto_241a

    :cond_2410
    move-object/from16 v222, v0

    move-object/from16 v223, v6

    move-wide/from16 v224, v7

    move-object/from16 v6, v180

    move-object/from16 v180, v1

    :goto_241a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v180

    move/from16 v0, v214

    move/from16 v2, v219

    move-object/from16 v219, v222

    move-wide/from16 v7, v224

    move-object/from16 v180, v6

    move-object/from16 v6, v223

    goto :goto_23ab

    :cond_242b
    move/from16 v214, v0

    move-object/from16 v223, v6

    move-wide/from16 v224, v7

    move-object/from16 v6, v180

    move-object/from16 v222, v219

    move-object/from16 v180, v1

    move/from16 v219, v2

    const/4 v0, 0x1

    move/from16 v96, v0

    :goto_243c
    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p4

    move-object v4, v5

    move-object/from16 v214, v13

    move-object/from16 v7, v154

    move-object/from16 v8, v168

    move-object/from16 v1, v180

    move-object/from16 v5, v185

    move-object/from16 v9, v190

    move-object/from16 v12, v203

    move-object/from16 v2, v209

    move-object/from16 v180, v6

    move-object/from16 v6, v223

    goto/16 :goto_22c1

    :cond_2457
    move-object/from16 v209, v2

    move-object/from16 v185, v5

    move-object/from16 v154, v7

    move-object/from16 v168, v8

    move-object/from16 v190, v9

    move-object/from16 v203, v12

    move-object/from16 v6, v180

    move-object/from16 v180, v1

    move-object v5, v4

    nop

    invoke-virtual/range {v209 .. v209}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2473
    if-ltz v1, :cond_2590

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Apk "

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_249c
    if-ltz v8, :cond_24cc

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "      Wakeup alarm "

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v9, v185

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Counter;

    move/from16 v12, p4

    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->print(I)V

    const-string v11, " times"

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_249c

    :cond_24cc
    move/from16 v12, p4

    move-object/from16 v9, v185

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_24da
    if-ltz v11, :cond_2568

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v14, v126

    invoke-virtual {v13, v14, v15, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v126

    move-object/from16 v185, v0

    invoke-virtual {v13, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v0

    move-object/from16 v214, v4

    invoke-virtual {v13, v12}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v4

    cmp-long v219, v126, v124

    if-nez v219, :cond_2506

    if-nez v0, :cond_2506

    if-eqz v4, :cond_24fd

    goto :goto_2506

    :cond_24fd
    move-object/from16 v219, v6

    move-object/from16 v167, v7

    move-object/from16 v220, v8

    move-object/from16 v6, v180

    goto :goto_2556

    :cond_2506
    :goto_2506
    move-object/from16 v219, v6

    move-object/from16 v167, v7

    move-object/from16 v6, v180

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "      Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "        Created for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v220, v8

    div-long v7, v126, v16

    invoke-static {v6, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v7, "uptime\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "        Starts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", launches: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_2556
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v180, v6

    move-wide/from16 v126, v14

    move-object/from16 v7, v167

    move-object/from16 v0, v185

    move-object/from16 v4, v214

    move-object/from16 v6, v219

    move-object/from16 v8, v220

    goto/16 :goto_24da

    :cond_2568
    move-object/from16 v185, v0

    move-object/from16 v214, v4

    move-object/from16 v219, v6

    move-object/from16 v167, v7

    move-object/from16 v220, v8

    move-wide/from16 v14, v126

    move-object/from16 v6, v180

    if-nez v2, :cond_2580

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "      (nothing executed)"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2580
    const/16 v96, 0x1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v180, v6

    move-wide/from16 v126, v14

    move-object/from16 v0, v185

    move-object/from16 v6, v219

    move-object/from16 v185, v9

    goto/16 :goto_2473

    :cond_2590
    move/from16 v12, p4

    move-object/from16 v219, v6

    move-wide/from16 v14, v126

    move-object/from16 v6, v180

    move-object/from16 v9, v185

    move-object/from16 v185, v0

    if-nez v96, :cond_25a6

    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    (nothing executed)"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_25a6
    :goto_25a6
    add-int/lit8 v13, v20, 0x1

    move-object/from16 v155, v9

    move-wide/from16 v126, v14

    move-object/from16 v7, v21

    move-object/from16 v15, v117

    move-object/from16 v145, v128

    move-object/from16 v168, v147

    move/from16 v133, v150

    move-object/from16 v169, v152

    move-object/from16 v172, v153

    move-wide/from16 v163, v162

    move-object/from16 v162, v166

    move-object/from16 v171, v170

    move-object/from16 v170, v203

    move-wide/from16 v20, v210

    move-wide/from16 v36, v215

    move-object/from16 v152, v219

    const/4 v1, 0x0

    move-object v14, v5

    move-object v5, v6

    move-object/from16 v6, v45

    move-wide/from16 v165, v160

    goto/16 :goto_13fc

    :cond_25d1
    return-void
.end method

.method public dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_13

    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :cond_13
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10500000001L

    const/16 v5, 0x23

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000002L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10900000003L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000004L

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    and-int/lit8 v3, p4, 0x4

    if-nez v3, :cond_5d

    invoke-direct {p0, p1}, Landroid/os/BatteryStats;->getBatteryUsageStats(Landroid/content/Context;)Landroid/os/BatteryUsageStats;

    move-result-object v3

    new-instance v4, Landroid/os/BatteryStats$ProportionalAttributionCalculator;

    invoke-direct {v4, p1, v3}, Landroid/os/BatteryStats$ProportionalAttributionCalculator;-><init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V

    invoke-direct {p0, v0, v3, p3, v4}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;Ljava/util/List;Landroid/os/BatteryStats$ProportionalAttributionCalculator;)V

    invoke-direct {p0, v0, v3}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryUsageStats;)V

    :cond_5d
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v2, 0x400

    cmp-long v0, p1, v2

    if-gez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const-wide/32 v2, 0x100000

    cmp-long v0, p1, v2

    const/4 v2, 0x1

    if-gez v0, :cond_42

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4090000000000000L  # 1024.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fKB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_42
    const-wide/32 v3, 0x40000000

    cmp-long v0, p1, v3

    if-gez v0, :cond_63

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x4130000000000000L  # 1048576.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fMB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_63
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v3, p1

    const-wide/high16 v5, 0x41d0000000000000L  # 1.073741824E9

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%.2fGB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_9

    const-string v0, "--%"

    return-object v0

    :cond_9
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000  # 100.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "%.1f%%"

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getActiveRadioDurationMs(IIIJ)J
.end method

.method public abstract getActiveRxRadioDurationMs(IIJ)J
.end method

.method public abstract getActiveTxRadioDurationMs(IIIJ)J
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothMeasuredBatteryConsumptionUC()J
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCpuFreqCount()I
.end method

.method public abstract getCpuFreqs()[J
.end method

.method public abstract getCpuMeasuredBatteryConsumptionUC()J
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getCustomConsumerMeasuredBatteryConsumptionUC()[J
.end method

.method public abstract getCustomEnergyConsumerNames()[Ljava/lang/String;
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenDoze()I
.end method

.method public abstract getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getDisplayCount()I
.end method

.method public abstract getDisplayScreenBrightnessTime(IIJ)J
.end method

.method public abstract getDisplayScreenDozeTime(IJ)J
.end method

.method public abstract getDisplayScreenOnTime(IJ)J
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getGnssMeasuredBatteryConsumptionUC()J
.end method

.method public abstract getGpsBatteryDrainMaMs()J
.end method

.method public abstract getGpsSignalQualityTime(IJI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLearnedBatteryCapacity()I
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMaxLearnedBatteryCapacity()I
.end method

.method public abstract getMinLearnedBatteryCapacity()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getMobileRadioMeasuredBatteryConsumptionUC()J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getScreenDozeCount(I)I
.end method

.method public abstract getScreenDozeMeasuredBatteryConsumptionUC()J
.end method

.method public abstract getScreenDozeTime(JI)J
.end method

.method public abstract getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnMeasuredBatteryConsumptionUC()J
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getStatsStartRealtime()J
.end method

.method public abstract getSystemServiceTimeAtCpuSpeeds()[J
.end method

.method public abstract getUahDischarge(I)J
.end method

.method public abstract getUahDischargeDeepDoze(I)J
.end method

.method public abstract getUahDischargeLightDoze(I)J
.end method

.method public abstract getUahDischargeScreenDoze(I)J
.end method

.method public abstract getUahDischargeScreenOff(I)J
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeLockStats()Landroid/os/WakeLockStats;
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiActiveTime(JI)J
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiMeasuredBatteryConsumptionUC()J
.end method

.method public abstract getWifiMulticastWakelockCount(I)I
.end method

.method public abstract getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public abstract isProcessStateDataAvailable()Z
.end method

.method public prepareForDumpLocked()V
    .registers 1

    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
