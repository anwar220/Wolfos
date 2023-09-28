# classes.dex

.class public abstract Landroid/content/pm/PackageManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManager$PackageInfoQuery;,
        Landroid/content/pm/PackageManager$ApplicationInfoQuery;,
        Landroid/content/pm/PackageManager$OnChecksumsReadyListener;,
        Landroid/content/pm/PackageManager$CertificateInputType;,
        Landroid/content/pm/PackageManager$DexModuleRegisterCallback;,
        Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;,
        Landroid/content/pm/PackageManager$MoveCallback;,
        Landroid/content/pm/PackageManager$DistractionRestriction;,
        Landroid/content/pm/PackageManager$PermissionFlags;,
        Landroid/content/pm/PackageManager$ResolveInfoFlags;,
        Landroid/content/pm/PackageManager$ComponentInfoFlags;,
        Landroid/content/pm/PackageManager$ApplicationInfoFlags;,
        Landroid/content/pm/PackageManager$PackageInfoFlags;,
        Landroid/content/pm/PackageManager$Flags;,
        Landroid/content/pm/PackageManager$SystemAppState;,
        Landroid/content/pm/PackageManager$NotifyReason;,
        Landroid/content/pm/PackageManager$PermissionWhitelistFlags;,
        Landroid/content/pm/PackageManager$DeleteFlags;,
        Landroid/content/pm/PackageManager$UninstallReason;,
        Landroid/content/pm/PackageManager$InstallScenario;,
        Landroid/content/pm/PackageManager$InstallReason;,
        Landroid/content/pm/PackageManager$EnabledFlags;,
        Landroid/content/pm/PackageManager$InstallFlags;,
        Landroid/content/pm/PackageManager$RollbackDataPolicy;,
        Landroid/content/pm/PackageManager$EnabledState;,
        Landroid/content/pm/PackageManager$SignatureResult;,
        Landroid/content/pm/PackageManager$PermissionResult;,
        Landroid/content/pm/PackageManager$ModuleInfoFlags;,
        Landroid/content/pm/PackageManager$InstrumentationInfoFlags;,
        Landroid/content/pm/PackageManager$PermissionGroupInfoFlags;,
        Landroid/content/pm/PackageManager$PermissionInfoFlags;,
        Landroid/content/pm/PackageManager$InstalledModulesFlags;,
        Landroid/content/pm/PackageManager$ResolveInfoFlagsBits;,
        Landroid/content/pm/PackageManager$ComponentInfoFlagsBits;,
        Landroid/content/pm/PackageManager$ApplicationInfoFlagsBits;,
        Landroid/content/pm/PackageManager$PackageInfoFlagsBits;,
        Landroid/content/pm/PackageManager$PropertyLocation;,
        Landroid/content/pm/PackageManager$ComponentType;,
        Landroid/content/pm/PackageManager$OnPermissionsChangedListener;,
        Landroid/content/pm/PackageManager$ComponentEnabledSetting;,
        Landroid/content/pm/PackageManager$Property;,
        Landroid/content/pm/PackageManager$NameNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTION_REQUEST_PERMISSIONS:Ljava/lang/String; = "android.content.pm.action.REQUEST_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REQUEST_PERMISSIONS_FOR_OTHER:Ljava/lang/String; = "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final APPLY_DEFAULT_TO_DEVICE_PROTECTED_STORAGE:Z = true

.field public static final APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

.field public static final APP_ENUMERATION_ENABLED_BY_DEFAULT:Z = true

.field public static final CERT_INPUT_RAW_X509:I = 0x0

.field public static final CERT_INPUT_SHA256:I = 0x1

.field public static final COMPONENT_ENABLED_STATE_DEFAULT:I = 0x0

.field public static final COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static final COMPONENT_ENABLED_STATE_DISABLED_UNTIL_USED:I = 0x4

.field public static final COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static final COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field public static final DELETE_ALL_USERS:I = 0x2

.field public static final DELETE_CHATTY:I = -0x80000000

.field public static final DELETE_DONT_KILL_APP:I = 0x8

.field public static final DELETE_FAILED_ABORTED:I = -0x5

.field public static final DELETE_FAILED_APP_PINNED:I = -0x7

.field public static final DELETE_FAILED_DEVICE_POLICY_MANAGER:I = -0x2

.field public static final DELETE_FAILED_INTERNAL_ERROR:I = -0x1

.field public static final DELETE_FAILED_OWNER_BLOCKED:I = -0x4

.field public static final DELETE_FAILED_USED_SHARED_LIBRARY:I = -0x6

.field public static final DELETE_FAILED_USER_RESTRICTED:I = -0x3

.field public static final DELETE_KEEP_DATA:I = 0x1

.field public static final DELETE_SUCCEEDED:I = 0x1

.field public static final DELETE_SYSTEM_APP:I = 0x4

.field public static final DONT_KILL_APP:I = 0x1

.field public static final ENABLE_SHARED_UID_MIGRATION:Z = true

.field public static final EXTRA_FAILURE_EXISTING_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

.field public static final EXTRA_FAILURE_EXISTING_PERMISSION:Ljava/lang/String; = "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

.field public static final EXTRA_INTENT_FILTER_VERIFICATION_HOSTS:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_INTENT_FILTER_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_INTENT_FILTER_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_INTENT_FILTER_VERIFICATION_URI_SCHEME:Ljava/lang/String; = "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_MOVE_ID:Ljava/lang/String; = "android.content.pm.extra.MOVE_ID"

.field public static final EXTRA_REQUEST_PERMISSIONS_LEGACY_ACCESS_PERMISSION_NAMES:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_LEGACY_ACCESS_PERMISSION_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_REQUEST_PERMISSIONS_NAMES:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_REQUEST_PERMISSIONS_RESULTS:Ljava/lang/String; = "android.content.pm.extra.REQUEST_PERMISSIONS_RESULTS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_VERIFICATION_ID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_ID"

.field public static final EXTRA_VERIFICATION_INSTALLER_PACKAGE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

.field public static final EXTRA_VERIFICATION_INSTALLER_UID:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

.field public static final EXTRA_VERIFICATION_INSTALL_FLAGS:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

.field public static final EXTRA_VERIFICATION_LONG_VERSION_CODE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

.field public static final EXTRA_VERIFICATION_PACKAGE_NAME:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

.field public static final EXTRA_VERIFICATION_RESULT:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_RESULT"

.field public static final EXTRA_VERIFICATION_ROOT_HASH:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_ROOT_HASH"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final EXTRA_VERIFICATION_URI:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_URI"

.field public static final EXTRA_VERIFICATION_VERSION_CODE:Ljava/lang/String; = "android.content.pm.extra.VERIFICATION_VERSION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_ACTIVITIES_ON_SECONDARY_DISPLAYS:Ljava/lang/String; = "android.software.activities_on_secondary_displays"

.field public static final FEATURE_ADOPTABLE_STORAGE:Ljava/lang/String; = "android.software.adoptable_storage"

.field public static final FEATURE_APP_COMPAT_OVERRIDES:Ljava/lang/String; = "android.software.app_compat_overrides"

.field public static final FEATURE_APP_ENUMERATION:Ljava/lang/String; = "android.software.app_enumeration"

.field public static final FEATURE_APP_WIDGETS:Ljava/lang/String; = "android.software.app_widgets"

.field public static final FEATURE_ASSIST_GESTURE:Ljava/lang/String; = "android.hardware.sensor.assist"

.field public static final FEATURE_AUDIO_LOW_LATENCY:Ljava/lang/String; = "android.hardware.audio.low_latency"

.field public static final FEATURE_AUDIO_OUTPUT:Ljava/lang/String; = "android.hardware.audio.output"

.field public static final FEATURE_AUDIO_PRO:Ljava/lang/String; = "android.hardware.audio.pro"

.field public static final FEATURE_AUTOFILL:Ljava/lang/String; = "android.software.autofill"

.field public static final FEATURE_AUTOMOTIVE:Ljava/lang/String; = "android.hardware.type.automotive"

.field public static final FEATURE_BACKUP:Ljava/lang/String; = "android.software.backup"

.field public static final FEATURE_BLUETOOTH:Ljava/lang/String; = "android.hardware.bluetooth"

.field public static final FEATURE_BLUETOOTH_LE:Ljava/lang/String; = "android.hardware.bluetooth_le"

.field public static final FEATURE_BROADCAST_RADIO:Ljava/lang/String; = "android.hardware.broadcastradio"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_CAMERA:Ljava/lang/String; = "android.hardware.camera"

.field public static final FEATURE_CAMERA_ANY:Ljava/lang/String; = "android.hardware.camera.any"

.field public static final FEATURE_CAMERA_AR:Ljava/lang/String; = "android.hardware.camera.ar"

.field public static final FEATURE_CAMERA_AUTOFOCUS:Ljava/lang/String; = "android.hardware.camera.autofocus"

