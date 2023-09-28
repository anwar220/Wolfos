# classes.dex

.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$AppOpsCollector;,
        Landroid/app/AppOpsManager$OnOpNotedCallback;,
        Landroid/app/AppOpsManager$NotedOpCollectionMode;,
        Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;,
        Landroid/app/AppOpsManager$OnOpStartedListener;,
        Landroid/app/AppOpsManager$OnOpActiveChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpNotedListener;,
        Landroid/app/AppOpsManager$OnOpActiveChangedListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$HistoricalOp;,
        Landroid/app/AppOpsManager$AttributedHistoricalOps;,
        Landroid/app/AppOpsManager$HistoricalPackageOps;,
        Landroid/app/AppOpsManager$HistoricalUidOps;,
        Landroid/app/AppOpsManager$HistoricalOps;,
        Landroid/app/AppOpsManager$HistoricalOpsRequest;,
        Landroid/app/AppOpsManager$HistoricalOpsRequestFilter;,
        Landroid/app/AppOpsManager$OpHistoryFlags;,
        Landroid/app/AppOpsManager$HistoricalOpsVisitor;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$AttributedOpEntry;,
        Landroid/app/AppOpsManager$NoteOpEvent;,
        Landroid/app/AppOpsManager$OpEventProxyInfo;,
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$RestrictionBypass;,
        Landroid/app/AppOpsManager$ShouldCollectNoteOp;,
        Landroid/app/AppOpsManager$DataBucketKey;,
        Landroid/app/AppOpsManager$SamplingStrategy;,
        Landroid/app/AppOpsManager$AttributionFlags;,
        Landroid/app/AppOpsManager$OpFlags;,
        Landroid/app/AppOpsManager$UidState;,
        Landroid/app/AppOpsManager$Mode;,
        Landroid/app/AppOpsManager$HistoricalMode;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_CHAIN_ID_NONE:I = -0x1

.field public static final ATTRIBUTION_FLAGS_NONE:I = 0x0

.field public static final ATTRIBUTION_FLAG_ACCESSOR:I = 0x1

.field public static final ATTRIBUTION_FLAG_INTERMEDIARY:I = 0x2

.field public static final ATTRIBUTION_FLAG_RECEIVER:I = 0x4

.field public static final ATTRIBUTION_FLAG_TRUSTED:I = 0x8

.field public static final CALL_BACK_ON_CHANGED_LISTENER_WITH_SWITCHED_OP_CHANGE:J = 0x8d50f1eL

.field public static final CALL_BACK_ON_SWITCHED_OP:I = 0x2

.field private static final COLLECT_ASYNC:I = 0x3

.field private static final COLLECT_SELF:I = 0x1

.field private static final COLLECT_SYNC:I = 0x2

.field private static final DEBUG_LOGGING_ENABLE_PROP:Ljava/lang/String; = "appops.logging_enabled"

.field private static final DEBUG_LOGGING_OPS_PROP:Ljava/lang/String; = "appops.logging_ops"

.field private static final DEBUG_LOGGING_PACKAGES_PROP:Ljava/lang/String; = "appops.logging_packages"

.field private static final DEBUG_LOGGING_TAG:Ljava/lang/String; = "AppOpsManager"

.field private static final DONT_COLLECT:I = 0x0

.field public static final FILTER_BY_ATTRIBUTION_TAG:I = 0x4

.field public static final FILTER_BY_OP_NAMES:I = 0x8

.field public static final FILTER_BY_PACKAGE_NAME:I = 0x2

.field public static final FILTER_BY_UID:I = 0x1

.field private static final FLAGS_MASK:I = -0x1

.field private static final FULL_LOG:Ljava/lang/String; = "privacy_attribution_tag_full_log_enabled"

.field public static final HISTORICAL_MODE_DISABLED:I = 0x0

.field public static final HISTORICAL_MODE_ENABLED_ACTIVE:I = 0x1

.field public static final HISTORICAL_MODE_ENABLED_PASSIVE:I = 0x2

.field public static final HISTORY_FLAGS_ALL:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HISTORY_FLAG_AGGREGATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HISTORY_FLAG_DISCRETE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HISTORY_FLAG_GET_ATTRIBUTION_CHAINS:I = 0x4

.field public static final KEY_BG_STATE_SETTLE_TIME:Ljava/lang/String; = "bg_state_settle_time"

.field public static final KEY_FG_SERVICE_STATE_SETTLE_TIME:Ljava/lang/String; = "fg_service_state_settle_time"

.field public static final KEY_HISTORICAL_OPS:Ljava/lang/String; = "historical_ops"

.field public static final KEY_TOP_STATE_SETTLE_TIME:Ljava/lang/String; = "top_state_settle_time"

.field public static final MAX_PRIORITY_UID_STATE:I = 0x64

.field private static final MAX_UNFORWARDED_OPS:I = 0xa

.field public static final MIN_PRIORITY_UID_STATE:I = 0x2bc

.field public static final MIUI_OP_END:I = 0x273d

.field private static final MIUI_OP_NAME:Ljava/lang/String; = "MIUI:"

.field public static final MIUI_OP_START:I = 0x2710

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x5

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_FOREGROUND:I = 0x4

.field public static final MODE_IGNORED:I = 0x1