.field public static final FEATURE_CAMERA_CAPABILITY_MANUAL_POST_PROCESSING:Ljava/lang/String; = "android.hardware.camera.capability.manual_post_processing"

.field public static final FEATURE_CAMERA_CAPABILITY_MANUAL_SENSOR:Ljava/lang/String; = "android.hardware.camera.capability.manual_sensor"

.field public static final FEATURE_CAMERA_CAPABILITY_RAW:Ljava/lang/String; = "android.hardware.camera.capability.raw"

.field public static final FEATURE_CAMERA_CONCURRENT:Ljava/lang/String; = "android.hardware.camera.concurrent"

.field public static final FEATURE_CAMERA_EXTERNAL:Ljava/lang/String; = "android.hardware.camera.external"

.field public static final FEATURE_CAMERA_FLASH:Ljava/lang/String; = "android.hardware.camera.flash"

.field public static final FEATURE_CAMERA_FRONT:Ljava/lang/String; = "android.hardware.camera.front"

.field public static final FEATURE_CAMERA_LEVEL_FULL:Ljava/lang/String; = "android.hardware.camera.level.full"

.field public static final FEATURE_CANT_SAVE_STATE:Ljava/lang/String; = "android.software.cant_save_state"

.field public static final FEATURE_CAR_TEMPLATES_HOST:Ljava/lang/String; = "android.software.car.templates_host"

.field public static final FEATURE_COMMUNAL_MODE:Ljava/lang/String; = "android.software.communal_mode"

.field public static final FEATURE_COMPANION_DEVICE_SETUP:Ljava/lang/String; = "android.software.companion_device_setup"

.field public static final FEATURE_CONNECTION_SERVICE:Ljava/lang/String; = "android.software.connectionservice"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_CONSUMER_IR:Ljava/lang/String; = "android.hardware.consumerir"

.field public static final FEATURE_CONTEXT_HUB:Ljava/lang/String; = "android.hardware.context_hub"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_CONTROLS:Ljava/lang/String; = "android.software.controls"

.field public static final FEATURE_CTS:Ljava/lang/String; = "android.software.cts"

.field public static final FEATURE_DEVICE_ADMIN:Ljava/lang/String; = "android.software.device_admin"

.field public static final FEATURE_DEVICE_ID_ATTESTATION:Ljava/lang/String; = "android.software.device_id_attestation"

.field public static final FEATURE_DEVICE_UNIQUE_ATTESTATION:Ljava/lang/String; = "android.hardware.device_unique_attestation"

.field public static final FEATURE_DREAM_OVERLAY:Ljava/lang/String; = "android.software.dream_overlay"

.field public static final FEATURE_EMBEDDED:Ljava/lang/String; = "android.hardware.type.embedded"

.field public static final FEATURE_EROFS:Ljava/lang/String; = "android.software.erofs"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_EROFS_LEGACY:Ljava/lang/String; = "android.software.erofs_legacy"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_ETHERNET:Ljava/lang/String; = "android.hardware.ethernet"

.field public static final FEATURE_EXPANDED_PICTURE_IN_PICTURE:Ljava/lang/String; = "android.software.expanded_picture_in_picture"

.field public static final FEATURE_FACE:Ljava/lang/String; = "android.hardware.biometrics.face"

.field public static final FEATURE_FAKETOUCH:Ljava/lang/String; = "android.hardware.faketouch"

.field public static final FEATURE_FAKETOUCH_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.faketouch.multitouch.distinct"

.field public static final FEATURE_FAKETOUCH_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.faketouch.multitouch.jazzhand"

.field public static final FEATURE_FELICA:Ljava/lang/String; = "android.hardware.felica"

.field public static final FEATURE_FILE_BASED_ENCRYPTION:Ljava/lang/String; = "android.software.file_based_encryption"

.field public static final FEATURE_FINGERPRINT:Ljava/lang/String; = "android.hardware.fingerprint"

.field public static final FEATURE_FREEFORM_WINDOW_MANAGEMENT:Ljava/lang/String; = "android.software.freeform_window_management"

.field public static final FEATURE_GAMEPAD:Ljava/lang/String; = "android.hardware.gamepad"

.field public static final FEATURE_GAME_SERVICE:Ljava/lang/String; = "android.software.game_service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_HARDWARE_KEYSTORE:Ljava/lang/String; = "android.hardware.hardware_keystore"

.field public static final FEATURE_HDMI_CEC:Ljava/lang/String; = "android.hardware.hdmi.cec"

.field public static final FEATURE_HIFI_SENSORS:Ljava/lang/String; = "android.hardware.sensor.hifi_sensors"

.field public static final FEATURE_HOME_SCREEN:Ljava/lang/String; = "android.software.home_screen"

.field public static final FEATURE_IDENTITY_CREDENTIAL_HARDWARE:Ljava/lang/String; = "android.hardware.identity_credential"

.field public static final FEATURE_IDENTITY_CREDENTIAL_HARDWARE_DIRECT_ACCESS:Ljava/lang/String; = "android.hardware.identity_credential_direct_access"

.field public static final FEATURE_INCREMENTAL_DELIVERY:Ljava/lang/String; = "android.software.incremental_delivery"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_INPUT_METHODS:Ljava/lang/String; = "android.software.input_methods"

.field public static final FEATURE_IPSEC_TUNNELS:Ljava/lang/String; = "android.software.ipsec_tunnels"

.field public static final FEATURE_IRIS:Ljava/lang/String; = "android.hardware.biometrics.iris"

.field public static final FEATURE_KEYSTORE_APP_ATTEST_KEY:Ljava/lang/String; = "android.hardware.keystore.app_attest_key"

.field public static final FEATURE_KEYSTORE_LIMITED_USE_KEY:Ljava/lang/String; = "android.hardware.keystore.limited_use_key"

.field public static final FEATURE_KEYSTORE_SINGLE_USE_KEY:Ljava/lang/String; = "android.hardware.keystore.single_use_key"

.field public static final FEATURE_LEANBACK:Ljava/lang/String; = "android.software.leanback"

.field public static final FEATURE_LEANBACK_ONLY:Ljava/lang/String; = "android.software.leanback_only"

.field public static final FEATURE_LIVE_TV:Ljava/lang/String; = "android.software.live_tv"

.field public static final FEATURE_LIVE_WALLPAPER:Ljava/lang/String; = "android.software.live_wallpaper"

.field public static final FEATURE_LOCATION:Ljava/lang/String; = "android.hardware.location"

.field public static final FEATURE_LOCATION_GPS:Ljava/lang/String; = "android.hardware.location.gps"

.field public static final FEATURE_LOCATION_NETWORK:Ljava/lang/String; = "android.hardware.location.network"

.field public static final FEATURE_LOWPAN:Ljava/lang/String; = "android.hardware.lowpan"

.field public static final FEATURE_MANAGED_PROFILES:Ljava/lang/String; = "android.software.managed_users"

.field public static final FEATURE_MANAGED_USERS:Ljava/lang/String; = "android.software.managed_users"

.field public static final FEATURE_MICROPHONE:Ljava/lang/String; = "android.hardware.microphone"

.field public static final FEATURE_MIDI:Ljava/lang/String; = "android.software.midi"

.field public static final FEATURE_NFC:Ljava/lang/String; = "android.hardware.nfc"

.field public static final FEATURE_NFC_ANY:Ljava/lang/String; = "android.hardware.nfc.any"

.field public static final FEATURE_NFC_BEAM:Ljava/lang/String; = "android.sofware.nfc.beam"

.field public static final FEATURE_NFC_HCE:Ljava/lang/String; = "android.hardware.nfc.hce"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_NFC_HOST_CARD_EMULATION:Ljava/lang/String; = "android.hardware.nfc.hce"

.field public static final FEATURE_NFC_HOST_CARD_EMULATION_NFCF:Ljava/lang/String; = "android.hardware.nfc.hcef"

.field public static final FEATURE_NFC_OFF_HOST_CARD_EMULATION_ESE:Ljava/lang/String; = "android.hardware.nfc.ese"

.field public static final FEATURE_NFC_OFF_HOST_CARD_EMULATION_UICC:Ljava/lang/String; = "android.hardware.nfc.uicc"

.field public static final FEATURE_OPENGLES_DEQP_LEVEL:Ljava/lang/String; = "android.software.opengles.deqp.level"

.field public static final FEATURE_OPENGLES_EXTENSION_PACK:Ljava/lang/String; = "android.hardware.opengles.aep"

.field public static final FEATURE_PC:Ljava/lang/String; = "android.hardware.type.pc"

.field public static final FEATURE_PICTURE_IN_PICTURE:Ljava/lang/String; = "android.software.picture_in_picture"

.field public static final FEATURE_PRINTING:Ljava/lang/String; = "android.software.print"

.field public static final FEATURE_RAM_LOW:Ljava/lang/String; = "android.hardware.ram.low"