.field public static final MODE_NAMES:[Ljava/lang/String;

.field public static final NOTE_OP_COLLECTION_ENABLED:Z = false

.field public static final OPSTR_ACCEPT_HANDOVER:Ljava/lang/String; = "android:accept_handover"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACCESS_ACCESSIBILITY:Ljava/lang/String; = "android:access_accessibility"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACCESS_MEDIA_LOCATION:Ljava/lang/String; = "android:access_media_location"

.field public static final OPSTR_ACCESS_NOTIFICATIONS:Ljava/lang/String; = "android:access_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACCESS_RESTRICTED_SETTINGS:Ljava/lang/String; = "android:access_restricted_settings"

.field public static final OPSTR_ACTIVATE_PLATFORM_VPN:Ljava/lang/String; = "android:activate_platform_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ACTIVITY_RECOGNITION:Ljava/lang/String; = "android:activity_recognition"

.field public static final OPSTR_ACTIVITY_RECOGNITION_SOURCE:Ljava/lang/String; = "android:activity_recognition_source"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final OPSTR_ANSWER_PHONE_CALLS:Ljava/lang/String; = "android:answer_phone_calls"

.field public static final OPSTR_ASSIST_SCREENSHOT:Ljava/lang/String; = "android:assist_screenshot"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ASSIST_STRUCTURE:Ljava/lang/String; = "android:assist_structure"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_ACCESSIBILITY_VOLUME:Ljava/lang/String; = "android:audio_accessibility_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_ALARM_VOLUME:Ljava/lang/String; = "android:audio_alarm_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_BLUETOOTH_VOLUME:Ljava/lang/String; = "android:audio_bluetooth_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_MASTER_VOLUME:Ljava/lang/String; = "android:audio_master_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_MEDIA_VOLUME:Ljava/lang/String; = "android:audio_media_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_NOTIFICATION_VOLUME:Ljava/lang/String; = "android:audio_notification_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_RING_VOLUME:Ljava/lang/String; = "android:audio_ring_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUDIO_VOICE_VOLUME:Ljava/lang/String; = "android:audio_voice_volume"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUTO_REVOKE_MANAGED_BY_INSTALLER:Ljava/lang/String; = "android:auto_revoke_managed_by_installer"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:Ljava/lang/String; = "android:auto_revoke_permissions_if_unused"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_BIND_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "android:bind_accessibility_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_BLUETOOTH_ADVERTISE:Ljava/lang/String; = "android:bluetooth_advertise"

.field public static final OPSTR_BLUETOOTH_CONNECT:Ljava/lang/String; = "android:bluetooth_connect"

.field public static final OPSTR_BLUETOOTH_SCAN:Ljava/lang/String; = "android:bluetooth_scan"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_CHANGE_WIFI_STATE:Ljava/lang/String; = "android:change_wifi_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_COARSE_LOCATION_SOURCE:Ljava/lang/String; = "android:coarse_location_source"

.field public static final OPSTR_ESTABLISH_VPN_MANAGER:Ljava/lang/String; = "android:establish_vpn_manager"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_ESTABLISH_VPN_SERVICE:Ljava/lang/String; = "android:establish_vpn_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_FINE_LOCATION_SOURCE:Ljava/lang/String; = "android:fine_location_source"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_GPS:Ljava/lang/String; = "android:gps"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_INSTANT_APP_START_FOREGROUND:Ljava/lang/String; = "android:instant_app_start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_INTERACT_ACROSS_PROFILES:Ljava/lang/String; = "android:interact_across_profiles"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_LEGACY_STORAGE:Ljava/lang/String; = "android:legacy_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_LOADER_USAGE_STATS:Ljava/lang/String; = "android:loader_usage_stats"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MANAGE_CREDENTIALS:Ljava/lang/String; = "android:manage_credentials"

.field public static final OPSTR_MANAGE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:manage_external_storage"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MANAGE_IPSEC_TUNNELS:Ljava/lang/String; = "android:manage_ipsec_tunnels"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MANAGE_MEDIA:Ljava/lang/String; = "android:manage_media"

.field public static final OPSTR_MANAGE_ONGOING_CALLS:Ljava/lang/String; = "android:manage_ongoing_calls"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_MUTE_MICROPHONE:Ljava/lang/String; = "android:mute_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_NEARBY_WIFI_DEVICES:Ljava/lang/String; = "android:nearby_wifi_devices"

.field public static final OPSTR_NEIGHBORING_CELLS:Ljava/lang/String; = "android:neighboring_cells"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_NO_ISOLATED_STORAGE:Ljava/lang/String; = "android:no_isolated_storage"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final OPSTR_PHONE_CALL_CAMERA:Ljava/lang/String; = "android:phone_call_camera"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PHONE_CALL_MICROPHONE:Ljava/lang/String; = "android:phone_call_microphone"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PICTURE_IN_PICTURE:Ljava/lang/String; = "android:picture_in_picture"

.field public static final OPSTR_PLAY_AUDIO:Ljava/lang/String; = "android:play_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_POST_NOTIFICATION:Ljava/lang/String; = "android:post_notification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_PROCESS_OUTGOING_CALLS:Ljava/lang/String; = "android:process_outgoing_calls"

.field public static final OPSTR_PROJECT_MEDIA:Ljava/lang/String; = "android:project_media"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_QUERY_ALL_PACKAGES:Ljava/lang/String; = "android:query_all_packages"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CLIPBOARD:Ljava/lang/String; = "android:read_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_DEVICE_IDENTIFIERS:Ljava/lang/String; = "android:read_device_identifiers"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_ICC_SMS:Ljava/lang/String; = "android:read_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_MEDIA_AUDIO:Ljava/lang/String; = "android:read_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_MEDIA_IMAGES:Ljava/lang/String; = "android:read_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_MEDIA_VIDEO:Ljava/lang/String; = "android:read_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_READ_PHONE_NUMBERS:Ljava/lang/String; = "android:read_phone_numbers"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_AMBIENT_TRIGGER_AUDIO:Ljava/lang/String; = "android:receive_ambient_trigger_audio"

.field public static final OPSTR_RECEIVE_EMERGENCY_BROADCAST:Ljava/lang/String; = "android:receive_emergency_broadcast"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_RECORD_AUDIO_HOTWORD:Ljava/lang/String; = "android:record_audio_hotword"

.field public static final OPSTR_RECORD_AUDIO_OUTPUT:Ljava/lang/String; = "android:record_audio_output"

.field public static final OPSTR_RECORD_INCOMING_PHONE_AUDIO:Ljava/lang/String; = "android:record_incoming_phone_audio"

.field public static final OPSTR_REQUEST_DELETE_PACKAGES:Ljava/lang/String; = "android:request_delete_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_REQUEST_INSTALL_PACKAGES:Ljava/lang/String; = "android:request_install_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RUN_ANY_IN_BACKGROUND:Ljava/lang/String; = "android:run_any_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_RUN_IN_BACKGROUND:Ljava/lang/String; = "android:run_in_background"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_SCHEDULE_EXACT_ALARM:Ljava/lang/String; = "android:schedule_exact_alarm"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SMS_FINANCIAL_TRANSACTIONS:Ljava/lang/String; = "android:sms_financial_transactions"

.field public static final OPSTR_START_FOREGROUND:Ljava/lang/String; = "android:start_foreground"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_TAKE_AUDIO_FOCUS:Ljava/lang/String; = "android:take_audio_focus"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TAKE_MEDIA_BUTTONS:Ljava/lang/String; = "android:take_media_buttons"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TOAST_WINDOW:Ljava/lang/String; = "android:toast_window"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_TURN_SCREEN_ON:Ljava/lang/String; = "android:turn_screen_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_USE_BIOMETRIC:Ljava/lang/String; = "android:use_biometric"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:Ljava/lang/String; = "android:use_icc_auth_with_device_identifier"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final OPSTR_UWB_RANGING:Ljava/lang/String; = "android:uwb_ranging"

.field public static final OPSTR_VIBRATE:Ljava/lang/String; = "android:vibrate"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WAKE_LOCK:Ljava/lang/String; = "android:wake_lock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WIFI_SCAN:Ljava/lang/String; = "android:wifi_scan"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CLIPBOARD:Ljava/lang/String; = "android:write_clipboard"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_ICC_SMS:Ljava/lang/String; = "android:write_icc_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_MEDIA_AUDIO:Ljava/lang/String; = "android:write_media_audio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_MEDIA_IMAGES:Ljava/lang/String; = "android:write_media_images"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_MEDIA_VIDEO:Ljava/lang/String; = "android:write_media_video"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OPSTR_WRITE_SMS:Ljava/lang/String; = "android:write_sms"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OPSTR_WRITE_WALLPAPER:Ljava/lang/String; = "android:write_wallpaper"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_ACCEPT_HANDOVER:I = 0x4a

.field public static final OP_ACCESS_ACCESSIBILITY:I = 0x58

.field public static final OP_ACCESS_GALLERY:I = 0x2732

.field public static final OP_ACCESS_LOCATION_REAL:I = 0x2734

.field public static final OP_ACCESS_MEDIA_LOCATION:I = 0x5a

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACCESS_RESTRICTED_SETTINGS:I = 0x77

.field public static final OP_ACCESS_SOCIALITY:I = 0x2733

.field public static final OP_ACCESS_XIAOMI_ACCOUNT:I = 0x271f

.field public static final OP_ACTIVATE_PLATFORM_VPN:I = 0x5e

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ACTIVITY_RECOGNITION:I = 0x4f

.field public static final OP_ACTIVITY_RECOGNITION_SOURCE:I = 0x71

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ANDROID_LOCATION_REAL:I = 0x273b

.field public static final OP_ANSWER_PHONE_CALLS:I = 0x45

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ACCESSIBILITY_VOLUME:I = 0x40

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_AUTO_REVOKE_MANAGED_BY_INSTALLER:I = 0x62

.field public static final OP_AUTO_REVOKE_PERMISSIONS_IF_UNUSED:I = 0x61

.field public static final OP_AUTO_START:I = 0x2718

.field public static final OP_BACKGROUND_LOCATION:I = 0x272b

.field public static final OP_BACKGROUND_START_ACTIVITY:I = 0x2725

.field public static final OP_BIND_ACCESSIBILITY_SERVICE:I = 0x49

.field public static final OP_BLUETOOTH_ADVERTISE:I = 0x72

.field public static final OP_BLUETOOTH_CHANGE:I = 0x2712

.field public static final OP_BLUETOOTH_CONNECT:I = 0x6f

.field public static final OP_BLUETOOTH_SCAN:I = 0x4d

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_BOOT_COMPLETED:I = 0x2717

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_CAN_BE_RECORDED:I = 0x2739

.field public static final OP_CHANGE_WIFI_STATE:I = 0x47

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_COARSE_LOCATION_SOURCE:I = 0x6d

.field public static final OP_DATA_CONNECT_CHANGE:I = 0x2713

.field public static final OP_DELETE_CALL_LOG:I = 0x271d

.field public static final OP_DELETE_CONTACTS:I = 0x271c

.field public static final OP_DELETE_MMS:I = 0x271b

.field public static final OP_DELETE_SMS:I = 0x271a

.field private static final OP_DEPRECATED_1:I = 0x60

.field public static final OP_ESTABLISH_VPN_MANAGER:I = 0x76

.field public static final OP_ESTABLISH_VPN_SERVICE:I = 0x75

.field public static final OP_EXACT_ALARM:I = 0x271e

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_FINE_LOCATION_SOURCE:I = 0x6c

.field public static final OP_FLAGS_ALL:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAGS_ALL_TRUSTED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_SELF:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_TRUSTED_PROXIED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_TRUSTED_PROXY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_UNTRUSTED_PROXIED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_FLAG_UNTRUSTED_PROXY:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_ANONYMOUS_ID:I = 0x2728

.field public static final OP_GET_INSTALLED_APPS:I = 0x2726

.field public static final OP_GET_OAID:I = 0x2735

.field public static final OP_GET_OAID_USER:I = 0x2736

.field public static final OP_GET_PHONE_NUMBER_OPERATOR:I = 0x2737

.field public static final OP_GET_TASKS:I = 0x2723

.field public static final OP_GET_UDEVICE_ID:I = 0x2729

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_INSTALL_SHORTCUT:I = 0x2721

.field public static final OP_INSTANT_APP_START_FOREGROUND:I = 0x44

.field public static final OP_INTERACT_ACROSS_PROFILES:I = 0x5d

.field public static final OP_LEGACY_STORAGE:I = 0x57

.field public static final OP_LOADER_USAGE_STATS:I = 0x5f

.field public static final OP_MANAGE_CREDENTIALS:I = 0x68

.field public static final OP_MANAGE_EXTERNAL_STORAGE:I = 0x5c

.field public static final OP_MANAGE_IPSEC_TUNNELS:I = 0x4b

.field public static final OP_MANAGE_MEDIA:I = 0x6e

.field public static final OP_MANAGE_ONGOING_CALLS:I = 0x67

.field public static final OP_MEDIA_PROJECTION:I = 0x273a

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEARBY_WIFI_DEVICES:I = 0x74

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NFC:I = 0x2720

.field public static final OP_NFC_CHANGE:I = 0x2719

.field public static final OP_NONE:I = -0x1

.field public static final OP_NO_ISOLATED_STORAGE:I = 0x63

.field public static final OP_PHONE_CALL_CAMERA:I = 0x65

.field public static final OP_PHONE_CALL_MICROPHONE:I = 0x64

.field public static final OP_PICTURE_IN_PICTURE:I = 0x43

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_LOCAL_NOTIFICATION:I = 0x2731

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_QUERY_ALL_PACKAGES:I = 0x5b

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALENDAR_REAL:I = 0x272e

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CALL_LOG_REAL:I = 0x272f

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_CONTACTS_REAL:I = 0x272d

.field public static final OP_READ_DEVICE_IDENTIFIERS:I = 0x59

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_MEDIA_AUDIO:I = 0x51

.field public static final OP_READ_MEDIA_IMAGES:I = 0x55

.field public static final OP_READ_MEDIA_VIDEO:I = 0x53

.field public static final OP_READ_MMS:I = 0x2715

.field public static final OP_READ_NOTIFICATION_SMS:I = 0x2722

.field public static final OP_READ_PHONE_NUMBERS:I = 0x41

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_PHONE_STATE_REAL:I = 0x2730

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_READ_SMS_REAL:I = 0x272c

.field public static final OP_RECEIVE_AMBIENT_TRIGGER_AUDIO:I = 0x78

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_RECORD_AUDIO_HOTWORD:I = 0x66

.field public static final OP_RECORD_AUDIO_OUTPUT:I = 0x6a

.field public static final OP_RECORD_INCOMING_PHONE_AUDIO:I = 0x73

.field public static final OP_REQUEST_DELETE_PACKAGES:I = 0x48

.field public static final OP_REQUEST_INSTALL_PACKAGES:I = 0x42

.field public static final OP_RUN_ANY_IN_BACKGROUND:I = 0x46

.field public static final OP_RUN_IN_BACKGROUND:I = 0x3f

.field public static final OP_SCHEDULE_EXACT_ALARM:I = 0x6b

.field public static final OP_SEC_CONTROL_DNS:I = 0x2738

.field public static final OP_SEND_MMS:I = 0x2714

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SERVICE_FOREGROUND:I = 0x2727

.field public static final OP_SHAKE:I = 0x273c

.field public static final OP_SHOW_DEAMON_NOTIFICATION:I = 0x272a

.field public static final OP_SHOW_WHEN_LOCKED:I = 0x2724

.field public static final OP_SMS_FINANCIAL_TRANSACTIONS:I = 0x50

.field public static final OP_START_FOREGROUND:I = 0x4c

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_BIOMETRIC:I = 0x4e

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER:I = 0x69

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_UWB_RANGING:I = 0x70

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_CHANGE:I = 0x2711

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MEDIA_AUDIO:I = 0x52

.field public static final OP_WRITE_MEDIA_IMAGES:I = 0x56

.field public static final OP_WRITE_MEDIA_VIDEO:I = 0x54

.field public static final OP_WRITE_MMS:I = 0x2716

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field private static final RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

.field public static final SAMPLING_STRATEGY_BOOT_TIME_SAMPLING:I = 0x3

.field public static final SAMPLING_STRATEGY_DEFAULT:I = 0x0

.field public static final SAMPLING_STRATEGY_RARELY_USED:I = 0x2

.field public static final SAMPLING_STRATEGY_UNIFORM:I = 0x1

.field public static final SAMPLING_STRATEGY_UNIFORM_OPS:I = 0x4

.field public static final SECURITY_EXCEPTION_ON_INVALID_ATTRIBUTION_TAG_CHANGE:J = 0x901b1a2L

.field private static final SHOULD_COLLECT_NOTE_OP:B = 0x2t

.field private static final SHOULD_COLLECT_NOTE_OP_NOT_INITIALIZED:B = 0x0t

.field private static final SHOULD_NOT_COLLECT_NOTE_OP:B = 0x1t

.field public static final UID_STATES:[I

.field public static final UID_STATE_BACKGROUND:I = 0x258
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_CACHED:I = 0x2bc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_FOREGROUND:I = 0x1f4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_FOREGROUND_SERVICE:I = 0x190
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_FOREGROUND_SERVICE_LOCATION:I = 0x12c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UID_STATE_MAX_LAST_NON_RESTRICTED:I = 0x1f4

.field private static final UID_STATE_OFFSET:I = 0x1f

.field public static final UID_STATE_PERSISTENT:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UID_STATE_TOP:I = 0xc8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WATCH_FOREGROUND_CHANGES:I = 0x1

.field public static final _NUM_OP:I = 0x79

.field private static final sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[J>;>;"
        }
    .end annotation
.end field

.field private static final sAppOpsToNote:[B

.field private static final sBinderThreadCallingUid:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sClientId:Landroid/os/IBinder;

.field private static sConfig:Lcom/android/internal/app/MessageSamplingConfig;

.field private static sFullLog:Ljava/lang/Boolean;

.field private static final sLock:Ljava/lang/Object;

.field private static sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

.field private static sOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

.field private static sOpDefaultMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictRead:[Z

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sService:Lcom/android/internal/app/IAppOpsService;

.field private static sUnforwardedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AsyncNotedAppOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpActiveChangedListener;",
            "Lcom/android/internal/app/IAppOpsActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpNotedListener;",
            "Lcom/android/internal/app/IAppOpsNotedCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;

.field private final mStartedWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/AppOpsManager$OnOpStartedListener;",
            "Lcom/android/internal/app/IAppOpsStartedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetsConfig()Lcom/android/internal/app/MessageSamplingConfig;
    .registers 1

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsOpToString()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsConfig(Lcom/android/internal/app/MessageSamplingConfig;)V
    .registers 1

    sput-object p0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-void
.end method

.method static bridge synthetic -$$Nest$smcollectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smdeduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smequalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetFormattedStackTrace()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->getService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisCollectingStackTraces()Z
    .registers 1

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smlistForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smmergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreadDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smreadLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .registers 1

    invoke-static {p0}, Landroid/app/AppOpsManager;->readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smsumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smwriteDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/AppOpsManager;->writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smwriteLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 126

    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/AppOpsManager$1;

    invoke-direct {v1}, Landroid/app/AppOpsManager$1;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    const-string v2, "allow"

    const-string v3, "ignore"

    const-string v4, "deny"

    const-string v5, "default"

    const-string v6, "foreground"

    const-string v7, "ask"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v2, v1, [I

    fill-array-data v2, :array_96e

    sput-object v2, Landroid/app/AppOpsManager;->UID_STATES:[I

    const/16 v2, 0x39

    new-array v3, v2, [I

    fill-array-data v3, :array_980

    sput-object v3, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    const/16 v3, 0x79

    new-array v4, v3, [I

    fill-array-data v4, :array_9f6

    sput-object v4, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    const-string v5, "android:coarse_location"

    const-string v6, "android:fine_location"

    const-string v7, "android:gps"

    const-string v8, "android:vibrate"

    const-string v9, "android:read_contacts"

    const-string v10, "android:write_contacts"

    const-string v11, "android:read_call_log"

    const-string v12, "android:write_call_log"

    const-string v13, "android:read_calendar"

    const-string v14, "android:write_calendar"

    const-string v15, "android:wifi_scan"

    const-string v16, "android:post_notification"

    const-string v17, "android:neighboring_cells"

    const-string v18, "android:call_phone"

    const-string v19, "android:read_sms"

    const-string v20, "android:write_sms"

    const-string v21, "android:receive_sms"

    const-string v22, "android:receive_emergency_broadcast"

    const-string v23, "android:receive_mms"

    const-string v24, "android:receive_wap_push"

    const-string v25, "android:send_sms"

    const-string v26, "android:read_icc_sms"

    const-string v27, "android:write_icc_sms"

    const-string v28, "android:write_settings"

    const-string v29, "android:system_alert_window"

    const-string v30, "android:access_notifications"

    const-string v31, "android:camera"

    const-string v32, "android:record_audio"

    const-string v33, "android:play_audio"

    const-string v34, "android:read_clipboard"

    const-string v35, "android:write_clipboard"

    const-string v36, "android:take_media_buttons"

    const-string v37, "android:take_audio_focus"

    const-string v38, "android:audio_master_volume"

    const-string v39, "android:audio_voice_volume"

    const-string v40, "android:audio_ring_volume"

    const-string v41, "android:audio_media_volume"

    const-string v42, "android:audio_alarm_volume"

    const-string v43, "android:audio_notification_volume"

    const-string v44, "android:audio_bluetooth_volume"

    const-string v45, "android:wake_lock"

    const-string v46, "android:monitor_location"

    const-string v47, "android:monitor_location_high_power"

    const-string v48, "android:get_usage_stats"

    const-string v49, "android:mute_microphone"

    const-string v50, "android:toast_window"

    const-string v51, "android:project_media"

    const-string v52, "android:activate_vpn"

    const-string v53, "android:write_wallpaper"

    const-string v54, "android:assist_structure"

    const-string v55, "android:assist_screenshot"

    const-string v56, "android:read_phone_state"

    const-string v57, "android:add_voicemail"

    const-string v58, "android:use_sip"

    const-string v59, "android:process_outgoing_calls"

    const-string v60, "android:use_fingerprint"

    const-string v61, "android:body_sensors"

    const-string v62, "android:read_cell_broadcasts"

    const-string v63, "android:mock_location"

    const-string v64, "android:read_external_storage"

    const-string v65, "android:write_external_storage"

    const-string v66, "android:turn_screen_on"

    const-string v67, "android:get_accounts"

    const-string v68, "android:run_in_background"

    const-string v69, "android:audio_accessibility_volume"

    const-string v70, "android:read_phone_numbers"

    const-string v71, "android:request_install_packages"

    const-string v72, "android:picture_in_picture"

    const-string v73, "android:instant_app_start_foreground"

    const-string v74, "android:answer_phone_calls"

    const-string v75, "android:run_any_in_background"

    const-string v76, "android:change_wifi_state"

    const-string v77, "android:request_delete_packages"

    const-string v78, "android:bind_accessibility_service"

    const-string v79, "android:accept_handover"

    const-string v80, "android:manage_ipsec_tunnels"

    const-string v81, "android:start_foreground"

    const-string v82, "android:bluetooth_scan"

    const-string v83, "android:use_biometric"

    const-string v84, "android:activity_recognition"

    const-string v85, "android:sms_financial_transactions"

    const-string v86, "android:read_media_audio"

    const-string v87, "android:write_media_audio"

    const-string v88, "android:read_media_video"

    const-string v89, "android:write_media_video"

    const-string v90, "android:read_media_images"

    const-string v91, "android:write_media_images"

    const-string v92, "android:legacy_storage"

    const-string v93, "android:access_accessibility"

    const-string v94, "android:read_device_identifiers"

    const-string v95, "android:access_media_location"

    const-string v96, "android:query_all_packages"

    const-string v97, "android:manage_external_storage"

    const-string v98, "android:interact_across_profiles"

    const-string v99, "android:activate_platform_vpn"

    const-string v100, "android:loader_usage_stats"

    const-string v101, ""

    const-string v102, "android:auto_revoke_permissions_if_unused"

    const-string v103, "android:auto_revoke_managed_by_installer"

    const-string v104, "android:no_isolated_storage"

    const-string v105, "android:phone_call_microphone"

    const-string v106, "android:phone_call_camera"

    const-string v107, "android:record_audio_hotword"

    const-string v108, "android:manage_ongoing_calls"

    const-string v109, "android:manage_credentials"

    const-string v110, "android:use_icc_auth_with_device_identifier"

    const-string v111, "android:record_audio_output"

    const-string v112, "android:schedule_exact_alarm"

    const-string v113, "android:fine_location_source"

    const-string v114, "android:coarse_location_source"

    const-string v115, "android:manage_media"

    const-string v116, "android:bluetooth_connect"

    const-string v117, "android:uwb_ranging"

    const-string v118, "android:activity_recognition_source"

    const-string v119, "android:bluetooth_advertise"

    const-string v120, "android:record_incoming_phone_audio"

    const-string v121, "android:nearby_wifi_devices"

    const-string v122, "android:establish_vpn_service"

    const-string v123, "android:establish_vpn_manager"

    const-string v124, "android:access_restricted_settings"

    const-string v125, "android:receive_ambient_trigger_audio"

    filled-new-array/range {v5 .. v125}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    const-string v5, "COARSE_LOCATION"

    const-string v6, "FINE_LOCATION"

    const-string v7, "GPS"

    const-string v8, "VIBRATE"

    const-string v9, "READ_CONTACTS"

    const-string v10, "WRITE_CONTACTS"

    const-string v11, "READ_CALL_LOG"

    const-string v12, "WRITE_CALL_LOG"

    const-string v13, "READ_CALENDAR"

    const-string v14, "WRITE_CALENDAR"

    const-string v15, "WIFI_SCAN"

    const-string v16, "POST_NOTIFICATION"

    const-string v17, "NEIGHBORING_CELLS"

    const-string v18, "CALL_PHONE"

    const-string v19, "READ_SMS"

    const-string v20, "WRITE_SMS"

    const-string v21, "RECEIVE_SMS"

    const-string v22, "RECEIVE_EMERGECY_SMS"

    const-string v23, "RECEIVE_MMS"

    const-string v24, "RECEIVE_WAP_PUSH"

    const-string v25, "SEND_SMS"

    const-string v26, "READ_ICC_SMS"

    const-string v27, "WRITE_ICC_SMS"

    const-string v28, "WRITE_SETTINGS"

    const-string v29, "SYSTEM_ALERT_WINDOW"

    const-string v30, "ACCESS_NOTIFICATIONS"

    const-string v31, "CAMERA"

    const-string v32, "RECORD_AUDIO"

    const-string v33, "PLAY_AUDIO"

    const-string v34, "READ_CLIPBOARD"

    const-string v35, "WRITE_CLIPBOARD"

    const-string v36, "TAKE_MEDIA_BUTTONS"

    const-string v37, "TAKE_AUDIO_FOCUS"

    const-string v38, "AUDIO_MASTER_VOLUME"

    const-string v39, "AUDIO_VOICE_VOLUME"

    const-string v40, "AUDIO_RING_VOLUME"

    const-string v41, "AUDIO_MEDIA_VOLUME"

    const-string v42, "AUDIO_ALARM_VOLUME"

    const-string v43, "AUDIO_NOTIFICATION_VOLUME"

    const-string v44, "AUDIO_BLUETOOTH_VOLUME"

    const-string v45, "WAKE_LOCK"

    const-string v46, "MONITOR_LOCATION"

    const-string v47, "MONITOR_HIGH_POWER_LOCATION"

    const-string v48, "GET_USAGE_STATS"

    const-string v49, "MUTE_MICROPHONE"

    const-string v50, "TOAST_WINDOW"

    const-string v51, "PROJECT_MEDIA"

    const-string v52, "ACTIVATE_VPN"

    const-string v53, "WRITE_WALLPAPER"

    const-string v54, "ASSIST_STRUCTURE"

    const-string v55, "ASSIST_SCREENSHOT"

    const-string v56, "READ_PHONE_STATE"

    const-string v57, "ADD_VOICEMAIL"

    const-string v58, "USE_SIP"

    const-string v59, "PROCESS_OUTGOING_CALLS"

    const-string v60, "USE_FINGERPRINT"

    const-string v61, "BODY_SENSORS"

    const-string v62, "READ_CELL_BROADCASTS"

    const-string v63, "MOCK_LOCATION"

    const-string v64, "READ_EXTERNAL_STORAGE"

    const-string v65, "WRITE_EXTERNAL_STORAGE"

    const-string v66, "TURN_ON_SCREEN"

    const-string v67, "GET_ACCOUNTS"

    const-string v68, "RUN_IN_BACKGROUND"

    const-string v69, "AUDIO_ACCESSIBILITY_VOLUME"

    const-string v70, "READ_PHONE_NUMBERS"

    const-string v71, "REQUEST_INSTALL_PACKAGES"

    const-string v72, "PICTURE_IN_PICTURE"

    const-string v73, "INSTANT_APP_START_FOREGROUND"

    const-string v74, "ANSWER_PHONE_CALLS"

    const-string v75, "RUN_ANY_IN_BACKGROUND"

    const-string v76, "CHANGE_WIFI_STATE"

    const-string v77, "REQUEST_DELETE_PACKAGES"

    const-string v78, "BIND_ACCESSIBILITY_SERVICE"

    const-string v79, "ACCEPT_HANDOVER"

    const-string v80, "MANAGE_IPSEC_TUNNELS"

    const-string v81, "START_FOREGROUND"

    const-string v82, "BLUETOOTH_SCAN"

    const-string v83, "USE_BIOMETRIC"

    const-string v84, "ACTIVITY_RECOGNITION"

    const-string v85, "SMS_FINANCIAL_TRANSACTIONS"

    const-string v86, "READ_MEDIA_AUDIO"

    const-string v87, "WRITE_MEDIA_AUDIO"

    const-string v88, "READ_MEDIA_VIDEO"

    const-string v89, "WRITE_MEDIA_VIDEO"

    const-string v90, "READ_MEDIA_IMAGES"

    const-string v91, "WRITE_MEDIA_IMAGES"

    const-string v92, "LEGACY_STORAGE"

    const-string v93, "ACCESS_ACCESSIBILITY"

    const-string v94, "READ_DEVICE_IDENTIFIERS"

    const-string v95, "ACCESS_MEDIA_LOCATION"

    const-string v96, "QUERY_ALL_PACKAGES"

    const-string v97, "MANAGE_EXTERNAL_STORAGE"

    const-string v98, "INTERACT_ACROSS_PROFILES"

    const-string v99, "ACTIVATE_PLATFORM_VPN"

    const-string v100, "LOADER_USAGE_STATS"

    const-string v101, "deprecated"

    const-string v102, "AUTO_REVOKE_PERMISSIONS_IF_UNUSED"

    const-string v103, "AUTO_REVOKE_MANAGED_BY_INSTALLER"

    const-string v104, "NO_ISOLATED_STORAGE"

    const-string v105, "PHONE_CALL_MICROPHONE"

    const-string v106, "PHONE_CALL_CAMERA"

    const-string v107, "RECORD_AUDIO_HOTWORD"

    const-string v108, "MANAGE_ONGOING_CALLS"

    const-string v109, "MANAGE_CREDENTIALS"

    const-string v110, "USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    const-string v111, "RECORD_AUDIO_OUTPUT"

    const-string v112, "SCHEDULE_EXACT_ALARM"

    const-string v113, "FINE_LOCATION_SOURCE"

    const-string v114, "COARSE_LOCATION_SOURCE"

    const-string v115, "MANAGE_MEDIA"

    const-string v116, "BLUETOOTH_CONNECT"

    const-string v117, "UWB_RANGING"

    const-string v118, "ACTIVITY_RECOGNITION_SOURCE"

    const-string v119, "BLUETOOTH_ADVERTISE"

    const-string v120, "RECORD_INCOMING_PHONE_AUDIO"

    const-string v121, "NEARBY_WIFI_DEVICES"

    const-string v122, "ESTABLISH_VPN_SERVICE"

    const-string v123, "ESTABLISH_VPN_MANAGER"

    const-string v124, "ACCESS_RESTRICTED_SETTINGS"

    const-string v125, "RECEIVE_SOUNDTRIGGER_AUDIO"

    filled-new-array/range {v5 .. v125}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v7, 0x0

    const-string v8, "android.permission.VIBRATE"

    const-string v9, "android.permission.READ_CONTACTS"

    const-string v10, "android.permission.WRITE_CONTACTS"

    const-string v11, "android.permission.READ_CALL_LOG"

    const-string v12, "android.permission.WRITE_CALL_LOG"

    const-string v13, "android.permission.READ_CALENDAR"

    const-string v14, "android.permission.WRITE_CALENDAR"

    const-string v15, "android.permission.ACCESS_WIFI_STATE"

    const-string v16, "android.permission.POST_NOTIFICATIONS"

    const/16 v17, 0x0

    const-string v18, "android.permission.CALL_PHONE"

    const-string v19, "android.permission.READ_SMS"

    const/16 v20, 0x0

    const-string v21, "android.permission.RECEIVE_SMS"

    const-string v22, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const-string v23, "android.permission.RECEIVE_MMS"

    const-string v24, "android.permission.RECEIVE_WAP_PUSH"

    const-string v25, "android.permission.SEND_SMS"

    const-string v26, "android.permission.READ_SMS"

    const/16 v27, 0x0

    const-string v28, "android.permission.WRITE_SETTINGS"

    const-string v29, "android.permission.SYSTEM_ALERT_WINDOW"

    const-string v30, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v31, "android.permission.CAMERA"

    const-string v32, "android.permission.RECORD_AUDIO"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-string v45, "android.permission.WAKE_LOCK"

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-string v48, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const-string v56, "android.permission.READ_PHONE_STATE"

    const-string v57, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v58, "android.permission.USE_SIP"

    const-string v59, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v60, "android.permission.USE_FINGERPRINT"

    const-string v61, "android.permission.BODY_SENSORS"

    const-string v62, "android.permission.READ_CELL_BROADCASTS"

    const/16 v63, 0x0

    const-string v64, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v65, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v66, 0x0

    const-string v67, "android.permission.GET_ACCOUNTS"

    const/16 v68, 0x0

    const/16 v69, 0x0

    const-string v70, "android.permission.READ_PHONE_NUMBERS"

    const-string v71, "android.permission.REQUEST_INSTALL_PACKAGES"

    const/16 v72, 0x0

    const-string v73, "android.permission.INSTANT_APP_FOREGROUND_SERVICE"

    const-string v74, "android.permission.ANSWER_PHONE_CALLS"

    const/16 v75, 0x0

    const-string v76, "android.permission.CHANGE_WIFI_STATE"

    const-string v77, "android.permission.REQUEST_DELETE_PACKAGES"

    const-string v78, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    const-string v79, "android.permission.ACCEPT_HANDOVER"

    const-string v80, "android.permission.MANAGE_IPSEC_TUNNELS"

    const-string v81, "android.permission.FOREGROUND_SERVICE"

    const-string v82, "android.permission.BLUETOOTH_SCAN"

    const-string v83, "android.permission.USE_BIOMETRIC"

    const-string v84, "android.permission.ACTIVITY_RECOGNITION"

    const-string v85, "android.permission.SMS_FINANCIAL_TRANSACTIONS"

    const-string v86, "android.permission.READ_MEDIA_AUDIO"

    const/16 v87, 0x0

    const-string v88, "android.permission.READ_MEDIA_VIDEO"

    const/16 v89, 0x0

    const-string v90, "android.permission.READ_MEDIA_IMAGES"

    const/16 v91, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const-string v95, "android.permission.ACCESS_MEDIA_LOCATION"

    const/16 v96, 0x0

    const-string v97, "android.permission.MANAGE_EXTERNAL_STORAGE"

    const-string v98, "android.permission.INTERACT_ACROSS_PROFILES"

    const/16 v99, 0x0

    const-string v100, "android.permission.LOADER_USAGE_STATS"

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const-string v108, "android.permission.MANAGE_ONGOING_CALLS"

    const/16 v109, 0x0

    const-string v110, "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER"

    const/16 v111, 0x0

    const-string v112, "android.permission.SCHEDULE_EXACT_ALARM"

    const/16 v113, 0x0

    const/16 v114, 0x0

    const-string v115, "android.permission.MANAGE_MEDIA"

    const-string v116, "android.permission.BLUETOOTH_CONNECT"

    const-string v117, "android.permission.UWB_RANGING"

    const/16 v118, 0x0

    const-string v119, "android.permission.BLUETOOTH_ADVERTISE"

    const/16 v120, 0x0

    const-string v121, "android.permission.NEARBY_WIFI_DEVICES"

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    filled-new-array/range {v5 .. v125}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    const-string/jumbo v5, "no_share_location"

    const-string/jumbo v6, "no_share_location"

    const-string/jumbo v7, "no_share_location"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v11, "no_outgoing_calls"

    const-string/jumbo v12, "no_outgoing_calls"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "no_share_location"

    const/16 v16, 0x0

    const/16 v18, 0x0

    const-string/jumbo v19, "no_sms"

    const-string/jumbo v20, "no_sms"

    const-string/jumbo v21, "no_sms"

    const/16 v22, 0x0

    const-string/jumbo v23, "no_sms"

    const/16 v24, 0x0

    const-string/jumbo v25, "no_sms"

    const-string/jumbo v26, "no_sms"

    const-string/jumbo v27, "no_sms"

    const/16 v28, 0x0

    const-string/jumbo v29, "no_create_windows"

    const/16 v30, 0x0

    const-string/jumbo v31, "no_camera"

    const-string/jumbo v32, "no_record_audio"

    const-string/jumbo v38, "no_adjust_volume"

    const-string/jumbo v39, "no_adjust_volume"

    const-string/jumbo v40, "no_adjust_volume"

    const-string/jumbo v41, "no_adjust_volume"

    const-string/jumbo v42, "no_adjust_volume"

    const-string/jumbo v43, "no_adjust_volume"

    const-string/jumbo v44, "no_adjust_volume"

    const/16 v45, 0x0

    const-string/jumbo v46, "no_share_location"

    const-string/jumbo v47, "no_share_location"

    const/16 v48, 0x0

    const-string/jumbo v49, "no_unmute_microphone"

    const-string/jumbo v50, "no_create_windows"

    const-string/jumbo v53, "no_wallpaper"

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v67, 0x0

    const-string/jumbo v69, "no_adjust_volume"

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const-string/jumbo v85, "no_sms"

    const/16 v86, 0x0

    const/16 v88, 0x0

    const/16 v90, 0x0

    const/16 v95, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v100, 0x0

    const/16 v108, 0x0

    const/16 v110, 0x0

    const/16 v112, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v119, 0x0

    const/16 v121, 0x0

    filled-new-array/range {v5 .. v125}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    new-array v4, v3, [Landroid/app/AppOpsManager$RestrictionBypass;

    new-instance v5, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    aput-object v5, v4, v7

    new-instance v5, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v5, v6, v7, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v8, 0x3

    aput-object v0, v4, v8

    const/4 v9, 0x4

    aput-object v0, v4, v9

    const/4 v10, 0x5

    aput-object v0, v4, v10

    const/4 v11, 0x6

    aput-object v0, v4, v11

    aput-object v0, v4, v1

    const/16 v12, 0x8

    aput-object v0, v4, v12

    const/16 v13, 0x9

    aput-object v0, v4, v13

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v6, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v15, 0xa

    aput-object v14, v4, v15

    const/16 v14, 0xb

    aput-object v0, v4, v14

    const/16 v16, 0xc

    aput-object v0, v4, v16

    const/16 v17, 0xd

    aput-object v0, v4, v17

    const/16 v18, 0xe

    aput-object v0, v4, v18

    const/16 v19, 0xf

    aput-object v0, v4, v19

    const/16 v20, 0x10

    aput-object v0, v4, v20

    const/16 v21, 0x11

    aput-object v0, v4, v21

    const/16 v22, 0x12

    aput-object v0, v4, v22

    const/16 v22, 0x13

    aput-object v0, v4, v22

    const/16 v22, 0x14

    aput-object v0, v4, v22

    const/16 v22, 0x15

    aput-object v0, v4, v22

    const/16 v22, 0x16

    aput-object v0, v4, v22

    const/16 v22, 0x17

    aput-object v0, v4, v22

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v6, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v23, 0x18

    aput-object v14, v4, v23

    const/16 v14, 0x19

    aput-object v0, v4, v14

    const/16 v14, 0x1a

    aput-object v0, v4, v14

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v7, v6}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v23, 0x1b

    aput-object v14, v4, v23

    const/16 v14, 0x1c

    aput-object v0, v4, v14

    const/16 v14, 0x1d

    aput-object v0, v4, v14

    const/16 v14, 0x1e

    aput-object v0, v4, v14

    const/16 v14, 0x1f

    aput-object v0, v4, v14

    const/16 v14, 0x20

    aput-object v0, v4, v14

    const/16 v14, 0x21

    aput-object v0, v4, v14

    const/16 v14, 0x22

    aput-object v0, v4, v14

    const/16 v14, 0x23

    aput-object v0, v4, v14

    const/16 v14, 0x24

    aput-object v0, v4, v14

    const/16 v14, 0x25

    aput-object v0, v4, v14

    const/16 v14, 0x26

    aput-object v0, v4, v14

    const/16 v14, 0x27

    aput-object v0, v4, v14

    const/16 v14, 0x28

    aput-object v0, v4, v14

    const/16 v14, 0x29

    aput-object v0, v4, v14

    const/16 v14, 0x2a

    aput-object v0, v4, v14

    const/16 v14, 0x2b

    aput-object v0, v4, v14

    const/16 v14, 0x2c

    aput-object v0, v4, v14

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v6, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v23, 0x2d

    aput-object v14, v4, v23

    const/16 v14, 0x2e

    aput-object v0, v4, v14

    const/16 v14, 0x2f

    aput-object v0, v4, v14

    const/16 v14, 0x30

    aput-object v0, v4, v14

    const/16 v14, 0x31

    aput-object v0, v4, v14

    const/16 v14, 0x32

    aput-object v0, v4, v14

    const/16 v14, 0x33

    aput-object v0, v4, v14

    const/16 v14, 0x34

    aput-object v0, v4, v14

    const/16 v14, 0x35

    aput-object v0, v4, v14

    const/16 v14, 0x36

    aput-object v0, v4, v14

    const/16 v14, 0x37

    aput-object v0, v4, v14

    const/16 v14, 0x38

    aput-object v0, v4, v14

    aput-object v0, v4, v2

    const/16 v14, 0x3a

    aput-object v0, v4, v14

    const/16 v14, 0x3b

    aput-object v0, v4, v14

    const/16 v14, 0x3c

    aput-object v0, v4, v14

    const/16 v14, 0x3d

    aput-object v0, v4, v14

    const/16 v14, 0x3e

    aput-object v0, v4, v14

    const/16 v14, 0x3f

    aput-object v0, v4, v14

    const/16 v14, 0x40

    aput-object v0, v4, v14

    const/16 v14, 0x41

    aput-object v0, v4, v14

    const/16 v14, 0x42

    aput-object v0, v4, v14

    const/16 v14, 0x43

    aput-object v0, v4, v14

    const/16 v14, 0x44

    aput-object v0, v4, v14

    const/16 v14, 0x45

    aput-object v0, v4, v14

    const/16 v14, 0x46

    aput-object v0, v4, v14

    const/16 v14, 0x47

    aput-object v0, v4, v14

    const/16 v14, 0x48

    aput-object v0, v4, v14

    const/16 v14, 0x49

    aput-object v0, v4, v14

    const/16 v14, 0x4a

    aput-object v0, v4, v14

    const/16 v14, 0x4b

    aput-object v0, v4, v14

    const/16 v14, 0x4c

    aput-object v0, v4, v14

    new-instance v14, Landroid/app/AppOpsManager$RestrictionBypass;

    invoke-direct {v14, v7, v6, v7}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    const/16 v23, 0x4d

    aput-object v14, v4, v23

    const/16 v14, 0x4e

    aput-object v0, v4, v14

    const/16 v14, 0x4f

    aput-object v0, v4, v14

    const/16 v14, 0x50

    aput-object v0, v4, v14

    const/16 v14, 0x51

    aput-object v0, v4, v14

    const/16 v14, 0x52

    aput-object v0, v4, v14

    const/16 v14, 0x53

    aput-object v0, v4, v14

    const/16 v14, 0x54

    aput-object v0, v4, v14

    const/16 v14, 0x55

    aput-object v0, v4, v14

    const/16 v14, 0x56

    aput-object v0, v4, v14

    const/16 v14, 0x57

    aput-object v0, v4, v14

    const/16 v14, 0x58

    aput-object v0, v4, v14

    const/16 v14, 0x59

    aput-object v0, v4, v14

    const/16 v14, 0x5a

    aput-object v0, v4, v14

    const/16 v14, 0x5b

    aput-object v0, v4, v14

    const/16 v14, 0x5c

    aput-object v0, v4, v14

    const/16 v14, 0x5d

    aput-object v0, v4, v14

    const/16 v14, 0x5e

    aput-object v0, v4, v14

    const/16 v14, 0x5f

    aput-object v0, v4, v14

    const/16 v14, 0x60

    aput-object v0, v4, v14

    const/16 v14, 0x61

    aput-object v0, v4, v14

    const/16 v14, 0x62

    aput-object v0, v4, v14

    const/16 v14, 0x63

    aput-object v0, v4, v14

    const/16 v14, 0x64

    aput-object v0, v4, v14

    const/16 v14, 0x65

    aput-object v0, v4, v14

    const/16 v14, 0x66

    aput-object v0, v4, v14

    const/16 v14, 0x67

    aput-object v0, v4, v14

    const/16 v14, 0x68

    aput-object v0, v4, v14

    const/16 v14, 0x69

    aput-object v0, v4, v14

    const/16 v14, 0x6a

    aput-object v0, v4, v14

    const/16 v14, 0x6b

    aput-object v0, v4, v14

    const/16 v14, 0x6c

    aput-object v0, v4, v14

    const/16 v14, 0x6d

    aput-object v0, v4, v14

    const/16 v14, 0x6e

    aput-object v0, v4, v14

    const/16 v14, 0x6f

    aput-object v0, v4, v14

    const/16 v14, 0x70

    aput-object v0, v4, v14

    const/16 v14, 0x71

    aput-object v0, v4, v14

    const/16 v14, 0x72

    aput-object v0, v4, v14

    const/16 v14, 0x73

    aput-object v0, v4, v14

    const/16 v14, 0x74

    aput-object v0, v4, v14

    const/16 v14, 0x75

    aput-object v0, v4, v14

    const/16 v14, 0x76

    aput-object v0, v4, v14

    const/16 v14, 0x77

    aput-object v0, v4, v14

    const/16 v14, 0x78

    aput-object v0, v4, v14

    sput-object v4, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

    new-array v0, v3, [I

    aput v7, v0, v7

    aput v7, v0, v6

    aput v7, v0, v5

    aput v7, v0, v8

    aput v7, v0, v9

    aput v7, v0, v10

    aput v7, v0, v11

    aput v7, v0, v1

    aput v7, v0, v12

    aput v7, v0, v13

    aput v7, v0, v15

    const/16 v1, 0xb

    aput v7, v0, v1

    aput v7, v0, v16

    aput v7, v0, v17

    aput v7, v0, v18

    aput v6, v0, v19

    aput v7, v0, v20

    aput v7, v0, v21

    const/16 v1, 0x12

    aput v7, v0, v1

    const/16 v1, 0x13

    aput v7, v0, v1

    const/16 v1, 0x14

    aput v7, v0, v1

    const/16 v1, 0x15

    aput v7, v0, v1

    const/16 v1, 0x16

    aput v7, v0, v1

    const/16 v1, 0x17

    aput v8, v0, v1

    invoke-static {}, Landroid/app/AppOpsManager;->getSystemAlertWindowDefault()I

    move-result v1

    const/16 v4, 0x18

    aput v1, v0, v4

    const/16 v1, 0x19

    aput v7, v0, v1

    const/16 v1, 0x1a

    aput v7, v0, v1

    const/16 v1, 0x1b

    aput v7, v0, v1

    const/16 v1, 0x1c

    aput v7, v0, v1

    const/16 v1, 0x1d

    aput v7, v0, v1

    const/16 v1, 0x1e

    aput v7, v0, v1

    const/16 v1, 0x1f

    aput v7, v0, v1

    const/16 v1, 0x20

    aput v7, v0, v1

    const/16 v1, 0x21

    aput v7, v0, v1

    const/16 v1, 0x22

    aput v7, v0, v1

    const/16 v1, 0x23

    aput v7, v0, v1

    const/16 v1, 0x24

    aput v7, v0, v1

    const/16 v1, 0x25

    aput v7, v0, v1

    const/16 v1, 0x26

    aput v7, v0, v1

    const/16 v1, 0x27

    aput v7, v0, v1

    const/16 v1, 0x28

    aput v7, v0, v1

    const/16 v1, 0x29

    aput v7, v0, v1

    const/16 v1, 0x2a

    aput v7, v0, v1

    const/16 v1, 0x2b

    aput v8, v0, v1

    const/16 v1, 0x2c

    aput v7, v0, v1

    const/16 v1, 0x2d

    aput v7, v0, v1

    const/16 v1, 0x2e

    aput v6, v0, v1

    const/16 v1, 0x2f

    aput v6, v0, v1

    const/16 v1, 0x30

    aput v7, v0, v1

    const/16 v1, 0x31

    aput v7, v0, v1

    const/16 v1, 0x32

    aput v7, v0, v1

    const/16 v1, 0x33

    aput v7, v0, v1

    const/16 v1, 0x34

    aput v7, v0, v1

    const/16 v1, 0x35

    aput v7, v0, v1

    const/16 v1, 0x36

    aput v7, v0, v1

    const/16 v1, 0x37

    aput v7, v0, v1

    const/16 v1, 0x38

    aput v7, v0, v1

    aput v7, v0, v2

    const/16 v1, 0x3a

    aput v5, v0, v1

    const/16 v1, 0x3b

    aput v7, v0, v1

    const/16 v1, 0x3c

    aput v7, v0, v1

    const/16 v1, 0x3d

    aput v7, v0, v1

    const/16 v1, 0x3e

    aput v7, v0, v1

    const/16 v1, 0x3f

    aput v7, v0, v1

    const/16 v1, 0x40

    aput v7, v0, v1

    const/16 v1, 0x41

    aput v7, v0, v1

    const/16 v1, 0x42

    aput v5, v0, v1

    const/16 v1, 0x43

    aput v7, v0, v1

    const/16 v1, 0x44

    aput v8, v0, v1

    const/16 v1, 0x45

    aput v7, v0, v1

    const/16 v1, 0x46

    aput v7, v0, v1

    const/16 v1, 0x47

    aput v7, v0, v1

    const/16 v1, 0x48

    aput v7, v0, v1

    const/16 v1, 0x49

    aput v7, v0, v1

    const/16 v1, 0x4a

    aput v7, v0, v1

    const/16 v1, 0x4b

    aput v5, v0, v1

    const/16 v1, 0x4c

    aput v7, v0, v1

    const/16 v1, 0x4d

    aput v7, v0, v1

    const/16 v1, 0x4e

    aput v7, v0, v1

    const/16 v1, 0x4f

    aput v7, v0, v1

    const/16 v1, 0x50

    aput v8, v0, v1

    const/16 v1, 0x51

    aput v7, v0, v1

    const/16 v1, 0x52

    aput v5, v0, v1

    const/16 v1, 0x53

    aput v7, v0, v1

    const/16 v1, 0x54

    aput v5, v0, v1

    const/16 v1, 0x55

    aput v7, v0, v1

    const/16 v1, 0x56

    aput v5, v0, v1

    const/16 v1, 0x57

    aput v8, v0, v1

    const/16 v1, 0x58

    aput v7, v0, v1

    const/16 v1, 0x59

    aput v5, v0, v1

    const/16 v1, 0x5a

    aput v7, v0, v1

    const/16 v1, 0x5b

    aput v8, v0, v1

    const/16 v1, 0x5c

    aput v8, v0, v1

    const/16 v1, 0x5d

    aput v8, v0, v1

    const/16 v1, 0x5e

    aput v6, v0, v1

    const/16 v1, 0x5f

    aput v8, v0, v1

    const/16 v1, 0x60

    aput v6, v0, v1

    const/16 v1, 0x61

    aput v8, v0, v1

    const/16 v1, 0x62

    aput v7, v0, v1

    const/16 v1, 0x63

    aput v5, v0, v1

    const/16 v1, 0x64

    aput v6, v0, v1

    const/16 v1, 0x65

    aput v6, v0, v1

    const/16 v1, 0x66

    aput v7, v0, v1

    const/16 v1, 0x67

    aput v8, v0, v1

    const/16 v1, 0x68

    aput v8, v0, v1

    const/16 v1, 0x69

    aput v8, v0, v1

    const/16 v1, 0x6a

    aput v7, v0, v1

    const/16 v1, 0x6b

    aput v8, v0, v1

    const/16 v1, 0x6c

    aput v7, v0, v1

    const/16 v1, 0x6d

    aput v7, v0, v1

    const/16 v1, 0x6e

    aput v8, v0, v1

    const/16 v1, 0x6f

    aput v7, v0, v1

    const/16 v1, 0x70

    aput v7, v0, v1

    const/16 v1, 0x71

    aput v7, v0, v1

    const/16 v1, 0x72

    aput v7, v0, v1

    const/16 v1, 0x73

    aput v7, v0, v1

    const/16 v1, 0x74

    aput v7, v0, v1

    const/16 v1, 0x75

    aput v7, v0, v1

    const/16 v1, 0x76

    aput v7, v0, v1

    const/16 v1, 0x77

    aput v7, v0, v1

    const/16 v1, 0x78

    aput v7, v0, v1

    sput-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    new-array v0, v3, [Z

    fill-array-data v0, :array_aec

    sput-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    new-array v0, v3, [Z

    fill-array-data v0, :array_b2e

    sput-object v0, Landroid/app/AppOpsManager;->sOpRestrictRead:[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    new-array v0, v3, [B

    sput-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v0, v0

    const-string v1, " should be "

    if-ne v0, v3, :cond_949

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_924

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_8ff

    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_8da

    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v0, v0

    if-ne v0, v3, :cond_8b5

    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v0, v0

    if-ne v0, v3, :cond_890

    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v0, v0

    if-ne v0, v3, :cond_86b

    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

    array-length v0, v0

    if-ne v0, v3, :cond_846

    const/4 v0, 0x0

    :goto_80d
    if-ge v0, v3, :cond_821

    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_81e

    sget-object v2, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_81e
    add-int/lit8 v0, v0, 0x1

    goto :goto_80d

    :cond_821
    sget-object v0, Landroid/app/AppOpsManager;->RUNTIME_AND_APPOP_PERMISSIONS_OPS:[I

    array-length v1, v0

    move v2, v7

    :goto_825
    if-ge v2, v1, :cond_83b

    aget v3, v0, v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_838

    sget-object v5, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_838
    add-int/lit8 v2, v2, 0x1

    goto :goto_825

    :cond_83b
    new-instance v0, Lcom/android/internal/app/MessageSamplingConfig;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/internal/app/MessageSamplingConfig;-><init>(IIJ)V

    sput-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    return-void

    :cond_846
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpRestrictions length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_890
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpDisableReset length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpDefaultMode length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8da
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpPerms length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8ff
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpNames length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_924
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpToString length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_949
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sOpToSwitch length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_96e
    .array-data 4
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
    .end array-data

    :array_980
    .array-data 4
        0x4
        0x5
        0x3e
        0x8
        0x9
        0x14
        0x10
        0xe
        0x13
        0x12
        0x39
        0x3b
        0x3c
        0x5a
        0x0
        0x1
        0x33
        0x41
        0xd
        0x6
        0x7
        0x34
        0x35
        0x36
        0x45
        0x4a
        0x1b
        0x1a
        0x38
        0x4f
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x4d
        0x6f
        0x72
        0x70
        0x74
        0xb
        0x19
        0x18
        0x17
        0x42
        0x4c
        0x50
        0x4b
        0x44
        0x5c
        0x5d
        0x5f
        0x67
        0x69
        0x6b
        0x6e
    .end array-data

    :array_9f6
    .array-data 4
        0x0
        0x1
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x12
        0x13
        0x14
        0xe
        0xf
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
        0x0
        0x0
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
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x1
        0x0
        0x6e
        0x6f
        0x70
        0x4f
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
    .end array-data

    :array_aec
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data

    nop

    :array_b2e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_49

    :try_start_2b
    const-string v1, "android.permission.READ_DEVICE_CONFIG"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_49

    const-string/jumbo v1, "privacy"

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception v1

    nop

    :cond_49
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    return-void
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static collectKeys(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseLongArray;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1c

    if-nez p1, :cond_a

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    move-object p1, v0

    :cond_a
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1c

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    return-object p1
.end method

.method private collectNoteOpCallsForValidation(I)V
    .registers 2

    return-void
.end method

.method private collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V
    .registers 4

    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v1, :cond_a

    invoke-virtual {v1, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_11

    sget-object v0, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-virtual {v0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onSelfNoted(Landroid/app/SyncNotedAppOp;)V

    return-void

    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V
    .registers 10

    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    const/4 v3, 0x1

    if-nez v2, :cond_24

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v3}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_24
    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-nez v1, :cond_3a

    const/4 v4, 0x2

    new-array v1, v4, [J

    invoke-virtual {p0}, Landroid/app/SyncNotedAppOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    const-wide/16 v4, 0x1

    const/16 v6, 0x40

    if-ge v0, v6, :cond_48

    const/4 v3, 0x0

    aget-wide v6, v1, v3

    shl-long/2addr v4, v0

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    goto :goto_50

    :cond_48
    aget-wide v6, v1, v3

    add-int/lit8 v8, v0, -0x40

    shl-long/2addr v4, v8

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    :goto_50
    return-void
.end method

.method private static deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v0, :cond_39

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v6

    add-int/lit8 v3, v2, 0x1

    :goto_17
    if-ge v3, v0, :cond_2a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-nez v4, :cond_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2a
    invoke-interface {p0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/app/AppOpsManager;->mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;

    move-result-object v4

    invoke-interface {p0, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_7

    :cond_39
    :goto_39
    if-ge v1, v0, :cond_47

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_47
    return-object p0
.end method

.method private static equalsLongSparseLongArray(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_3a

    if-nez p1, :cond_a

    goto :goto_3a

    :cond_a
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v2, :cond_39

    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_38

    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {p1, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_35

    goto :goto_38

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_38
    :goto_38
    return v1

    :cond_39
    return v0

    :cond_3a
    :goto_3a
    return v1
.end method

.method public static extractFlagsFromKey(J)I
    .registers 4

    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static extractUidStateFromKey(J)I
    .registers 4

    const/16 v0, 0x1f

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static finishNotedAppOpsCollection()V
    .registers 1

    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    if-eqz p0, :cond_22

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    not-int v2, v1

    and-int/2addr p0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1a

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1a
    invoke-static {v1}, Landroid/app/AppOpsManager;->getFlagName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getClientId()Landroid/os/IBinder;
    .registers 2

    const-class v0, Landroid/app/AppOpsManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    if-nez v1, :cond_e

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    :cond_e
    sget-object v1, Landroid/app/AppOpsManager;->sClientId:Landroid/os/IBinder;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private static getComponentPackageNameFromString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_f
    const-string v1, ""

    :goto_11
    return-object v1
.end method

.method public static final getFlagName(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_1c

    const-string/jumbo v0, "unknown"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "upd"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "tpd"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "up"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "tp"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "s"

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_13
        0x4 -> :sswitch_f
        0x8 -> :sswitch_b
        0x10 -> :sswitch_7
    .end sparse-switch
.end method

.method private static getFormattedStackTrace()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_76

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/app/AppOpsManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$Stub$Proxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/database/DatabaseUtils;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.content.ContentProviderProxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Landroid/content/ContentResolver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    :cond_72
    move v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_76
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_7c
    if-ltz v3, :cond_121

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Handler;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Looper;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/os/Binder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/internal/os/RuntimeInit;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/app/ActivityThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.server.SystemServer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_121

    :cond_11c
    move v2, v3

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_7c

    :cond_121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    :goto_127
    if-gt v4, v2, :cond_171

    sget-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    if-nez v5, :cond_146

    const/4 v5, 0x0

    :try_start_12e
    const-string/jumbo v6, "privacy"

    const-string/jumbo v7, "privacy_attribution_tag_full_log_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sput-object v6, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_13e} :catch_13f

    goto :goto_146

    :catch_13f
    move-exception v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    :cond_146
    :goto_146
    if-eq v4, v1, :cond_14d

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14d
    sget-object v5, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_169

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0x258

    if-le v5, v6, :cond_169

    goto :goto_171

    :cond_169
    aget-object v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_127

    :cond_171
    :goto_171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getLastEvent(Landroid/util/LongSparseArray;III)Landroid/app/AppOpsManager$NoteOpEvent;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/app/AppOpsManager$NoteOpEvent;",
            ">;III)",
            "Landroid/app/AppOpsManager$NoteOpEvent;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    :cond_6
    const/4 v1, 0x0

    move-object v2, v1

    move/from16 v1, p3

    :goto_a
    if-eqz v1, :cond_4c

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v4, v3

    and-int/2addr v1, v4

    sget-object v4, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v5, v4

    const/4 v6, 0x0

    :goto_19
    if-ge v6, v5, :cond_47

    aget v7, v4, v6

    move/from16 v8, p1

    if-lt v7, v8, :cond_42

    move/from16 v9, p2

    if-le v7, v9, :cond_26

    goto :goto_44

    :cond_26
    invoke-static {v7, v3}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v2, :cond_40

    if-eqz v12, :cond_44

    invoke-virtual {v12}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v13

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getNoteTime()J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-lez v13, :cond_44

    :cond_40
    move-object v2, v12

    goto :goto_44

    :cond_42
    move/from16 v9, p2

    :cond_44
    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_47
    move/from16 v8, p1

    move/from16 v9, p2

    goto :goto_a

    :cond_4c
    move/from16 v8, p1

    move/from16 v9, p2

    return-object v2
.end method

.method private getNotedOpCollectionMode(ILjava/lang/String;I)I
    .registers 9

    if-nez p2, :cond_4

    const-string p2, "android"

    :cond_4
    const/16 v0, 0x2710

    const/4 v1, 0x0

    if-le p3, v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsToNote:[B

    aget-byte v2, v0, p3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-nez v2, :cond_23

    :try_start_12
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p3}, Lcom/android/internal/app/IAppOpsService;->shouldCollectNotes(I)Z

    move-result v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_21

    nop

    if-eqz v2, :cond_1e

    aput-byte v4, v0, p3

    goto :goto_23

    :cond_1e
    aput-byte v3, v0, p3

    goto :goto_23

    :catch_21
    move-exception v0

    return v1

    :cond_23
    :goto_23
    aget-byte v0, v0, p3

    if-eq v0, v4, :cond_28

    return v1

    :cond_28
    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2b
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne p1, v1, :cond_3d

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    monitor-exit v0

    return v3

    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_51

    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_4f

    return v4

    :cond_4f
    const/4 v1, 0x3

    return v1

    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public static getNumOps()I
    .registers 1

    const/16 v0, 0x79

    return v0
.end method

.method public static getOpStrs()[Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_13

    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    :cond_13
    sget-object v1, Landroid/app/AppOpsManager;->sService:Lcom/android/internal/app/IAppOpsService;

    monitor-exit v0

    return-object v1

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static getSystemAlertWindowDefault()I
    .registers 5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    const-string v4, "android.software.leanback"

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1d

    const/4 v1, 0x1

    return v1

    :cond_1d
    return v1
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getUidStateName(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_1e

    const-string/jumbo v0, "unknown"

    return-object v0

    :sswitch_7
    const-string v0, "cch"

    return-object v0

    :sswitch_a
    const-string v0, "bg"

    return-object v0

    :sswitch_d
    const-string v0, "fg"

    return-object v0

    :sswitch_10
    const-string v0, "fgsvc"

    return-object v0

    :sswitch_13
    const-string v0, "fgsvcl"

    return-object v0

    :sswitch_16
    const-string/jumbo v0, "top"

    return-object v0

    :sswitch_1a
    const-string/jumbo v0, "pers"

    return-object v0

    :sswitch_data_1e
    .sparse-switch
        0x64 -> :sswitch_1a
        0xc8 -> :sswitch_16
        0x12c -> :sswitch_13
        0x190 -> :sswitch_10
        0x1f4 -> :sswitch_d
        0x258 -> :sswitch_a
        0x2bc -> :sswitch_7
    .end sparse-switch
.end method

.method public static historicalModeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_10

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_6  #0x2
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    return-object v0

    :pswitch_9  #0x1
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    return-object v0

    :pswitch_c  #0x0
    const-string v0, "HISTORICAL_MODE_DISABLED"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_9  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method

.method private static isCollectingStackTraces()Z
    .registers 4

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_21

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Landroid/app/AppOpsManager;->sConfig:Lcom/android/internal/app/MessageSamplingConfig;

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_21

    const/4 v0, 0x0

    return v0

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public static isListeningForOpNoted()Z
    .registers 1

    sget-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v0, :cond_d

    invoke-static {}, Landroid/app/AppOpsManager;->isCollectingStackTraces()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private static isPackagePreInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_c} :catch_12

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    move v0, v4

    :cond_11
    return v0

    :catch_12
    move-exception v1

    return v0
.end method

.method public static keyToString(J)Ljava/lang/String;
    .registers 6

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v0

    invoke-static {p0, p1}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$getHistoricalOps$1(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getHistoricalOps$2(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "historical_ops"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_c
    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;

    invoke-direct {v3, p1, v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_19

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method static synthetic lambda$getHistoricalOpsFromDiskRaw$3(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$getHistoricalOpsFromDiskRaw$4(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "historical_ops"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_c
    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, v0}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;Landroid/app/AppOpsManager$HistoricalOps;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_19

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_19
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method static synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    invoke-virtual {p0}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "privacy_attribution_tag_full_log_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sFullLog:Ljava/lang/Boolean;

    :cond_18
    return-void
.end method

.method static synthetic lambda$setOnOpNotedCallback$5(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method static synthetic lambda$setOnOpNotedCallback$6(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method

.method public static leftCircularDistance(III)I
    .registers 4

    add-int v0, p1, p2

    sub-int/2addr v0, p0

    rem-int/2addr v0, p2

    return v0
.end method

.method private static listForFlagsInStates(Ljava/util/List;III)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;III)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_26

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v3, p1, p2, p3}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(III)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_20

    goto :goto_23

    :cond_20
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_26
    invoke-static {v0}, Landroid/app/AppOpsManager;->deduplicateDiscreteEvents(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public static makeKey(II)J
    .registers 6

    int-to-long v0, p0

    const/16 v2, 0x1f

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static mergeAttributedOpEntries(Ljava/util/List;)Landroid/app/AppOpsManager$AttributedOpEntry;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;)",
            "Landroid/app/AppOpsManager$AttributedOpEntry;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_11

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$AttributedOpEntry;

    return-object v1

    :cond_11
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v4, :cond_98

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$AttributedOpEntry;->collectKeys()Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_31
    if-ge v9, v8, :cond_92

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v12

    invoke-static {v10, v11}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v13

    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastAccessEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v14

    invoke-static {v6, v12, v12, v13}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$mgetLastRejectEvent(Landroid/app/AppOpsManager$AttributedOpEntry;III)Landroid/app/AppOpsManager$NoteOpEvent;

    move-result-object v15

    if-eqz v14, :cond_85

    invoke-virtual {v1, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/app/AppOpsManager$NoteOpEvent;

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->getDuration()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v16, v17, v19

    if-nez v16, :cond_66

    move/from16 v16, v4

    goto :goto_81

    :cond_66
    invoke-static {v2}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v16

    if-nez v16, :cond_7c

    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v16

    if-eqz v16, :cond_7c

    move/from16 v16, v4

    invoke-static {v14}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fgetmProxy(Landroid/app/AppOpsManager$NoteOpEvent;)Landroid/app/AppOpsManager$OpEventProxyInfo;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/app/AppOpsManager$NoteOpEvent;->-$$Nest$fputmProxy(Landroid/app/AppOpsManager$NoteOpEvent;Landroid/app/AppOpsManager$OpEventProxyInfo;)V

    goto :goto_87

    :cond_7c
    move/from16 v16, v4

    goto :goto_87

    :cond_7f
    move/from16 v16, v4

    :goto_81
    invoke-virtual {v1, v10, v11, v14}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_87

    :cond_85
    move/from16 v16, v4

    :goto_87
    if-eqz v15, :cond_8c

    invoke-virtual {v3, v10, v11, v15}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    :cond_8c
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    const/4 v2, 0x0

    goto :goto_31

    :cond_92
    move/from16 v16, v4

    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    goto :goto_20

    :cond_98
    move/from16 v16, v4

    new-instance v2, Landroid/app/AppOpsManager$AttributedOpEntry;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$AttributedOpEntry;

    invoke-static {v5}, Landroid/app/AppOpsManager$AttributedOpEntry;->-$$Nest$fgetmOp(Landroid/app/AppOpsManager$AttributedOpEntry;)I

    move-result v5

    invoke-direct {v2, v5, v4, v1, v3}, Landroid/app/AppOpsManager$AttributedOpEntry;-><init>(IZLandroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    return-object v2
.end method

.method public static modeToName(I)Ljava/lang/String;
    .registers 3

    if-ltz p0, :cond_a

    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object v0, v0, p0

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static opAllowSystemBypassRestriction(I)Landroid/app/AppOpsManager$RestrictionBypass;
    .registers 3

    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Landroid/app/AppOpsManager$RestrictionBypass;

    array-length v1, v0

    if-lt p0, v1, :cond_7

    const/4 v0, 0x0

    return-object v0

    :cond_7
    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opAllowsReset(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x2710

    if-le p0, v1, :cond_6

    return v0

    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v1, v1, p0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static opRestrictsRead(I)Z
    .registers 2

    const/16 v0, 0x2710

    if-le p0, v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictRead:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opToDefaultMode(I)I
    .registers 2

    const/16 v0, 0x2710

    if-le p0, v0, :cond_d

    invoke-static {}, Landroid/app/AppOpsManagerStub;->getInstance()Landroid/app/AppOpsManagerStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManagerStub;->opToDefaultMode(I)I

    move-result v0

    return v0

    :cond_d
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToDefaultMode(Ljava/lang/String;)I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    const-string v0, "NONE"

    return-object v0

    :cond_6
    const/16 v0, 0x2710

    const-string v1, ")"

    if-le p0, v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUIOP("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v2, v0

    if-ge p0, v2, :cond_2c

    aget-object v0, v0, p0

    goto :goto_43

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_43
    return-object v0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2710

    if-le p0, v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p0}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static opToPublicName(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2710

    if-le p0, v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2710

    if-le p0, v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .registers 2

    const/16 v0, 0x2710

    if-le p0, v0, :cond_5

    return p0

    :cond_5
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static parseHistoricalMode(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_26

    :cond_9
    goto :goto_1e

    :sswitch_a
    const-string v0, "HISTORICAL_MODE_ENABLED_PASSIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_1f

    :sswitch_14
    const-string v0, "HISTORICAL_MODE_ENABLED_ACTIVE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1f

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    packed-switch v0, :pswitch_data_30

    return v1

    :pswitch_23  #0x1
    const/4 v0, 0x2

    return v0

    :pswitch_25  #0x0
    return v2

    :sswitch_data_26
    .sparse-switch
        0x93ff10b -> :sswitch_14
        0x34c83da2 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_25  #00000000
        :pswitch_23  #00000001
    .end packed-switch
.end method

.method public static pauseNotedAppOpsCollection()Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;
    .registers 4

    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_22

    sget-object v2, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    new-instance v0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2, v3}, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;-><init>(ILandroid/util/ArrayMap;)V

    return-object v0

    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .registers 3

    sget-object v0, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, -0x1

    :goto_10
    return v1
.end method

.method public static prefixParcelWithAppOpsIfNeeded(Landroid/os/Parcel;)V
    .registers 6

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/16 v1, -0x7f

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_3e

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    invoke-virtual {p0, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3e
    return-void
.end method

.method public static readAndLogNotedAppops(Landroid/os/Parcel;)V
    .registers 19

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_9c

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    const/4 v0, 0x2

    new-array v11, v0, [J

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v0, 0x0

    aput-wide v3, v11, v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v11, v5

    aget-wide v3, v11, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-nez v3, :cond_2b

    aget-wide v3, v11, v5

    cmp-long v3, v3, v6

    if-eqz v3, :cond_95

    :cond_2b
    invoke-static {v11}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v12

    sget-object v13, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_32
    invoke-virtual {v12, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    move v14, v3

    :goto_37
    const/4 v3, -0x1

    if-eq v14, v3, :cond_7c

    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_47

    new-instance v4, Landroid/app/SyncNotedAppOp;

    invoke-direct {v4, v14, v10}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    goto :goto_73

    :cond_47
    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v7

    sget-object v15, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    new-instance v8, Landroid/app/AsyncNotedAppOp;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v3, v8

    move v4, v14

    move-object v6, v10

    move-object v0, v8

    move-wide/from16 v8, v16

    invoke-direct/range {v3 .. v9}, Landroid/app/AsyncNotedAppOp;-><init>(IILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0xa

    if-le v0, v3, :cond_73

    sget-object v0, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_73
    :goto_73
    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v12, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v14, v0

    const/4 v0, 0x0

    goto :goto_37

    :cond_7c
    monitor-exit v13
    :try_end_7d
    .catchall {:try_start_32 .. :try_end_7d} :catchall_99

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    :goto_82
    if-eq v0, v3, :cond_95

    sget-object v4, Landroid/app/AppOpsManager;->sMessageCollector:Landroid/app/AppOpsManager$OnOpNotedCallback;

    new-instance v5, Landroid/app/SyncNotedAppOp;

    invoke-direct {v5, v0, v10}, Landroid/app/SyncNotedAppOp;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/AppOpsManager$OnOpNotedCallback;->onNoted(Landroid/app/SyncNotedAppOp;)V

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v12, v4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    goto :goto_82

    :cond_95
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v13
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v0

    :cond_9c
    return-void
.end method

.method private static readDiscreteAccessArrayFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/content/pm/ParceledListSlice;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    if-nez v0, :cond_c

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method private static readLongSparseLongArrayFromParcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .registers 8

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1e

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/util/LongSparseLongArray;->append(JJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v1
.end method

.method public static resolveFirstUnrestrictedUidState(I)I
    .registers 2

    const/16 v0, 0x1f4

    return v0
.end method

.method public static resolveLastRestrictedUidState(I)I
    .registers 2

    const/16 v0, 0x258

    return v0
.end method

.method public static resolvePackageName(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo v0, "root"

    return-object v0

    :cond_6
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_d

    const-string v0, "com.android.shell"

    return-object v0

    :cond_d
    const/16 v0, 0x3f5

    if-ne p0, v0, :cond_15

    const-string/jumbo v0, "media"

    return-object v0

    :cond_15
    const/16 v0, 0x411

    if-ne p0, v0, :cond_1c

    const-string v0, "audioserver"

    return-object v0

    :cond_1c
    const/16 v0, 0x417

    if-ne p0, v0, :cond_23

    const-string v0, "cameraserver"

    return-object v0

    :cond_23
    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_2c

    if-nez p1, :cond_2c

    const-string v0, "android"

    return-object v0

    :cond_2c
    return-object p1
.end method

.method public static resumeNotedAppOpsCollection(Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;)V
    .registers 3

    if-eqz p0, :cond_18

    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    iget v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_18

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpsNotedInThisBinderTransaction:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Landroid/app/AppOpsManager$PausedNotedAppOpsCollection;->mCollectedNotedAppOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public static startNotedAppOpsCollection(I)V
    .registers 3

    sget-object v0, Landroid/app/AppOpsManager;->sBinderThreadCallingUid:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_12

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .registers 5

    sget-object v0, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_38

    const-string v1, "MIUI:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static sumForFlagsInStates(Landroid/util/LongSparseLongArray;III)J
    .registers 15

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_5
    const-wide/16 v0, 0x0

    :goto_7
    if-eqz p3, :cond_2c

    invoke-static {p3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    not-int v3, v2

    and-int/2addr p3, v3

    sget-object v3, Landroid/app/AppOpsManager;->UID_STATES:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_2b

    aget v6, v3, v5

    if-lt v6, p1, :cond_28

    if-le v6, p2, :cond_1f

    goto :goto_28

    :cond_1f
    invoke-static {v6, v2}, Landroid/app/AppOpsManager;->makeKey(II)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v9

    add-long/2addr v0, v9

    :cond_28
    :goto_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_2b
    goto :goto_7

    :cond_2c
    return-wide v0
.end method

.method public static toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toReceiverId(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo v0, "null"

    return-object v0

    :cond_6
    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-static {v0}, Landroid/app/AppOpsManager;->toReceiverId(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static uidStateToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_1c

    const-string v0, "UNKNOWN"

    return-object v0

    :sswitch_6
    const-string v0, "UID_STATE_CACHED"

    return-object v0

    :sswitch_9
    const-string v0, "UID_STATE_BACKGROUND"

    return-object v0

    :sswitch_c
    const-string v0, "UID_STATE_FOREGROUND"

    return-object v0

    :sswitch_f
    const-string v0, "UID_STATE_FOREGROUND_SERVICE"

    return-object v0

    :sswitch_12
    const-string v0, "UID_STATE_FOREGROUND_SERVICE_LOCATION"

    return-object v0

    :sswitch_15
    const-string v0, "UID_STATE_TOP"

    return-object v0

    :sswitch_18
    const-string v0, "UID_STATE_PERSISTENT"

    return-object v0

    nop

    :sswitch_data_1c
    .sparse-switch
        0x64 -> :sswitch_18
        0xc8 -> :sswitch_15
        0x12c -> :sswitch_12
        0x190 -> :sswitch_f
        0x1f4 -> :sswitch_c
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_6
    .end sparse-switch
.end method

.method private static writeDiscreteAccessArrayToParcel(Ljava/util/List;Landroid/os/Parcel;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$AttributedOpEntry;",
            ">;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :goto_9
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method private static writeLongSparseLongArrayToParcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;)V
    .registers 6

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_1d

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1d
    goto :goto_22

    :cond_1e
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_22
    return-void
.end method


# virtual methods
.method public addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public applyOperation(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IAppOpsService;->applyOperation(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    return-void
.end method

.method public applyOperation(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->applyOperation(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public checkAudioOp(IIILjava/lang/String;)I
    .registers 8

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    return v0

    :cond_a
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    return v0

    :cond_a
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    return v1

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    nop

    return-void

    :cond_a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2d} :catch_2d

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearHistory()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->clearHistory()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->collectRuntimeAppOpAccessMessage()Landroid/app/RuntimeAppOpAccessMessage;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishOp(I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishOp(IILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishOp(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    nop

    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1, p3, p4}, Lcom/android/internal/app/IAppOpsService;->finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public finishProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    invoke-direct {v3, p2, p3, p4, v0}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/app/AppOpsManager;->finishProxyOp(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/AttributionSource;Z)V

    return-void
.end method

.method public getHistoricalOps(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 21
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "executor cannot be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback cannot be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, p0

    :try_start_10
    iget-object v4, v3, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v15

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOps(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_45} :catch_47

    nop

    return-void

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getHistoricalOpsFromDiskRaw(Landroid/app/AppOpsManager$HistoricalOpsRequest;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOpsRequest;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v0, "executor cannot be null"

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback cannot be null"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v3, p0

    :try_start_10
    iget-object v4, v3, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmUid(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v5

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmPackageName(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmAttributionTag(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmOpNames(Landroid/app/AppOpsManager$HistoricalOpsRequest;)Ljava/util/List;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmHistoryFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFilter(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmBeginTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v11

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmEndTimeMillis(Landroid/app/AppOpsManager$HistoricalOpsRequest;)J

    move-result-wide v13

    invoke-static/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOpsRequest;->-$$Nest$fgetmFlags(Landroid/app/AppOpsManager$HistoricalOpsRequest;)I

    move-result v15

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v3, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;

    invoke-direct {v3, v1, v2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object/from16 v16, v0

    invoke-interface/range {v4 .. v16}, Lcom/android/internal/app/IAppOpsService;->getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;IIJJILandroid/os/RemoteCallback;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_45} :catch_47

    nop

    return-void

    :catch_47
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public varargs getOpsForPackage(ILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_15

    array-length v1, p3

    new-array v0, v1, [I

    const/4 v1, 0x0

    :goto_7
    array-length v2, p3

    if-ge v1, v2, :cond_15

    aget-object v2, p3, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    :try_start_15
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_22

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_23

    return-object v2

    :cond_22
    return-object v1

    :catch_23
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackagesForOps([Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_19

    sget-object v3, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_19
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_21

    move-object v3, v2

    goto :goto_25

    :cond_21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_25
    return-object v3
.end method

.method public isOpActive(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->isOperationActive(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOperationActive(IILjava/lang/String;)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->isOperationActive(IILjava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isProxying(ILjava/lang/String;ILjava/lang/String;)Z
    .registers 11

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    move v1, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->isProxying(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public noteOp(I)I
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    invoke-virtual/range {p0 .. p5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    return v0

    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 22

    move-object/from16 v1, p0

    :try_start_2
    invoke-direct/range {p0 .. p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_5c

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    :try_start_b
    invoke-direct {v1, v11, v12, v10}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v13, 0x1

    if-ne v2, v3, :cond_1b

    move v2, v13

    goto :goto_1c

    :cond_1b
    move v2, v4

    :goto_1c
    const/4 v3, 0x3

    if-ne v0, v3, :cond_29

    if-nez p5, :cond_29

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v5
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_25} :catch_5a

    const/4 v2, 0x1

    move v15, v2

    move-object v14, v5

    goto :goto_2c

    :cond_29
    move-object/from16 v14, p5

    move v15, v2

    :goto_2c
    :try_start_2c
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v0, v3, :cond_32

    move v7, v13

    goto :goto_33

    :cond_32
    move v7, v4

    :goto_33
    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v8, v14

    move v9, v15

    invoke-interface/range {v2 .. v9}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_53

    if-ne v0, v13, :cond_4d

    invoke-direct {v1, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_53

    :cond_4d
    const/4 v3, 0x2

    if-ne v0, v3, :cond_53

    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    :cond_53
    :goto_53
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_57} :catch_58

    return v3

    :catch_58
    move-exception v0

    goto :goto_65

    :catch_5a
    move-exception v0

    goto :goto_63

    :catch_5c
    move-exception v0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    :goto_63
    move-object/from16 v14, p5

    :goto_65
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 10

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    return v0

    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or calling package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 10

    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, p3, p2, p4, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p5, v1}, Landroid/app/AppOpsManager;->noteProxyOp(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 12

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 19

    move-object v1, p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    :try_start_5
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextAttributionTag()Ljava/lang/String;

    move-result-object v3
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_11} :catch_72

    move v11, p1

    :try_start_12
    invoke-direct {p0, v0, v3, p1}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-ne v2, v3, :cond_1e

    move v3, v12

    goto :goto_1f

    :cond_1e
    move v3, v4

    :goto_1f
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2c

    if-nez p3, :cond_2c

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v6
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_28} :catch_70

    const/4 v3, 0x1

    move v13, v3

    move-object v3, v6

    goto :goto_2f

    :cond_2c
    move v13, v3

    move-object/from16 v3, p3

    :goto_2f
    :try_start_2f
    iget-object v6, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v0, v5, :cond_35

    move v7, v12

    goto :goto_36

    :cond_35
    move v7, v4

    :goto_36
    move-object v4, v6

    move v5, p1

    move-object/from16 v6, p2

    move-object v8, v3

    move v9, v13

    move/from16 v10, p4

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v5

    if-nez v5, :cond_69

    if-ne v0, v12, :cond_4e

    invoke-direct {p0, v4}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_69

    :cond_4e
    const/4 v5, 0x2

    if-ne v0, v5, :cond_69

    iget-object v5, v1, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_66

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v6

    if-ne v5, v6, :cond_69

    :cond_66
    invoke-static {v4}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    :cond_69
    :goto_69
    invoke-virtual {v4}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v5
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_6d} :catch_6e

    return v5

    :catch_6e
    move-exception v0

    goto :goto_76

    :catch_70
    move-exception v0

    goto :goto_74

    :catch_72
    move-exception v0

    move v11, p1

    :goto_74
    move-object/from16 v3, p3

    :goto_76
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 11

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, p3, p2, p4, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p5, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public offsetHistory(J)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->offsetHistory(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public rebootHistory(J)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IAppOpsService;->rebootHistory(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/os/IBinder;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->registerCallback(Landroid/os/IBinder;)I

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_b

    move v0, v1

    goto :goto_c

    :catch_b
    move-exception v1

    :cond_c
    :goto_c
    return v0
.end method

.method public reloadNonHistoricalState()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->reloadNonHistoricalState()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetAllModes()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_e

    nop

    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetHistoryParameters()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsService;->resetHistoryParameters()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetPackageOpsNoHistory(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->resetPackageOpsNoHistory(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setHistoryParameters(IJI)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setHistoryParameters(IJI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMode(IILjava/lang/String;I)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMode(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNotedAppOpsCollector(Landroid/app/AppOpsManager$AppOpsCollector;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    :try_start_6
    invoke-static {}, Landroid/app/AppOpsManager;->isListeningForOpNoted()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    :cond_f
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p0, v1, p1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    goto :goto_23

    :cond_1c
    sget-object v2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v2, :cond_23

    invoke-virtual {p0, v1, v1}, Landroid/app/AppOpsManager;->setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V

    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setOnOpNotedCallback(Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpNotedCallback;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-nez p1, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v0

    :goto_c
    if-ne v2, v3, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    move v2, v0

    :goto_11
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    sget-object v2, Landroid/app/AppOpsManager;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-nez p2, :cond_3e

    :try_start_19
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v3, :cond_1e

    move v0, v1

    :cond_1e
    const-string v1, "No callback is currently registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_c1

    :try_start_23
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {v3}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_34} :catch_35
    .catchall {:try_start_23 .. :try_end_34} :catchall_c1

    goto :goto_39

    :catch_35
    move-exception v0

    :try_start_36
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_39
    const/4 v0, 0x0

    sput-object v0, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    goto/16 :goto_bc

    :cond_3e
    sget-object v3, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-nez v3, :cond_43

    move v0, v1

    :cond_43
    const-string v1, "Another callback is already registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-static {p2, p1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fputmAsyncExecutor(Landroid/app/AppOpsManager$OnOpNotedCallback;Ljava/util/concurrent/Executor;)V

    sput-object p2, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_c1

    const/4 v0, 0x0

    :try_start_4e
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    invoke-static {v4}, Landroid/app/AppOpsManager$OnOpNotedCallback;->-$$Nest$fgetmAsyncCb(Landroid/app/AppOpsManager$OnOpNotedCallback;)Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->extractAsyncOps(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_6b} :catch_6d
    .catchall {:try_start_4e .. :try_end_6b} :catchall_c1

    move-object v0, v1

    goto :goto_71

    :catch_6d
    move-exception v1

    :try_start_6e
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_71
    sget-object v1, Landroid/app/AppOpsManager;->sOnOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedCallback;

    if-eqz v1, :cond_93

    if-eqz v0, :cond_93

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_7c
    if-ge v4, v3, :cond_93

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AsyncNotedAppOp;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;

    invoke-direct {v7, v1, v5}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda2;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7c

    :cond_93
    monitor-enter p0
    :try_end_94
    .catchall {:try_start_6e .. :try_end_94} :catchall_c1

    :try_start_94
    sget-object v3, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v1, :cond_b6

    const/4 v4, 0x0

    :goto_9d
    if-ge v4, v3, :cond_b6

    sget-object v5, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AsyncNotedAppOp;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OnOpNotedCallback;->getAsyncNotedExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;

    invoke-direct {v7, v1, v5}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda3;-><init>(Landroid/app/AppOpsManager$OnOpNotedCallback;Landroid/app/AsyncNotedAppOp;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9d

    :cond_b6
    sget-object v4, Landroid/app/AppOpsManager;->sUnforwardedOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_bc
    .catchall {:try_start_94 .. :try_end_bc} :catchall_be

    :goto_bc
    :try_start_bc
    monitor-exit v2
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_c1

    return-void

    :catchall_be
    move-exception v3

    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    :try_start_c0
    throw v3

    :catchall_c1
    move-exception v0

    monitor-exit v2
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_c1

    throw v0
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .registers 11

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_f

    nop

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUidMode(III)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUidMode(Ljava/lang/String;II)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    nop

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/AppOpsManager;->setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V

    return-void
.end method

.method public setUserRestriction(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;)V
    .registers 12

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V

    return-void
.end method

.method public setUserRestrictionForUser(IZLandroid/os/IBinder;Landroid/os/PackageTagsList;I)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setUserRestriction(IZLandroid/os/IBinder;ILandroid/os/PackageTagsList;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    nop

    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startOp(I)I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;Z)I
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 10

    invoke-virtual/range {p0 .. p6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    return v0

    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;Z)I
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 16

    iget-object v0, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .registers 18

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Landroid/app/AppOpsManager;->startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(Landroid/os/IBinder;IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)I
    .registers 28

    move-object/from16 v1, p0

    move/from16 v14, p2

    :try_start_4
    invoke-direct {v1, v14}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_6a

    move/from16 v15, p3

    move-object/from16 v13, p4

    :try_start_b
    invoke-direct {v1, v15, v13, v14}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v12, 0x1

    if-ne v2, v3, :cond_1b

    move v2, v12

    goto :goto_1c

    :cond_1b
    move v2, v4

    :goto_1c
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2b

    if-nez p7, :cond_2b

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v5
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_25} :catch_68

    const/4 v2, 0x1

    move/from16 v17, v2

    move-object/from16 v16, v5

    goto :goto_2f

    :cond_2b
    move-object/from16 v16, p7

    move/from16 v17, v2

    :goto_2f
    :try_start_2f
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    if-ne v0, v3, :cond_35

    move v9, v12

    goto :goto_36

    :cond_35
    move v9, v4

    :goto_36
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p5

    move-object/from16 v10, v16

    move/from16 v11, v17

    move v14, v12

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_61

    if-ne v0, v14, :cond_5b

    invoke-direct {v1, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_61

    :cond_5b
    const/4 v3, 0x2

    if-ne v0, v3, :cond_61

    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    :cond_61
    :goto_61
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_65} :catch_66

    return v3

    :catch_66
    move-exception v0

    goto :goto_6f

    :catch_68
    move-exception v0

    goto :goto_6d

    :catch_6a
    move-exception v0

    move/from16 v15, p3

    :goto_6d
    move-object/from16 v16, p7

    :goto_6f
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startProxyOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    new-instance v2, Landroid/content/AttributionSource;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, p2, p3, p4, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v0, v1, v2}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p5, v1}, Landroid/app/AppOpsManager;->startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public startProxyOp(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 10

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    return v0

    :cond_c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " or calling package "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I
    .registers 14

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I

    move-result v0

    return v0
.end method

.method public startProxyOpNoThrow(Landroid/os/IBinder;ILandroid/content/AttributionSource;Ljava/lang/String;ZIII)I
    .registers 27

    move-object/from16 v1, p0

    move/from16 v14, p2

    :try_start_4
    invoke-direct {v1, v14}, Landroid/app/AppOpsManager;->collectNoteOpCallsForValidation(I)V

    nop

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v14}, Landroid/app/AppOpsManager;->getNotedOpCollectionMode(ILjava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/4 v15, 0x1

    if-ne v2, v3, :cond_20

    move v2, v15

    goto :goto_21

    :cond_20
    move v2, v4

    :goto_21
    const/4 v3, 0x3

    if-ne v0, v3, :cond_30

    if-nez p4, :cond_30

    invoke-static {}, Landroid/app/AppOpsManager;->getFormattedStackTrace()Ljava/lang/String;

    move-result-object v5
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2a} :catch_84

    const/4 v2, 0x1

    move/from16 v17, v2

    move-object/from16 v16, v5

    goto :goto_34

    :cond_30
    move-object/from16 v16, p4

    move/from16 v17, v2

    :goto_34
    :try_start_34
    iget-object v2, v1, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    const/4 v6, 0x0

    if-ne v0, v3, :cond_3b

    move v7, v15

    goto :goto_3c

    :cond_3b
    move v7, v4

    :goto_3c
    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-interface/range {v2 .. v13}, Lcom/android/internal/app/IAppOpsService;->startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3

    if-nez v3, :cond_7d

    if-ne v0, v15, :cond_5e

    invoke-direct {v1, v2}, Landroid/app/AppOpsManager;->collectNotedOpForSelf(Landroid/app/SyncNotedAppOp;)V

    goto :goto_7d

    :cond_5e
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7d

    iget-object v3, v1, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v5, -0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7a

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNextUid()I

    move-result v4

    if-ne v3, v4, :cond_7d

    :cond_7a
    invoke-static {v2}, Landroid/app/AppOpsManager;->collectNotedOpSync(Landroid/app/SyncNotedAppOp;)V

    :cond_7d
    :goto_7d
    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v3
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_81} :catch_82

    return v3

    :catch_82
    move-exception v0

    goto :goto_87

    :catch_84
    move-exception v0

    move-object/from16 v16, p4

    :goto_87
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public startProxyOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/content/AttributionSource;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    new-instance v3, Landroid/content/AttributionSource;

    iget-object v4, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v3, p2, p3, p4, v4}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-direct {v1, v2, v3}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p5, v2}, Landroid/app/AppOpsManager;->startProxyOpNoThrow(ILandroid/content/AttributionSource;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    aget v2, p1, v1

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_12
    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    return-void
.end method

.method public startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;

    if-eqz v1, :cond_18

    monitor-exit v0

    return-void

    :cond_18
    new-instance v2, Landroid/app/AppOpsManager$3;

    invoke-direct {v2, p0, p2, p3}, Landroid/app/AppOpsManager$3;-><init>(Landroid/app/AppOpsManager;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    move-object v1, v2

    iget-object v2, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_43

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v2, 0x0

    :goto_28
    array-length v3, p1

    if-ge v2, v3, :cond_36

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_36
    :try_start_36
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3d

    nop

    return-void

    :catch_3d
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 9

    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;

    if-nez v1, :cond_18

    new-instance v2, Landroid/app/AppOpsManager$2;

    invoke-direct {v2, p0, p4}, Landroid/app/AppOpsManager$2;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    move-object v1, v2

    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-wide/32 v2, 0x8d50f1e

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_31

    if-nez v2, :cond_23

    or-int/lit8 p3, p3, 0x2

    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_2b
    .catchall {:try_start_23 .. :try_end_28} :catchall_31

    nop

    :try_start_29
    monitor-exit v0

    return-void

    :catch_2b
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 6

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 5

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;

    if-eqz v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    new-instance v2, Landroid/app/AppOpsManager$5;

    invoke-direct {v2, p0, p2}, Landroid/app/AppOpsManager$5;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpNotedListener;)V

    move-object v1, v2

    iget-object v2, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_28

    :try_start_1b
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingNoted([ILcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_22

    nop

    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    new-instance v1, Landroid/app/AppOpsManager$4;

    invoke-direct {v1, p0, p2}, Landroid/app/AppOpsManager$4;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpStartedListener;)V

    iget-object v2, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_25

    :try_start_18
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingStarted([ILcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1f

    nop

    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public stopWatchingActive(Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mActiveWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsActiveCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    if-eqz v1, :cond_19

    :try_start_d
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    goto :goto_19

    :catch_13
    move-exception v2

    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    if-eqz v1, :cond_19

    :try_start_d
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    goto :goto_19

    :catch_13
    move-exception v2

    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mNotedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsNotedCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    if-eqz v1, :cond_19

    :try_start_d
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    goto :goto_19

    :catch_13
    move-exception v2

    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V
    .registers 6

    iget-object v0, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/app/AppOpsManager;->mStartedWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsStartedCallback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1b

    if-eqz v1, :cond_19

    :try_start_d
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IAppOpsService;->stopWatchingStarted(Lcom/android/internal/app/IAppOpsStartedCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    goto :goto_19

    :catch_13
    move-exception v2

    :try_start_14
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_19
    :goto_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public unsafeCheckOp(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public unsafeCheckOpRawNoThrow(IILjava/lang/String;)I
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/app/IAppOpsService;->checkOperationRaw(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return v0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unsafeCheckOpRawNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method