.field public static final FEATURE_RAM_NORMAL:Ljava/lang/String; = "android.hardware.ram.normal"

.field public static final FEATURE_REBOOT_ESCROW:Ljava/lang/String; = "android.hardware.reboot_escrow"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_SCREEN_LANDSCAPE:Ljava/lang/String; = "android.hardware.screen.landscape"

.field public static final FEATURE_SCREEN_PORTRAIT:Ljava/lang/String; = "android.hardware.screen.portrait"

.field public static final FEATURE_SECURELY_REMOVES_USERS:Ljava/lang/String; = "android.software.securely_removes_users"

.field public static final FEATURE_SECURE_LOCK_SCREEN:Ljava/lang/String; = "android.software.secure_lock_screen"

.field public static final FEATURE_SECURITY_MODEL_COMPATIBLE:Ljava/lang/String; = "android.hardware.security.model.compatible"

.field public static final FEATURE_SENSOR_ACCELEROMETER:Ljava/lang/String; = "android.hardware.sensor.accelerometer"

.field public static final FEATURE_SENSOR_ACCELEROMETER_LIMITED_AXES:Ljava/lang/String; = "android.hardware.sensor.accelerometer_limited_axes"

.field public static final FEATURE_SENSOR_ACCELEROMETER_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.hardware.sensor.accelerometer_limited_axes_uncalibrated"

.field public static final FEATURE_SENSOR_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.hardware.sensor.ambient_temperature"

.field public static final FEATURE_SENSOR_BAROMETER:Ljava/lang/String; = "android.hardware.sensor.barometer"

.field public static final FEATURE_SENSOR_COMPASS:Ljava/lang/String; = "android.hardware.sensor.compass"

.field public static final FEATURE_SENSOR_DYNAMIC_HEAD_TRACKER:Ljava/lang/String; = "android.hardware.sensor.dynamic.head_tracker"

.field public static final FEATURE_SENSOR_GYROSCOPE:Ljava/lang/String; = "android.hardware.sensor.gyroscope"

.field public static final FEATURE_SENSOR_GYROSCOPE_LIMITED_AXES:Ljava/lang/String; = "android.hardware.sensor.gyroscope_limited_axes"

.field public static final FEATURE_SENSOR_GYROSCOPE_LIMITED_AXES_UNCALIBRATED:Ljava/lang/String; = "android.hardware.sensor.gyroscope_limited_axes_uncalibrated"

.field public static final FEATURE_SENSOR_HEADING:Ljava/lang/String; = "android.hardware.sensor.heading"

.field public static final FEATURE_SENSOR_HEART_RATE:Ljava/lang/String; = "android.hardware.sensor.heartrate"

.field public static final FEATURE_SENSOR_HEART_RATE_ECG:Ljava/lang/String; = "android.hardware.sensor.heartrate.ecg"

.field public static final FEATURE_SENSOR_HINGE_ANGLE:Ljava/lang/String; = "android.hardware.sensor.hinge_angle"

.field public static final FEATURE_SENSOR_LIGHT:Ljava/lang/String; = "android.hardware.sensor.light"

.field public static final FEATURE_SENSOR_PROXIMITY:Ljava/lang/String; = "android.hardware.sensor.proximity"

.field public static final FEATURE_SENSOR_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.hardware.sensor.relative_humidity"

.field public static final FEATURE_SENSOR_STEP_COUNTER:Ljava/lang/String; = "android.hardware.sensor.stepcounter"

.field public static final FEATURE_SENSOR_STEP_DETECTOR:Ljava/lang/String; = "android.hardware.sensor.stepdetector"

.field public static final FEATURE_SE_OMAPI_ESE:Ljava/lang/String; = "android.hardware.se.omapi.ese"

.field public static final FEATURE_SE_OMAPI_SD:Ljava/lang/String; = "android.hardware.se.omapi.sd"

.field public static final FEATURE_SE_OMAPI_UICC:Ljava/lang/String; = "android.hardware.se.omapi.uicc"

.field public static final FEATURE_SIP:Ljava/lang/String; = "android.software.sip"

.field public static final FEATURE_SIP_VOIP:Ljava/lang/String; = "android.software.sip.voip"

.field public static final FEATURE_SLICES_DISABLED:Ljava/lang/String; = "android.software.slices_disabled"

.field public static final FEATURE_STRONGBOX_KEYSTORE:Ljava/lang/String; = "android.hardware.strongbox_keystore"

.field public static final FEATURE_TELECOM:Ljava/lang/String; = "android.software.telecom"

.field public static final FEATURE_TELEPHONY:Ljava/lang/String; = "android.hardware.telephony"

.field public static final FEATURE_TELEPHONY_CALLING:Ljava/lang/String; = "android.hardware.telephony.calling"

.field public static final FEATURE_TELEPHONY_CARRIERLOCK:Ljava/lang/String; = "android.hardware.telephony.carrierlock"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_TELEPHONY_CDMA:Ljava/lang/String; = "android.hardware.telephony.cdma"

.field public static final FEATURE_TELEPHONY_DATA:Ljava/lang/String; = "android.hardware.telephony.data"

.field public static final FEATURE_TELEPHONY_EUICC:Ljava/lang/String; = "android.hardware.telephony.euicc"

.field public static final FEATURE_TELEPHONY_EUICC_MEP:Ljava/lang/String; = "android.hardware.telephony.euicc.mep"

.field public static final FEATURE_TELEPHONY_GSM:Ljava/lang/String; = "android.hardware.telephony.gsm"

.field public static final FEATURE_TELEPHONY_IMS:Ljava/lang/String; = "android.hardware.telephony.ims"

.field public static final FEATURE_TELEPHONY_IMS_SINGLE_REGISTRATION:Ljava/lang/String; = "android.hardware.telephony.ims.singlereg"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FEATURE_TELEPHONY_MBMS:Ljava/lang/String; = "android.hardware.telephony.mbms"

.field public static final FEATURE_TELEPHONY_MESSAGING:Ljava/lang/String; = "android.hardware.telephony.messaging"

.field public static final FEATURE_TELEPHONY_RADIO_ACCESS:Ljava/lang/String; = "android.hardware.telephony.radio.access"

.field public static final FEATURE_TELEPHONY_SUBSCRIPTION:Ljava/lang/String; = "android.hardware.telephony.subscription"

.field public static final FEATURE_TELEVISION:Ljava/lang/String; = "android.hardware.type.television"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_TOUCHSCREEN:Ljava/lang/String; = "android.hardware.touchscreen"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH:Ljava/lang/String; = "android.hardware.touchscreen.multitouch"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.distinct"

.field public static final FEATURE_TOUCHSCREEN_MULTITOUCH_JAZZHAND:Ljava/lang/String; = "android.hardware.touchscreen.multitouch.jazzhand"

.field public static final FEATURE_TUNER:Ljava/lang/String; = "android.hardware.tv.tuner"

.field public static final FEATURE_USB_ACCESSORY:Ljava/lang/String; = "android.hardware.usb.accessory"

.field public static final FEATURE_USB_HOST:Ljava/lang/String; = "android.hardware.usb.host"

.field public static final FEATURE_UWB:Ljava/lang/String; = "android.hardware.uwb"

.field public static final FEATURE_VERIFIED_BOOT:Ljava/lang/String; = "android.software.verified_boot"

.field public static final FEATURE_VOICE_RECOGNIZERS:Ljava/lang/String; = "android.software.voice_recognizers"

.field public static final FEATURE_VR_HEADTRACKING:Ljava/lang/String; = "android.hardware.vr.headtracking"

.field public static final FEATURE_VR_MODE:Ljava/lang/String; = "android.software.vr.mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_VR_MODE_HIGH_PERFORMANCE:Ljava/lang/String; = "android.hardware.vr.high_performance"

.field public static final FEATURE_VULKAN_DEQP_LEVEL:Ljava/lang/String; = "android.software.vulkan.deqp.level"

.field public static final FEATURE_VULKAN_HARDWARE_COMPUTE:Ljava/lang/String; = "android.hardware.vulkan.compute"

.field public static final FEATURE_VULKAN_HARDWARE_LEVEL:Ljava/lang/String; = "android.hardware.vulkan.level"

.field public static final FEATURE_VULKAN_HARDWARE_VERSION:Ljava/lang/String; = "android.hardware.vulkan.version"

.field public static final FEATURE_WATCH:Ljava/lang/String; = "android.hardware.type.watch"

.field public static final FEATURE_WEBVIEW:Ljava/lang/String; = "android.software.webview"

.field public static final FEATURE_WIFI:Ljava/lang/String; = "android.hardware.wifi"

.field public static final FEATURE_WIFI_AWARE:Ljava/lang/String; = "android.hardware.wifi.aware"

.field public static final FEATURE_WIFI_DIRECT:Ljava/lang/String; = "android.hardware.wifi.direct"

.field public static final FEATURE_WIFI_PASSPOINT:Ljava/lang/String; = "android.hardware.wifi.passpoint"

.field public static final FEATURE_WIFI_RTT:Ljava/lang/String; = "android.hardware.wifi.rtt"

.field public static final FEATURE_WINDOW_MAGNIFICATION:Ljava/lang/String; = "android.software.window_magnification"

.field public static final FILTER_APPLICATION_QUERY:J = 0x81452ebL

.field public static final FLAGS_PERMISSION_RESERVED_PERMISSION_CONTROLLER:I = -0x10000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT:I = 0x3800

.field public static final FLAG_PERMISSION_APPLY_RESTRICTION:I = 0x4000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_AUTO_REVOKED:I = 0x20000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_GRANTED_BY_DEFAULT:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_GRANTED_BY_ROLE:I = 0x8000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_ONE_TIME:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_POLICY_FIXED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_RESTRICTION_INSTALLER_EXEMPT:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_RESTRICTION_SYSTEM_EXEMPT:I = 0x1000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_RESTRICTION_UPGRADE_EXEMPT:I = 0x2000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_REVIEW_REQUIRED:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_REVOKED_COMPAT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_REVOKE_ON_UPGRADE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_REVOKE_WHEN_REQUESTED:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_SELECTED_LOCATION_ACCURACY:I = 0x80000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_SYSTEM_FIXED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_USER_FIXED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_USER_SENSITIVE_WHEN_DENIED:I = 0x200
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_USER_SENSITIVE_WHEN_GRANTED:I = 0x100
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_USER_SET:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_PERMISSION_WHITELIST_INSTALLER:I = 0x2

.field public static final FLAG_PERMISSION_WHITELIST_SYSTEM:I = 0x1

.field public static final FLAG_PERMISSION_WHITELIST_UPGRADE:I = 0x4

.field public static final GET_ACTIVITIES:I = 0x1

.field public static final GET_ATTRIBUTIONS:I = -0x80000000

.field public static final GET_CONFIGURATIONS:I = 0x4000

.field public static final GET_DISABLED_COMPONENTS:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GET_DISABLED_UNTIL_USED_COMPONENTS:I = 0x8000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GET_GIDS:I = 0x100

.field public static final GET_INSTRUMENTATION:I = 0x10

.field public static final GET_INTENT_FILTERS:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GET_META_DATA:I = 0x80

.field public static final GET_PERMISSIONS:I = 0x1000

.field public static final GET_PROVIDERS:I = 0x8

.field public static final GET_RECEIVERS:I = 0x2

.field public static final GET_RESOLVED_FILTER:I = 0x40

.field public static final GET_SERVICES:I = 0x4

.field public static final GET_SHARED_LIBRARY_FILES:I = 0x400

.field public static final GET_SIGNATURES:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GET_SIGNING_CERTIFICATES:I = 0x8000000

.field public static final GET_UNINSTALLED_PACKAGES:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GET_URI_PERMISSION_PATTERNS:I = 0x800

.field public static final INSTALL_ACTIVATION_FAILED:I = -0x80

.field public static final INSTALL_ALLOCATE_AGGRESSIVE:I = 0x8000

.field public static final INSTALL_ALLOW_DOWNGRADE:I = 0x100000

.field public static final INSTALL_ALLOW_TEST:I = 0x4

.field public static final INSTALL_ALL_USERS:I = 0x40

.field public static final INSTALL_ALL_WHITELIST_RESTRICTED_PERMISSIONS:I = 0x400000

.field public static final INSTALL_APEX:I = 0x20000

.field public static final INSTALL_DISABLE_ALLOWED_APEX_UPDATE_CHECK:I = 0x400000

.field public static final INSTALL_DISABLE_VERIFICATION:I = 0x80000

.field public static final INSTALL_DONT_KILL_APP:I = 0x1000

.field public static final INSTALL_ENABLE_ROLLBACK:I = 0x40000

.field public static final INSTALL_FAILED_ABORTED:I = -0x73

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_BAD_DEX_METADATA:I = -0x75

.field public static final INSTALL_FAILED_BAD_PERMISSION_GROUP:I = -0x7f

.field public static final INSTALL_FAILED_BAD_SIGNATURE:I = -0x76

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_DUPLICATE_PERMISSION:I = -0x70

.field public static final INSTALL_FAILED_DUPLICATE_PERMISSION_GROUP:I = -0x7e

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_MISSING_SPLIT:I = -0x1c

.field public static final INSTALL_FAILED_MULTIPACKAGE_INCONSISTENCY:I = -0x78

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_NO_MATCHING_ABIS:I = -0x71

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_OTHER_STAGED_SESSION_IN_PROGRESS:I = -0x77

.field public static final INSTALL_FAILED_PACKAGE_CHANGED:I = -0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_PERMISSION_MODEL_DOWNGRADE:I = -0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_PROCESS_NOT_DEFINED:I = -0x7a

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_SANDBOX_VERSION_DOWNGRADE:I = -0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_SESSION_INVALID:I = -0x74

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_UID_CHANGED:I = -0x18

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_USER_RESTRICTED:I = -0x6f

.field public static final INSTALL_FAILED_VERIFICATION_FAILURE:I = -0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_VERIFICATION_TIMEOUT:I = -0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_FAILED_VERSION_DOWNGRADE:I = -0x19

.field public static final INSTALL_FAILED_WRONG_INSTALLED_VERSION:I = -0x79

.field public static final INSTALL_FORCE_PERMISSION_PROMPT:I = 0x400

.field public static final INSTALL_FORCE_VOLUME_UUID:I = 0x200

.field public static final INSTALL_FROM_ADB:I = 0x20

.field public static final INSTALL_FULL_APP:I = 0x4000

.field public static final INSTALL_GRANT_RUNTIME_PERMISSIONS:I = 0x100

.field public static final INSTALL_INSTANT_APP:I = 0x800

.field public static final INSTALL_INTERNAL:I = 0x10

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_PARSE_FAILED_ONLY_COREAPP_ALLOWED:I = -0x7b

.field public static final INSTALL_PARSE_FAILED_RESOURCES_ARSC_COMPRESSED:I = -0x7c

.field public static final INSTALL_PARSE_FAILED_SKIPPED:I = -0x7d

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_REASON_DEVICE_RESTORE:I = 0x2

.field public static final INSTALL_REASON_DEVICE_SETUP:I = 0x3

.field public static final INSTALL_REASON_POLICY:I = 0x1

.field public static final INSTALL_REASON_ROLLBACK:I = 0x5

.field public static final INSTALL_REASON_UNKNOWN:I = 0x0

.field public static final INSTALL_REASON_USER:I = 0x4

.field public static final INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final INSTALL_REQUEST_DOWNGRADE:I = 0x80

.field public static final INSTALL_SCENARIO_BULK:I = 0x2

.field public static final INSTALL_SCENARIO_BULK_SECONDARY:I = 0x3

.field public static final INSTALL_SCENARIO_DEFAULT:I = 0x0

.field public static final INSTALL_SCENARIO_FAST:I = 0x1

.field public static final INSTALL_STAGED:I = 0x200000

.field public static final INSTALL_SUCCEEDED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTALL_UNKNOWN:I = 0x0

.field public static final INSTALL_VIRTUAL_PRELOAD:I = 0x10000

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ALWAYS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ALWAYS_ASK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_ASK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_NEVER:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_FILTER_DOMAIN_VERIFICATION_STATUS_UNDEFINED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_FILTER_VERIFICATION_FAILURE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_FILTER_VERIFICATION_SUCCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASK_PERMISSION_FLAGS:I = 0xff
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASK_PERMISSION_FLAGS_ALL:I = 0x3fbff

.field public static final MATCH_ALL:I = 0x20000

.field public static final MATCH_ANY_USER:I = 0x400000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MATCH_APEX:I = 0x40000000

.field public static final MATCH_DEBUG_TRIAGED_MISSING:I = 0x10000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_DEFAULT_ONLY:I = 0x10000

.field public static final MATCH_DIRECT_BOOT_AUTO:I = 0x10000000

.field public static final MATCH_DIRECT_BOOT_AWARE:I = 0x80000

.field public static final MATCH_DIRECT_BOOT_UNAWARE:I = 0x40000

.field public static final MATCH_DISABLED_COMPONENTS:I = 0x200

.field public static final MATCH_DISABLED_UNTIL_USED_COMPONENTS:I = 0x8000

.field public static final MATCH_EXPLICITLY_VISIBLE_ONLY:I = 0x2000000

.field public static final MATCH_FACTORY_ONLY:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MATCH_HIDDEN_UNTIL_INSTALLED_COMPONENTS:I = 0x20000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MATCH_INSTANT:I = 0x800000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MATCH_KNOWN_PACKAGES:I = 0x402000

.field public static final MATCH_STATIC_SHARED_AND_SDK_LIBRARIES:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final MATCH_SYSTEM_ONLY:I = 0x100000

.field public static final MATCH_UNINSTALLED_PACKAGES:I = 0x2000

.field public static final MATCH_VISIBLE_TO_INSTANT_APP_ONLY:I = 0x1000000

.field public static final MAXIMUM_VERIFICATION_TIMEOUT:J = 0x36ee80L

.field public static final MODULE_APEX_NAME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MOVE_EXTERNAL_MEDIA:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOVE_FAILED_3RD_PARTY_NOT_ALLOWED_ON_INTERNAL:I = -0x9

.field public static final MOVE_FAILED_DEVICE_ADMIN:I = -0x8

.field public static final MOVE_FAILED_DOESNT_EXIST:I = -0x2

.field public static final MOVE_FAILED_INSUFFICIENT_STORAGE:I = -0x1

.field public static final MOVE_FAILED_INTERNAL_ERROR:I = -0x6

.field public static final MOVE_FAILED_INVALID_LOCATION:I = -0x5

.field public static final MOVE_FAILED_LOCKED_USER:I = -0xa

.field public static final MOVE_FAILED_OPERATION_PENDING:I = -0x7

.field public static final MOVE_FAILED_SYSTEM_PACKAGE:I = -0x3

.field public static final MOVE_INTERNAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOVE_SUCCEEDED:I = -0x64

.field public static final NOTIFY_PACKAGE_USE_ACTIVITY:I = 0x0

.field public static final NOTIFY_PACKAGE_USE_BACKUP:I = 0x5

.field public static final NOTIFY_PACKAGE_USE_BROADCAST_RECEIVER:I = 0x3

.field public static final NOTIFY_PACKAGE_USE_CONTENT_PROVIDER:I = 0x4

.field public static final NOTIFY_PACKAGE_USE_CROSS_PACKAGE:I = 0x6

.field public static final NOTIFY_PACKAGE_USE_FOREGROUND_SERVICE:I = 0x2

.field public static final NOTIFY_PACKAGE_USE_INSTRUMENTATION:I = 0x7

.field public static final NOTIFY_PACKAGE_USE_REASONS_COUNT:I = 0x8

.field public static final NOTIFY_PACKAGE_USE_SERVICE:I = 0x1

.field public static final NO_NATIVE_LIBRARIES:I = -0x72

.field public static final ONLY_IF_NO_MATCH_FOUND:I = 0x4

.field public static final PERMISSION_DENIED:I = -0x1

.field public static final PERMISSION_GRANTED:I = 0x0

.field public static final PROPERTY_ALLOW_ADB_BACKUP:Ljava/lang/String; = "android.backup.ALLOW_ADB_BACKUP"

.field public static final PROPERTY_MEDIA_CAPABILITIES:Ljava/lang/String; = "android.media.PROPERTY_MEDIA_CAPABILITIES"

.field public static final PROPERTY_NO_APP_DATA_STORAGE:Ljava/lang/String; = "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

.field public static final RESTRICTION_HIDE_FROM_SUGGESTIONS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESTRICTION_HIDE_NOTIFICATIONS:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESTRICTION_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ROLLBACK_DATA_POLICY_RESTORE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ROLLBACK_DATA_POLICY_RETAIN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ROLLBACK_DATA_POLICY_WIPE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIGNATURE_FIRST_NOT_SIGNED:I = -0x1

.field public static final SIGNATURE_MATCH:I = 0x0

.field public static final SIGNATURE_NEITHER_SIGNED:I = 0x1

.field public static final SIGNATURE_NO_MATCH:I = -0x3

.field public static final SIGNATURE_SECOND_NOT_SIGNED:I = -0x2

.field public static final SIGNATURE_UNKNOWN_PACKAGE:I = -0x4

.field public static final SKIP_CURRENT_PROFILE:I = 0x2

.field public static final SYNCHRONOUS:I = 0x2

.field public static final SYSTEM_APP_STATE_HIDDEN_UNTIL_INSTALLED_HIDDEN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SYSTEM_APP_STATE_HIDDEN_UNTIL_INSTALLED_VISIBLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SYSTEM_APP_STATE_INSTALLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SYSTEM_APP_STATE_UNINSTALLED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SYSTEM_SHARED_LIBRARY_SERVICES:Ljava/lang/String; = "android.ext.services"

.field public static final SYSTEM_SHARED_LIBRARY_SHARED:Ljava/lang/String; = "android.ext.shared"

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field public static final TRUST_ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRUST_NONE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ACTIVITY:I = 0x1

.field public static final TYPE_APPLICATION:I = 0x5

.field public static final TYPE_PROVIDER:I = 0x4

.field public static final TYPE_RECEIVER:I = 0x2

.field public static final TYPE_SERVICE:I = 0x3

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final UNINSTALL_REASON_UNKNOWN:I = 0x0

.field public static final UNINSTALL_REASON_USER_TYPE:I = 0x1

.field public static final VERIFICATION_ALLOW:I = 0x1

.field public static final VERIFICATION_ALLOW_WITHOUT_SUFFICIENT:I = 0x2

.field public static final VERIFICATION_REJECT:I = -0x1

.field public static final VERSION_CODE_HIGHEST:I = -0x1

.field private static final sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/content/pm/PackageManager$ApplicationInfoQuery;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCacheAutoCorker:Landroid/app/PropertyInvalidatedCache$AutoCorker;

.field private static final sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/content/pm/PackageManager$PackageInfoQuery;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smgetApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    const-class v0, Landroid/app/AppDetailsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/content/pm/PackageManager;->TRUST_ALL:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageManager;->TRUST_NONE:Ljava/util/List;

    new-instance v0, Landroid/content/pm/PackageManager$1;

    const/16 v1, 0x10

    const-string v2, "cache_key.package_info"

    const-string v3, "getApplicationInfo"

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageManager$1;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v0, Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-direct {v0, v2}, Landroid/app/PropertyInvalidatedCache$AutoCorker;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sCacheAutoCorker:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    new-instance v0, Landroid/content/pm/PackageManager$2;

    const/16 v1, 0x20

    const-string v3, "getPackageInfo"

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageManager$2;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static corkPackageInfoCache()V
    .registers 1

    const-string v0, "cache_key.package_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->corkInvalidations(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteStatusToPublicStatus(I)I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_12

    :pswitch_5  #0x0
    return v0

    :pswitch_6  #0x1
    const/4 v0, 0x0

    return v0

    :pswitch_8  #0xffffffff
    return v0

    :pswitch_9  #0xfffffffe
    return v1

    :pswitch_a  #0xfffffffd
    return v1

    :pswitch_b  #0xfffffffc
    return v1

    :pswitch_c  #0xfffffffb
    const/4 v0, 0x3

    return v0

    :pswitch_e  #0xfffffffa
    const/4 v0, 0x5

    return v0

    :pswitch_10  #0xfffffff9
    return v1

    nop

    :pswitch_data_12
    .packed-switch -0x7
        :pswitch_10  #fffffff9
        :pswitch_e  #fffffffa
        :pswitch_c  #fffffffb
        :pswitch_b  #fffffffc
        :pswitch_a  #fffffffd
        :pswitch_9  #fffffffe
        :pswitch_8  #ffffffff
        :pswitch_5  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public static deleteStatusToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_20

    :pswitch_3  #0x0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x1
    const-string v0, "DELETE_SUCCEEDED"

    return-object v0

    :pswitch_b  #0xffffffff
    const-string v0, "DELETE_FAILED_INTERNAL_ERROR"

    return-object v0

    :pswitch_e  #0xfffffffe
    const-string v0, "DELETE_FAILED_DEVICE_POLICY_MANAGER"

    return-object v0

    :pswitch_11  #0xfffffffd
    const-string v0, "DELETE_FAILED_USER_RESTRICTED"

    return-object v0

    :pswitch_14  #0xfffffffc
    const-string v0, "DELETE_FAILED_OWNER_BLOCKED"

    return-object v0

    :pswitch_17  #0xfffffffb
    const-string v0, "DELETE_FAILED_ABORTED"

    return-object v0

    :pswitch_1a  #0xfffffffa
    const-string v0, "DELETE_FAILED_USED_SHARED_LIBRARY"

    return-object v0

    :pswitch_1d  #0xfffffff9
    const-string v0, "DELETE_FAILED_APP_PINNED"

    return-object v0

    :pswitch_data_20
    .packed-switch -0x7
        :pswitch_1d  #fffffff9
        :pswitch_1a  #fffffffa
        :pswitch_17  #fffffffb
        :pswitch_14  #fffffffc
        :pswitch_11  #fffffffd
        :pswitch_e  #fffffffe
        :pswitch_b  #ffffffff
        :pswitch_3  #00000000
        :pswitch_8  #00000001
    .end packed-switch
.end method

.method public static deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/content/pm/PackageManager;->deleteStatusToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1e
    return-object v0
.end method

.method public static disableApplicationInfoCache()V
    .registers 1

    sget-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public static disablePackageInfoCache()V
    .registers 1

    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public static getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 6

    sget-object v0, Landroid/content/pm/PackageManager;->sApplicationInfoCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/content/pm/PackageManager$ApplicationInfoQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/pm/PackageManager$ApplicationInfoQuery;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private static getApplicationInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static getPackageInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 6

    sget-object v0, Landroid/content/pm/PackageManager;->sPackageInfoCache:Landroid/app/PropertyInvalidatedCache;

    new-instance v1, Landroid/content/pm/PackageManager$PackageInfoQuery;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/pm/PackageManager$PackageInfoQuery;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v0, v1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private static getPackageInfoAsUserUncached(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static installStatusToPublicStatus(I)I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x4

    sparse-switch p0, :sswitch_data_38

    return v0

    :sswitch_a
    const/4 v0, 0x0

    return v0

    :sswitch_c
    return v3

    :sswitch_d
    return v5

    :sswitch_e
    return v5

    :sswitch_f
    return v2

    :sswitch_10
    return v3

    :sswitch_11
    return v3

    :sswitch_12
    return v3

    :sswitch_13
    return v3

    :sswitch_14
    return v4

    :sswitch_15
    return v3

    :sswitch_16
    return v5

    :sswitch_17
    return v4

    :sswitch_18
    return v3

    :sswitch_19
    return v4

    :sswitch_1a
    return v5

    :sswitch_1b
    return v4

    :sswitch_1c
    return v4

    :sswitch_1d
    return v2

    :sswitch_1e
    return v2

    :sswitch_1f
    return v2

    :sswitch_20
    return v1

    :sswitch_21
    return v1

    :sswitch_22
    return v5

    :sswitch_23
    return v5

    :sswitch_24
    return v5

    :sswitch_25
    return v5

    :sswitch_26
    return v4

    :sswitch_27
    return v5

    :sswitch_28
    return v5

    :sswitch_29
    return v5

    :sswitch_2a
    return v5

    :sswitch_2b
    return v5

    :sswitch_2c
    return v5

    :sswitch_2d
    return v5

    :sswitch_2e
    return v5

    :sswitch_2f
    return v5

    :sswitch_30
    return v5

    :sswitch_31
    return v0

    :sswitch_32
    return v4

    :sswitch_33
    return v3

    :sswitch_34
    return v4

    :sswitch_35
    return v1

    :sswitch_36
    return v5

    :sswitch_37
    return v5

    :sswitch_data_38
    .sparse-switch
        -0x76 -> :sswitch_37
        -0x75 -> :sswitch_36
        -0x73 -> :sswitch_35
        -0x71 -> :sswitch_34
        -0x70 -> :sswitch_33
        -0x6f -> :sswitch_32
        -0x6e -> :sswitch_31
        -0x6d -> :sswitch_30
        -0x6c -> :sswitch_2f
        -0x6b -> :sswitch_2e
        -0x6a -> :sswitch_2d
        -0x69 -> :sswitch_2c
        -0x68 -> :sswitch_2b
        -0x67 -> :sswitch_2a
        -0x66 -> :sswitch_29
        -0x65 -> :sswitch_28
        -0x64 -> :sswitch_27
        -0x1c -> :sswitch_26
        -0x1a -> :sswitch_25
        -0x19 -> :sswitch_24
        -0x18 -> :sswitch_23
        -0x17 -> :sswitch_22
        -0x16 -> :sswitch_21
        -0x15 -> :sswitch_20
        -0x14 -> :sswitch_1f
        -0x13 -> :sswitch_1e
        -0x12 -> :sswitch_1d
        -0x11 -> :sswitch_1c
        -0x10 -> :sswitch_1b
        -0xf -> :sswitch_1a
        -0xe -> :sswitch_19
        -0xd -> :sswitch_18
        -0xc -> :sswitch_17
        -0xb -> :sswitch_16
        -0xa -> :sswitch_15
        -0x9 -> :sswitch_14
        -0x8 -> :sswitch_13
        -0x7 -> :sswitch_12
        -0x6 -> :sswitch_11
        -0x5 -> :sswitch_10
        -0x4 -> :sswitch_f
        -0x3 -> :sswitch_e
        -0x2 -> :sswitch_d
        -0x1 -> :sswitch_c
        0x1 -> :sswitch_a
    .end sparse-switch
.end method

.method public static installStatusToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_96

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string v0, "INSTALL_SUCCEEDED"

    return-object v0

    :sswitch_b
    const-string v0, "INSTALL_FAILED_ALREADY_EXISTS"

    return-object v0

    :sswitch_e
    const-string v0, "INSTALL_FAILED_INVALID_APK"

    return-object v0

    :sswitch_11
    const-string v0, "INSTALL_FAILED_INVALID_URI"

    return-object v0

    :sswitch_14
    const-string v0, "INSTALL_FAILED_INSUFFICIENT_STORAGE"

    return-object v0

    :sswitch_17
    const-string v0, "INSTALL_FAILED_DUPLICATE_PACKAGE"

    return-object v0

    :sswitch_1a
    const-string v0, "INSTALL_FAILED_NO_SHARED_USER"

    return-object v0

    :sswitch_1d
    const-string v0, "INSTALL_FAILED_UPDATE_INCOMPATIBLE"

    return-object v0

    :sswitch_20
    const-string v0, "INSTALL_FAILED_SHARED_USER_INCOMPATIBLE"

    return-object v0

    :sswitch_23
    const-string v0, "INSTALL_FAILED_MISSING_SHARED_LIBRARY"

    return-object v0

    :sswitch_26
    const-string v0, "INSTALL_FAILED_REPLACE_COULDNT_DELETE"

    return-object v0

    :sswitch_29
    const-string v0, "INSTALL_FAILED_DEXOPT"

    return-object v0

    :sswitch_2c
    const-string v0, "INSTALL_FAILED_OLDER_SDK"

    return-object v0

    :sswitch_2f
    const-string v0, "INSTALL_FAILED_CONFLICTING_PROVIDER"

    return-object v0

    :sswitch_32
    const-string v0, "INSTALL_FAILED_NEWER_SDK"

    return-object v0

    :sswitch_35
    const-string v0, "INSTALL_FAILED_TEST_ONLY"

    return-object v0

    :sswitch_38
    const-string v0, "INSTALL_FAILED_CPU_ABI_INCOMPATIBLE"

    return-object v0

    :sswitch_3b
    const-string v0, "INSTALL_FAILED_MISSING_FEATURE"

    return-object v0

    :sswitch_3e
    const-string v0, "INSTALL_FAILED_CONTAINER_ERROR"

    return-object v0

    :sswitch_41
    const-string v0, "INSTALL_FAILED_INVALID_INSTALL_LOCATION"

    return-object v0

    :sswitch_44
    const-string v0, "INSTALL_FAILED_MEDIA_UNAVAILABLE"

    return-object v0

    :sswitch_47
    const-string v0, "INSTALL_FAILED_VERIFICATION_TIMEOUT"

    return-object v0

    :sswitch_4a
    const-string v0, "INSTALL_FAILED_VERIFICATION_FAILURE"

    return-object v0

    :sswitch_4d
    const-string v0, "INSTALL_FAILED_PACKAGE_CHANGED"

    return-object v0

    :sswitch_50
    const-string v0, "INSTALL_FAILED_UID_CHANGED"

    return-object v0

    :sswitch_53
    const-string v0, "INSTALL_FAILED_VERSION_DOWNGRADE"

    return-object v0

    :sswitch_56
    const-string v0, "INSTALL_FAILED_MISSING_SPLIT"

    return-object v0

    :sswitch_59
    const-string v0, "INSTALL_PARSE_FAILED_NOT_APK"

    return-object v0

    :sswitch_5c
    const-string v0, "INSTALL_PARSE_FAILED_BAD_MANIFEST"

    return-object v0

    :sswitch_5f
    const-string v0, "INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION"

    return-object v0

    :sswitch_62
    const-string v0, "INSTALL_PARSE_FAILED_NO_CERTIFICATES"

    return-object v0

    :sswitch_65
    const-string v0, "INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES"

    return-object v0

    :sswitch_68
    const-string v0, "INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING"

    return-object v0

    :sswitch_6b
    const-string v0, "INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME"

    return-object v0

    :sswitch_6e
    const-string v0, "INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID"

    return-object v0

    :sswitch_71
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_MALFORMED"

    return-object v0

    :sswitch_74
    const-string v0, "INSTALL_PARSE_FAILED_MANIFEST_EMPTY"

    return-object v0

    :sswitch_77
    const-string v0, "INSTALL_FAILED_INTERNAL_ERROR"

    return-object v0

    :sswitch_7a
    const-string v0, "INSTALL_FAILED_USER_RESTRICTED"

    return-object v0

    :sswitch_7d
    const-string v0, "INSTALL_FAILED_DUPLICATE_PERMISSION"

    return-object v0

    :sswitch_80
    const-string v0, "INSTALL_FAILED_NO_MATCHING_ABIS"

    return-object v0

    :sswitch_83
    const-string v0, "INSTALL_FAILED_ABORTED"

    return-object v0

    :sswitch_86
    const-string v0, "INSTALL_FAILED_SESSION_INVALID"

    return-object v0

    :sswitch_89
    const-string v0, "INSTALL_FAILED_BAD_DEX_METADATA"

    return-object v0

    :sswitch_8c
    const-string v0, "INSTALL_FAILED_BAD_SIGNATURE"

    return-object v0

    :sswitch_8f
    const-string v0, "INSTALL_FAILED_WRONG_INSTALLED_VERSION"

    return-object v0

    :sswitch_92
    const-string v0, "INSTALL_FAILED_PROCESS_NOT_DEFINED"

    return-object v0

    nop

    :sswitch_data_96
    .sparse-switch
        -0x7a -> :sswitch_92
        -0x79 -> :sswitch_8f
        -0x76 -> :sswitch_8c
        -0x75 -> :sswitch_89
        -0x74 -> :sswitch_86
        -0x73 -> :sswitch_83
        -0x71 -> :sswitch_80
        -0x70 -> :sswitch_7d
        -0x6f -> :sswitch_7a
        -0x6e -> :sswitch_77
        -0x6d -> :sswitch_74
        -0x6c -> :sswitch_71
        -0x6b -> :sswitch_6e
        -0x6a -> :sswitch_6b
        -0x69 -> :sswitch_68
        -0x68 -> :sswitch_65
        -0x67 -> :sswitch_62
        -0x66 -> :sswitch_5f
        -0x65 -> :sswitch_5c
        -0x64 -> :sswitch_59
        -0x1c -> :sswitch_56
        -0x19 -> :sswitch_53
        -0x18 -> :sswitch_50
        -0x17 -> :sswitch_4d
        -0x16 -> :sswitch_4a
        -0x15 -> :sswitch_47
        -0x14 -> :sswitch_44
        -0x13 -> :sswitch_41
        -0x12 -> :sswitch_3e
        -0x11 -> :sswitch_3b
        -0x10 -> :sswitch_38
        -0xf -> :sswitch_35
        -0xe -> :sswitch_32
        -0xd -> :sswitch_2f
        -0xc -> :sswitch_2c
        -0xb -> :sswitch_29
        -0xa -> :sswitch_26
        -0x9 -> :sswitch_23
        -0x8 -> :sswitch_20
        -0x7 -> :sswitch_1d
        -0x6 -> :sswitch_1a
        -0x5 -> :sswitch_17
        -0x4 -> :sswitch_14
        -0x3 -> :sswitch_11
        -0x2 -> :sswitch_e
        -0x1 -> :sswitch_b
        0x1 -> :sswitch_8
    .end sparse-switch
.end method

.method public static installStatusToString(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/content/pm/PackageManager;->installStatusToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1e
    return-object v0
.end method

.method public static invalidatePackageInfoCache()V
    .registers 1

    sget-object v0, Landroid/content/pm/PackageManager;->sCacheAutoCorker:Landroid/app/PropertyInvalidatedCache$AutoCorker;

    invoke-virtual {v0}, Landroid/app/PropertyInvalidatedCache$AutoCorker;->autoCork()V

    return-void
.end method

.method public static isMoveStatusFinished(I)Z
    .registers 2

    if-ltz p0, :cond_9

    const/16 v0, 0x64

    if-le p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method public static permissionFlagToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_3c

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string v0, "AUTO_REVOKED"

    return-object v0

    :sswitch_b
    const-string v0, "ONE_TIME"

    return-object v0

    :sswitch_e
    const-string v0, "GRANTED_BY_ROLE"

    return-object v0

    :sswitch_11
    const-string v0, "APPLY_RESTRICTION"

    return-object v0

    :sswitch_14
    const-string v0, "RESTRICTION_UPGRADE_EXEMPT"

    return-object v0

    :sswitch_17
    const-string v0, "RESTRICTION_SYSTEM_EXEMPT"

    return-object v0

    :sswitch_1a
    const-string v0, "RESTRICTION_INSTALLER_EXEMPT"

    return-object v0

    :sswitch_1d
    const-string v0, "USER_SENSITIVE_WHEN_DENIED"

    return-object v0

    :sswitch_20
    const-string v0, "USER_SENSITIVE_WHEN_GRANTED"

    return-object v0

    :sswitch_23
    const-string v0, "REVOKE_WHEN_REQUESTED"

    return-object v0

    :sswitch_26
    const-string v0, "REVIEW_REQUIRED"

    return-object v0

    :sswitch_29
    const-string v0, "GRANTED_BY_DEFAULT"

    return-object v0

    :sswitch_2c
    const-string v0, "SYSTEM_FIXED"

    return-object v0

    :sswitch_2f
    const-string v0, "REVOKED_COMPAT"

    return-object v0

    :sswitch_32
    const-string v0, "POLICY_FIXED"

    return-object v0

    :sswitch_35
    const-string v0, "USER_FIXED"

    return-object v0

    :sswitch_38
    const-string v0, "USER_SET"

    return-object v0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_38
        0x2 -> :sswitch_35
        0x4 -> :sswitch_32
        0x8 -> :sswitch_2f
        0x10 -> :sswitch_2c
        0x20 -> :sswitch_29
        0x40 -> :sswitch_26
        0x80 -> :sswitch_23
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1d
        0x800 -> :sswitch_1a
        0x1000 -> :sswitch_17
        0x2000 -> :sswitch_14
        0x4000 -> :sswitch_11
        0x8000 -> :sswitch_e
        0x10000 -> :sswitch_b
        0x20000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static uncorkPackageInfoCache()V
    .registers 1

    const-string v0, "cache_key.package_info"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->uncorkInvalidations(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
.end method

.method public abstract addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract addPackageToPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract addPermission(Landroid/content/pm/PermissionInfo;)Z
.end method

.method public abstract addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
.end method

.method public abstract addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addUniquePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addUniquePreferredActivity not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public abstract arePermissionsIndividuallyControlled()Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.content.pm.extra.REQUEST_PERMISSIONS_NAMES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/content/pm/PackageManagerStub;->get()Landroid/content/pm/PackageManagerStub;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerStub;->getPermissionControllerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "permission cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canPackageQuery(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "canPackageQuery not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract canRequestPackageInstalls()Z
.end method

.method public abstract canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract checkPermission(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract checkSignatures(II)I
.end method

.method public abstract checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract clearCrossProfileIntentFilters(I)V
.end method

.method public abstract clearInstantAppCookie()V
.end method

.method public abstract clearPackagePreferredActivities(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
.end method

.method public abstract deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
.end method

.method public abstract extendVerificationTimeout(IIJ)V
.end method

.method public abstract flushPackageRestrictionsAsUser(I)V
.end method

.method public freeStorage(JLandroid/content/IntentSender;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V

    return-void
.end method

.method public abstract freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
.end method

.method public freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public abstract freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getActivityInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getActivityInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllPermissionGroups(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getAppPredictionServicePackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAppPredictionServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationEnabledSetting(Ljava/lang/String;)I
.end method

.method public abstract getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getApplicationInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getApplicationInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;Landroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public getArtManager()Landroid/content/pm/dex/ArtManager;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getArtManager not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttentionServicePackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getAttentionServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBackgroundPermissionOptionLabel()Ljava/lang/CharSequence;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public abstract getCarLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getChangedPackages(I)Landroid/content/pm/ChangedPackages;
.end method

.method public abstract getComponentEnabledSetting(Landroid/content/ComponentName;)I
.end method

.method public getContentCaptureServicePackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getContentCaptureServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredSharedLibraries(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDeclaredSharedLibraries() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeclaredSharedLibraries(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDeclaredSharedLibraries() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public getDefaultTextClassifierPackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getDefaultTextClassifierPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public getGroupOfPlatformPermission(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public getHarmfulAppWarning(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getHarmfulAppWarning not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldLockToken()Landroid/os/IBinder;
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getHoldLockToken()Landroid/os/IBinder;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation
.end method

.method public getIncidentReportApproverPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getIncidentReportApproverPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
.end method

.method public getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstallSourceInfo not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInstalledApplications(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$ApplicationInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledApplications not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInstalledApplicationsAsUser(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$ApplicationInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledApplicationsAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstalledModules(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ModuleInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledModules not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInstalledPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getInstalledPackages not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInstalledPackagesAsUser(II)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getInstalledPackagesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getApplicationInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInstantAppAndroidId(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
.end method

.method public abstract getInstantAppCookie()[B
.end method

.method public abstract getInstantAppCookieMaxBytes()I
.end method

.method public abstract getInstantAppCookieMaxSize()I
.end method

.method public abstract getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract getInstantApps()Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIntentVerificationStatusAsUser(Ljava/lang/String;I)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public abstract getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public getLaunchIntentSenderForPackage(Ljava/lang/String;)Landroid/content/IntentSender;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getLaunchIntentSenderForPackage not implementedin subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public getMimeGroup(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getMimeGroup not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getModuleInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getMoveStatus(I)I
.end method

.method public abstract getNameForUid(I)Ljava/lang/String;
.end method

.method public abstract getNamesForUids([I)[Ljava/lang/String;
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .registers 24

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->getValue()J

    move-result-wide v0

    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v3, Landroid/content/pm/PackageParser$CallbackImpl;

    move-object/from16 v4, p0

    invoke-direct {v3, v4}, Landroid/content/pm/PackageParser$CallbackImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser;->setCallback(Landroid/content/pm/PackageParser$Callback;)V

    new-instance v3, Ljava/io/File;

    move-object/from16 v5, p1

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v6, 0xc0000

    and-long v8, v0, v6

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_27

    move-wide v6, v0

    goto :goto_29

    :cond_27
    or-long/2addr v0, v6

    move-wide v6, v0

    :goto_29
    const/4 v0, 0x0

    :try_start_2a
    invoke-virtual {v2, v3, v0, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    const-wide/16 v8, 0x40

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-nez v8, :cond_3d

    const-wide/32 v8, 0x8000000

    and-long/2addr v8, v6

    cmp-long v8, v8, v10

    if-eqz v8, :cond_40

    :cond_3d
    invoke-static {v1, v0}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V

    :cond_40
    const/4 v13, 0x0

    long-to-int v14, v6

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    sget-object v20, Landroid/content/pm/pkg/FrameworkPackageUserState;->DEFAULT:Landroid/content/pm/pkg/FrameworkPackageUserState;

    move-object v12, v1

    invoke-static/range {v12 .. v20}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/pkg/FrameworkPackageUserState;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_4f
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2a .. :try_end_4f} :catch_50

    return-object v0

    :catch_50
    move-exception v0

    const-string v1, "PackageManager"

    const-string v8, "Failure to parse package archive"

    invoke-static {v1, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public abstract getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
.end method

.method public abstract getPackageGids(Ljava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageGids(Ljava/lang/String;I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPackageGids(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageGids not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageInfoAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPackageInstaller()Landroid/content/pm/PackageInstaller;
.end method

.method public getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    return-void
.end method

.method public abstract getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPackageUid(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPackageUid(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageUid not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPackageUidAsUser(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPackageUidAsUser(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackageUidAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPackagesForUid(I)[Ljava/lang/String;
.end method

.method public abstract getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPackagesHoldingPermissions not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public getPlatformPermissionsForGroup(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPreferredPackages(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
.end method

.method public getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getProviderInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ActivityInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getReceiverInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public abstract getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getRotationResolverPackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRotationResolverPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSdkSandboxPackageName()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getServiceInfo not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
.end method

.method public getSetupWizardPackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSetupWizardPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSharedLibraries(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getSharedLibraries(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSharedLibraries() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSharedLibrariesAsUser(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getSharedLibrariesAsUser(Landroid/content/pm/PackageManager$PackageInfoFlags;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager$PackageInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSharedLibrariesAsUser() not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
.end method

.method public abstract getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
.end method

.method public getSuspendedPackageAppExtras()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSuspendedPackageAppExtras not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyntheticAppDetailsActivityEnabled(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSyntheticAppDetailsActivityEnabled not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
.end method

.method public getSystemCaptionsServicePackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSystemCaptionsServicePackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getSystemSharedLibraryNames()[Ljava/lang/String;
.end method

.method public getSystemTextClassifierPackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getSystemTextClassifierPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTargetSdkVersion(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
.end method

.method public abstract getUidForSharedUser(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getUnsuspendablePackages not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
.end method

.method public getUserId()I
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public abstract getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
.end method

.method public getWellbeingPackageName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getWellbeingPackageName not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWhitelistedRestrictedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
.end method

.method public abstract grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public hasSigningCertificate(I[BI)Z
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasSigningCertificate not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasSigningCertificate(Ljava/lang/String;[BI)Z
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hasSigningCertificate not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract hasSystemFeature(Ljava/lang/String;)Z
.end method

.method public abstract hasSystemFeature(Ljava/lang/String;I)Z
.end method

.method public holdLock(Landroid/os/IBinder;I)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->holdLock(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public abstract installExistingPackage(Ljava/lang/String;)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract installExistingPackage(Ljava/lang/String;I)I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract installExistingPackageAsUser(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public isAutoRevokeWhitelisted()Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isAutoRevokeWhitelisted not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAutoRevokeWhitelisted(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultApplicationIcon(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getSourceDrawableResId()I

    move-result v0

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    const v2, 0x1080093

    if-eq v0, v2, :cond_18

    const v2, 0x10808bc

    if-ne v0, v2, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public isDeviceUpgrading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isInstantApp()Z
.end method

.method public abstract isInstantApp(Ljava/lang/String;)Z
.end method

.method public abstract isPackageAvailable(Ljava/lang/String;)Z
.end method

.method public isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isPackageStateProtected not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPackageSuspended()Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isPackageSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isPackageSuspended(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "isPackageSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract isPackageSuspendedForUser(Ljava/lang/String;I)Z
.end method

.method public abstract isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract isSafeMode()Z
.end method

.method public abstract isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
.end method

.method public abstract isUpgrade()Z
.end method

.method public abstract isWirelessConsentModeEnabled()Z
.end method

.method public abstract loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public makeProviderVisible(ILjava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->makeProviderVisible(ILjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public makeUidVisible(II)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "makeUidVisible not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
.end method

.method public abstract movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
.end method

.method public queryActivityProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryActivityProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryApplicationProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryApplicationProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Shame on you for calling the hidden API queryBroadcastReceivers(). Shame!"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v1

    const-string v2, "Shame on you for calling the hidden API queryBroadcastReceivers(). Shame!"

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_1a

    const-string v1, "PackageManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryBroadcastReceivers not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryBroadcastReceiversAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager$ComponentInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryContentProviders not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageManager$ComponentInfoFlags;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;ILandroid/content/pm/PackageManager$ComponentInfoFlags;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentActivities not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentActivitiesAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentActivityOptions not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentContentProviders not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentContentProvidersAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentServices not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "queryIntentServicesAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/pm/PackageManager$ResolveInfoFlags;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public queryProviderProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryProviderProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryReceiverProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryReceiverProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryServiceProperty(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "qeuryServiceProperty not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract registerDexModule(Ljava/lang/String;Landroid/content/pm/PackageManager$DexModuleRegisterCallback;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
.end method

.method public abstract removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract removePackageFromPreferred(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removePermission(Ljava/lang/String;)V
.end method

.method public removeWhitelistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;ILjava/util/List;Landroid/content/ComponentName;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/ComponentName;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method public abstract replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChecksums(Ljava/lang/String;ZILjava/util/List;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Landroid/content/pm/PackageManager$OnChecksumsReadyListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "requestChecksums not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveActivity not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveActivityAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveContentProvider not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
.end method

.method public resolveContentProviderAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;I)Landroid/content/pm/ProviderInfo;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveContentProviderAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public resolveService(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveService not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public resolveServiceAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Landroid/content/pm/ResolveInfo;
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "resolveServiceAsUser not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendDeviceCustomizationReadyBroadcast()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "sendDeviceCustomizationReadyBroadcast not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setApplicationCategoryHint(Ljava/lang/String;I)V
.end method

.method public abstract setApplicationEnabledSetting(Ljava/lang/String;II)V
.end method

.method public abstract setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
.end method

.method public setAutoRevokeWhitelisted(Ljava/lang/String;Z)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public abstract setComponentEnabledSetting(Landroid/content/ComponentName;II)V
.end method

.method public setComponentEnabledSettings(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageManager$ComponentEnabledSetting;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setComponentEnabledSettings not implementedin subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public setDistractingPackageRestrictions([Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setDistractingPackageRestrictions not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setHarmfulAppWarning not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setInstantAppCookie([B)Z
.end method

.method public setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setKeepUninstalledPackages(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setMimeGroup(Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setMimeGroup not implemented in subclass"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;)[Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setPackagesSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPackagesSuspended([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setPackagesSuspended not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSyntheticAppDetailsActivityEnabled(Ljava/lang/String;Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "setSyntheticAppDetailsActivityEnabled not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSystemAppState(Ljava/lang/String;I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented. Must override in a subclass"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setUpdateAvailable(Ljava/lang/String;Z)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
.end method

.method public abstract unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
.end method

.method public abstract updateInstantAppCookie([B)V
.end method

.method public abstract updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end method

.method public abstract verifyIntentFilter(IILjava/util/List;)V
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract verifyPendingInstall(II)V
.end method
