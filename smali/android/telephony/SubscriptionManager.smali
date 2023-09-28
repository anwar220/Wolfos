# classes3.dex

.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$CallISubMethodHelper;,
        Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Landroid/telephony/SubscriptionManager$PhoneNumberSource;,
        Landroid/telephony/SubscriptionManager$UsageSetting;,
        Landroid/telephony/SubscriptionManager$ProfileClass;,
        Landroid/telephony/SubscriptionManager$DeviceToDeviceStatusSharingPreference;,
        Landroid/telephony/SubscriptionManager$SimDisplayNameSource;,
        Landroid/telephony/SubscriptionManager$SubscriptionType;,
        Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;,
        Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    }
.end annotation


# static fields
.field public static final ACCESS_RULES:Ljava/lang/String; = "access_rules"

.field public static final ACCESS_RULES_FROM_CARRIER_CONFIGS:Ljava/lang/String; = "access_rules_from_carrier_configs"

.field public static final ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

.field public static final ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

.field public static final ACTION_MANAGE_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.MANAGE_SUBSCRIPTION_PLANS"

.field public static final ACTION_REFRESH_SUBSCRIPTION_PLANS:Ljava/lang/String; = "android.telephony.action.REFRESH_SUBSCRIPTION_PLANS"

.field public static final ACTION_SUBSCRIPTION_PLANS_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ALLOWED_NETWORK_TYPES:Ljava/lang/String; = "allowed_network_types_for_reasons"

.field public static final CACHE_KEY_ACTIVE_DATA_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_active_data_sub_id"

.field public static final CACHE_KEY_DEFAULT_DATA_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_data_sub_id"

.field public static final CACHE_KEY_DEFAULT_SMS_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_sms_sub_id"

.field public static final CACHE_KEY_DEFAULT_SUB_ID_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_default_sub_id"

.field public static final CACHE_KEY_SLOT_INDEX_PROPERTY:Ljava/lang/String; = "cache_key.telephony.get_slot_index"

.field public static final CARD_ID:Ljava/lang/String; = "card_id"

.field public static final CARRIER_ID:Ljava/lang/String; = "carrier_id"

.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CROSS_SIM_CALLING_ENABLED:Ljava/lang/String; = "cross_sim_calling_enabled"

.field public static final CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final D2D_SHARING_ALL:I = 0x3

.field public static final D2D_SHARING_ALL_CONTACTS:I = 0x1

.field public static final D2D_SHARING_DISABLED:I = 0x0

.field public static final D2D_SHARING_SELECTED_CONTACTS:I = 0x2

.field public static final D2D_STATUS_SHARING:Ljava/lang/String; = "d2d_sharing_status"

.field public static final D2D_STATUS_SHARING_SELECTED_CONTACTS:Ljava/lang/String; = "d2d_sharing_contacts"

.field public static final DATA_ENABLED_OVERRIDE_RULES:Ljava/lang/String; = "data_enabled_override_rules"

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EHPLMNS:Ljava/lang/String; = "ehplmns"

.field public static final ENHANCED_4G_MODE_ENABLED:Ljava/lang/String; = "volte_vt_enabled"

.field public static final EXTRA_SLOT_INDEX:Ljava/lang/String; = "android.telephony.extra.SLOT_INDEX"

.field public static final EXTRA_SUBSCRIPTION_INDEX:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_INDEX"

.field public static final GET_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "getSimSpecificSettings"

.field public static final GROUP_OWNER:Ljava/lang/String; = "group_owner"

.field public static final GROUP_UUID:Ljava/lang/String; = "group_uuid"

.field public static final HPLMNS:Ljava/lang/String; = "hplmns"

.field public static final HUE:Ljava/lang/String; = "color"

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final IMSI:Ljava/lang/String; = "imsi"

.field public static final IMS_RCS_UCE_ENABLED:Ljava/lang/String; = "ims_rcs_uce_enabled"

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field public static final ISO_COUNTRY_CODE:Ljava/lang/String; = "iso_country_code"

.field public static final IS_EMBEDDED:Ljava/lang/String; = "is_embedded"

.field public static final IS_OPPORTUNISTIC:Ljava/lang/String; = "is_opportunistic"

.field public static final IS_REMOVABLE:Ljava/lang/String; = "is_removable"

.field public static final KEY_SIM_SPECIFIC_SETTINGS_DATA:Ljava/lang/String; = "KEY_SIM_SPECIFIC_SETTINGS_DATA"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field private static final MAX_CACHE_SIZE:I = 0x4

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MCC_STRING:Ljava/lang/String; = "mcc_string"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final MNC_STRING:Ljava/lang/String; = "mnc_string"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_CARRIER:I = 0x3

.field public static final NAME_SOURCE_CARRIER_ID:I = 0x0

.field public static final NAME_SOURCE_SIM_PNN:I = 0x4

.field public static final NAME_SOURCE_SIM_SPN:I = 0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NR_ADVANCED_CALLING_ENABLED:Ljava/lang/String; = "nr_advanced_calling_enabled"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final PHONE_NUMBER_SOURCE_CARRIER:I = 0x2

.field public static final PHONE_NUMBER_SOURCE_IMS:I = 0x3

.field public static final PHONE_NUMBER_SOURCE_UICC:I = 0x1

.field public static final PLACEHOLDER_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final PORT_INDEX:Ljava/lang/String; = "port_index"

.field public static final PROFILE_CLASS:Ljava/lang/String; = "profile_class"

.field public static final PROFILE_CLASS_DEFAULT:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROFILE_CLASS_OPERATIONAL:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROFILE_CLASS_PROVISIONING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROFILE_CLASS_TESTING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PROFILE_CLASS_UNSET:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RESTORE_SIM_SPECIFIC_SETTINGS_METHOD_NAME:Ljava/lang/String; = "restoreSimSpecificSettings"

.field public static final SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SLOT_INDEX_FOR_REMOTE_SIM_SUB:I = -0x1

.field public static final SUBSCRIPTION_TYPE:Ljava/lang/String; = "subscription_type"

.field public static final SUBSCRIPTION_TYPE_LOCAL_SIM:I = 0x0

.field public static final SUBSCRIPTION_TYPE_REMOTE_SIM:I = 0x1

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final UICC_APPLICATIONS_ENABLED:Ljava/lang/String; = "uicc_applications_enabled"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field public static final USAGE_SETTING:Ljava/lang/String; = "usage_setting"

.field public static final USAGE_SETTING_DATA_CENTRIC:I = 0x2

.field public static final USAGE_SETTING_DEFAULT:I = 0x0

.field public static final USAGE_SETTING_UNKNOWN:I = -0x1

.field public static final USAGE_SETTING_VOICE_CENTRIC:I = 0x1

.field private static final VDBG:Z = false

.field public static final VOIMS_OPT_IN_STATUS:Ljava/lang/String; = "voims_opt_in_status"

.field public static final VT_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VT_IMS_ENABLED:Ljava/lang/String; = "vt_ims_enabled"

.field public static final WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WFC_IMS_ENABLED:Ljava/lang/String; = "wfc_ims_enabled"

.field public static final WFC_IMS_MODE:Ljava/lang/String; = "wfc_ims_mode"

.field public static final WFC_IMS_ROAMING_ENABLED:Ljava/lang/String; = "wfc_ims_roaming_enabled"

.field public static final WFC_IMS_ROAMING_MODE:Ljava/lang/String; = "wfc_ims_roaming_mode"

.field public static final WFC_MODE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResourcesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private static sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    sget-object v0, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda3;-><init>()V

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cache_key.telephony.get_default_sub_id"

    invoke-direct {v1, v2, v4, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda4;-><init>()V

    const-string v5, "cache_key.telephony.get_default_data_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda5;-><init>()V

    const-string v5, "cache_key.telephony.get_default_sms_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda6;-><init>()V

    const-string v5, "cache_key.telephony.get_active_data_sub_id"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda7;-><init>()V

    const-string v5, "cache_key.telephony.get_slot_index"

    invoke-direct {v1, v2, v5, v3}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v1, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {v1, v2, v4, v3}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v1, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    const-string/jumbo v1, "wfc"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ENABLED_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "advanced_calling"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_roaming_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "vt_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->VT_ENABLED_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "wfc_roaming_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "backup_and_restore"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "suw_restore"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_SUW_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "cross_sim_calling_enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static clearCaches()V
    .registers 1

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->clear()V

    return-void
.end method

.method public static disableCaching()V
    .registers 1

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->disableLocal()V

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getActiveDataSubscriptionId()I
    .registers 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sActiveDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .registers 7

    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2

    :catch_10
    move-exception v1

    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_16
    return p2
.end method

.method private static getContactsFromSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    const/4 v1, 0x0

    :try_start_7
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3d} :catch_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_3d} :catch_40

    nop

    goto :goto_2a

    :cond_3f
    return-object v5

    :catch_40
    move-exception v1

    const-string v2, "getContactsFromSubscriptionProperty ClassNotFound exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_4d

    :catch_47
    move-exception v1

    const-string v2, "getContactsFromSubscriptionProperty IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public static getDefaultDataSubscriptionId()I
    .registers 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultDataSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDefaultSmsSubscriptionId()I
    .registers 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSmsSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDefaultSubscriptionId()I
    .registers 2

    sget-object v0, Landroid/telephony/SubscriptionManager;->sDefaultSubIdCache:Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$VoidPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getDefaultVoicePhoneId()I
    .registers 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubscriptionId()I
    .registers 3

    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    :cond_c
    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    return v0
.end method

.method public static getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .registers 7

    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    :catch_b
    move-exception v1

    const-string v2, "getIntegerSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_11
    return p2
.end method

.method public static getLongSubscriptionProperty(ILjava/lang/String;JLandroid/content/Context;)J
    .registers 8

    invoke-static {p0, p1, p4}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    return-wide v1

    :catch_b
    move-exception v1

    const-string v2, "getLongSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_11
    return-wide p2
.end method

.method private getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;
    .registers 3

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "netpolicy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method public static getPhoneId(I)I
    .registers 3

    sget-object v0, Landroid/telephony/SubscriptionManager;->sPhoneIdCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;
    .registers 9

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_20

    if-nez p2, :cond_20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    return-object v1

    :cond_20
    nop

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v3

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    iget v3, v2, Landroid/content/res/Configuration;->mnc:I

    if-nez v3, :cond_48

    const v3, 0xffff

    iput v3, v2, Landroid/content/res/Configuration;->mnc:I

    const/4 v0, 0x0

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :cond_48
    :goto_48
    if-eqz p2, :cond_4f

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :cond_4f
    invoke-virtual {p0, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v0, :cond_5e

    sget-object v5, Landroid/telephony/SubscriptionManager;->sResourcesCache:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    return-object v4
.end method

.method public static getSimStateForSlotIndex(I)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIndex(I)I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    :cond_c
    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    return v0
.end method

.method public static getSlotIndex(I)I
    .registers 3

    sget-object v0, Landroid/telephony/SubscriptionManager;->sSlotIndexCache:Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getSubId(I)[I
    .registers 4

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "[getSubId]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1a

    move-object v0, v2

    :cond_19
    goto :goto_1b

    :catch_1a
    move-exception v1

    :goto_1b
    return-object v0
.end method

.method private static getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_15

    nop

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v2

    :cond_15
    goto :goto_17

    :catch_16
    move-exception v1

    :goto_17
    return-object v0
.end method

.method public static getUriForSubscriptionId(I)Landroid/net/Uri;
    .registers 3

    sget-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static invalidateActiveDataSubIdCaches()V
    .registers 1

    const-string v0, "cache_key.telephony.get_active_data_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static invalidateDefaultDataSubIdCaches()V
    .registers 1

    const-string v0, "cache_key.telephony.get_default_data_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static invalidateDefaultSmsSubIdCaches()V
    .registers 1

    const-string v0, "cache_key.telephony.get_default_sms_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static invalidateDefaultSubIdCaches()V
    .registers 1

    const-string v0, "cache_key.telephony.get_default_sub_id"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method public static invalidateSlotIndexCaches()V
    .registers 1

    const-string v0, "cache_key.telephony.get_slot_index"

    invoke-static {v0}, Landroid/app/PropertyInvalidatedCache;->invalidateCache(Ljava/lang/String;)V

    return-void
.end method

.method private isSystemProcess()Z
    .registers 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isUsableSubIdValue(I)Z
    .registers 2

    if-ltz p0, :cond_9

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static isUsableSubscriptionId(I)Z
    .registers 2

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    return v0
.end method

.method public static isValidPhoneId(I)Z
    .registers 2

    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isValidSlotIndex(I)Z
    .registers 2

    if-ltz p0, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isValidSubscriptionId(I)Z
    .registers 2

    const/4 v0, -0x1

    if-le p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method static synthetic lambda$addOnSubscriptionsChangedListener$0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 1

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onAddListenerFailed()V

    return-void
.end method

.method static synthetic lambda$addSubscriptionsIntoGroup$8(Ljava/lang/Integer;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$createSubscriptionGroup$7(Ljava/lang/Integer;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeSubscriptionsFromGroup$9(Ljava/lang/Integer;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setDataRoaming$5(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setDeviceToDeviceStatusSharingContacts$11(Ljava/util/List;ILcom/android/internal/telephony/ISub;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setDeviceToDeviceStatusSharingPreference$10(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDeviceToDeviceStatusSharing(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setDisplayName$3(Ljava/lang/String;IILcom/android/internal/telephony/ISub;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setDisplayNumber$4(Ljava/lang/String;ILcom/android/internal/telephony/ISub;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$setIconTint$2(IILcom/android/internal/telephony/ISub;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I

    move-result v0

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_10

    array-length v1, v0

    if-lez v1, :cond_10

    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    goto :goto_24

    :cond_10
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, p1}, Landroid/telephony/TelephonyBaseUtilsStub;->putPhoneIdExtra(Landroid/content/Intent;I)V

    :goto_24
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .registers 4

    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, p2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    invoke-static {p0, p1, p1, p2}, Landroid/telephony/TelephonyBaseUtilsStub;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    return-void
.end method

.method public static putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .registers 3

    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public static serializeUriLists(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_36} :catch_37

    return-object v3

    :catch_37
    move-exception v1

    const-string/jumbo v2, "serializeUriLists IO exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const-string v1, ""

    return-object v1
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method private setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I
    .registers 7

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]- fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_24
    const/4 v0, 0x0

    :try_start_25
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-interface {p3, v1}, Landroid/telephony/SubscriptionManager$CallISubMethodHelper;->callMethod(Lcom/android/internal/telephony/ISub;)I

    move-result v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2f} :catch_31

    move v0, v2

    :cond_30
    goto :goto_32

    :catch_31
    move-exception v1

    :goto_32
    return v0
.end method


# virtual methods
.method public addOnOpportunisticSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 6

    if-eqz p1, :cond_21

    if-nez p2, :cond_5

    goto :goto_21

    :cond_5
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, "<unknown>"

    :goto_10
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v1, :cond_20

    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    :cond_20
    return-void

    :cond_21
    :goto_21
    return-void
.end method

.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->-$$Nest$fgetmExecutor(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Lcom/android/internal/telephony/util/HandlerExecutor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    return-void
.end method

.method public addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 7

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    :goto_b
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v1, :cond_1c

    invoke-virtual {v1, p2, p1}, Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V

    goto :goto_40

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addOnSubscriptionsChangedListener: pkgname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to be added  due to TELEPHONY_REGISTRY_SERVICE being unavailable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_40
    return-void
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 5

    if-nez p1, :cond_7

    const-string v0, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_7
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "[addSubscriptionInfoRecord]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/telephony/SubscriptionManager;->addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v1
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_a

    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v2, "[addSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    if-gez v2, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding of subscription didn\'t succeed: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_33
    const-string/jumbo v0, "successfully added new subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_39} :catch_3a

    :goto_39
    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    return-void
.end method

.method public addSubscriptionsIntoGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelUuid;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "<unknown>"

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    :try_start_27
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_37

    :cond_31
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-eqz v3, :cond_38

    :goto_37
    goto :goto_61

    :cond_38
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_41} :catch_41

    :catch_41
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSubscriptionsIntoGroup RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-nez v3, :cond_61

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_61
    :goto_61
    return-void
.end method

.method public allDefaultsSelected()Z
    .registers 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_22

    return v1

    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public canDisablePhysicalSubscription()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->canDisablePhysicalSubscription()Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    :cond_17
    goto :goto_19

    :catch_18
    move-exception v0

    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z
    .registers 3

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canManageSubscription(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAllAccessRules()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4f

    if-nez p2, :cond_c

    goto :goto_4f

    :cond_c
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    :try_start_14
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_18} :catch_37

    nop

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getAllAccessRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccAccessRule;

    invoke-virtual {v4, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_35

    return v6

    :cond_35
    goto :goto_21

    :cond_36
    return v0

    :catch_37
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    return v0

    :cond_4f
    :goto_4f
    return v0
.end method

.method public clearSubscriptionInfo()V
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public createSubscriptionGroup(Ljava/util/List;)Landroid/os/ParcelUuid;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/ParcelUuid;"
        }
    .end annotation

    const-string v0, "can\'t create group for null subId list"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, "<unknown>"

    :goto_10
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    :try_start_22
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    if-eqz v3, :cond_2e

    invoke-interface {v3, v2, v0}, Lcom/android/internal/telephony/ISub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    move-object v1, v4

    goto :goto_34

    :cond_2e
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_35

    :goto_34
    goto :goto_5e

    :cond_35
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSubscriptionGroup RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_5e

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public getAccessibleSubscriptionInfoList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-object v0, v2

    :cond_12
    goto :goto_14

    :catch_13
    move-exception v1

    :goto_14
    return-object v0
.end method

.method public getActiveSubscriptionIdList()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getActiveSubscriptionIdList(Z)[I
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList(Z)[I

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    if-eqz v1, :cond_d

    return-object v1

    :cond_d
    goto :goto_f

    :catch_e
    move-exception v0

    :goto_f
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .registers 6

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1f} :catch_21

    move-object v0, v2

    :cond_20
    goto :goto_22

    :catch_21
    move-exception v1

    :goto_22
    return-object v0
.end method

.method public getActiveSubscriptionInfoCount()I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move v0, v2

    :cond_18
    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    return v0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    :cond_c
    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    return v0
.end method

.method public getActiveSubscriptionInfoForIcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-nez p1, :cond_9

    const-string v0, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_20} :catch_22

    move-object v0, v2

    :cond_21
    goto :goto_23

    :catch_22
    move-exception v1

    :goto_23
    return-object v0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .registers 6

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIndex"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_24} :catch_26

    move-object v0, v2

    :cond_25
    goto :goto_27

    :catch_26
    move-exception v1

    :goto_27
    return-object v0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSubscriptionInfoList(Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    :cond_18
    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    if-eqz p1, :cond_37

    if-nez v0, :cond_1f

    goto :goto_37

    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/SubscriptionManager;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    :cond_37
    :goto_37
    return-object v0
.end method

.method public getAllSimSpecificSettingsForBackup()[B
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "getSimSpecificSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public getAllSubscriptionInfoCount()I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move v0, v2

    :cond_18
    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    return v0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    :cond_18
    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    if-nez v0, :cond_20

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public getAvailableSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_17} :catch_19

    move-object v0, v2

    :cond_18
    goto :goto_1a

    :catch_19
    move-exception v1

    :goto_1a
    return-object v0
.end method

.method public getCompleteActiveSubscriptionIdList()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getCompleteActiveSubscriptionInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    :cond_d
    return-object v0
.end method

.method public getDefaultDataPhoneId()I
    .registers 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .registers 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .registers 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToDeviceStatusSharingContacts(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v1, "d2d_sharing_contacts"

    invoke-static {p1, v1, v0}, Landroid/telephony/SubscriptionManager;->getContactsFromSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceToDeviceStatusSharingPreference(I)I
    .registers 5

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string v1, "d2d_sharing_status"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/telephony/SubscriptionManager;->getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getEnabledSubscriptionId(I)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISub;->getEnabledSubscriptionId(I)I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    :cond_c
    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    return v0
.end method

.method public getOpportunisticSubscriptions()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    :goto_b
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    const/4 v2, 0x0

    :try_start_16
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/ISub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_22

    move-object v2, v4

    :cond_21
    goto :goto_23

    :catch_22
    move-exception v3

    :goto_23
    if-nez v2, :cond_2b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    :cond_2b
    return-object v2
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .registers 5

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    :cond_9
    :try_start_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPhoneNumber(II)Ljava/lang/String;
    .registers 6

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    :cond_9
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2d

    const/4 v0, 0x3

    if-ne p2, v0, :cond_13

    goto :goto_2d

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid source "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/ISub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "subscription service unavailable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPreferredDataSubscriptionId()I
    .registers 4

    const v0, 0x7fffffff

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->getPreferredDataSubscriptionId()I

    move-result v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_f

    move v0, v2

    :cond_e
    goto :goto_10

    :catch_f
    move-exception v1

    :goto_10
    return v0
.end method

.method public getSelectableSubscriptionInfoList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, v4}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_16

    :cond_29
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v5

    if-nez v5, :cond_33

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_33
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_59

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    if-eq v6, v7, :cond_59

    :cond_4c
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    :goto_59
    goto :goto_16

    :cond_5a
    return-object v1
.end method

.method public getSubscriptionIds(I)[I
    .registers 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionPlans(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    nop

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/NetworkPolicyManager;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    if-nez v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_1a
    return-object v1
.end method

.method public getSubscriptionsInGroup(Landroid/os/ParcelUuid;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "groupUuid can\'t be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_e
    const-string v0, "<unknown>"

    :goto_10
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const/4 v2, 0x0

    :try_start_1b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-interface {v3, p1, v0, v1}, Lcom/android/internal/telephony/ISub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    goto :goto_2d

    :cond_27
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-eqz v4, :cond_2e

    :goto_2d
    goto :goto_58

    :cond_2e
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "telephony service is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_37} :catch_37

    :catch_37
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSubscriptionsFromGroup RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_58
    :goto_58
    return-object v2
.end method

.method public isActiveSubId(I)Z
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    :cond_17
    goto :goto_19

    :catch_18
    move-exception v0

    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public isActiveSubscriptionId(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v1, 0x0

    return v1

    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    return v1
.end method

.method public isSubscriptionEnabled(I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isSubscriptionEnabled(I)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2a

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_2a

    :cond_12
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->canManageSubscription(Landroid/telephony/SubscriptionInfo;)Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_28
    move v0, v2

    :cond_29
    return v0

    :cond_2a
    :goto_2a
    return v2
.end method

.method synthetic lambda$getActiveSubscriptionInfoList$1$android-telephony-SubscriptionManager(Landroid/telephony/SubscriptionInfo;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->isSubscriptionVisible(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$setOpportunistic$6$android-telephony-SubscriptionManager(ZILcom/android/internal/telephony/ISub;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method synthetic lambda$setUsageSetting$12$android-telephony-SubscriptionManager(IILcom/android/internal/telephony/ISub;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/android/internal/telephony/ISub;->setUsageSetting(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 5

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, "<unknown>"

    :goto_11
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    :cond_21
    return-void
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_c
    const-string v0, "<unknown>"

    :goto_e
    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v1, :cond_1e

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyRegistryManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_1e
    return-void
.end method

.method public removeSubscriptionInfoRecord(Ljava/lang/String;I)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    const-string v0, "SubscriptionManager"

    if-nez p1, :cond_a

    const-string v1, "[addSubscriptionInfoRecord]- uniqueId is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-nez v1, :cond_16

    const-string v2, "[removeSubscriptionInfoRecord]- ISub service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ISub;->removeSubInfo(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removal of subscription didn\'t succeed: error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_33
    const-string/jumbo v0, "successfully removed subscription"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_39} :catch_3a

    :goto_39
    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    return-void
.end method

.method public removeSubscriptionsFromGroup(Ljava/util/List;Landroid/os/ParcelUuid;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/ParcelUuid;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "subIdList can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "groupUuid can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "<unknown>"

    :goto_16
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    :try_start_27
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-interface {v2, v1, p2, v0}, Lcom/android/internal/telephony/ISub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_37

    :cond_31
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-eqz v3, :cond_38

    :goto_37
    goto :goto_62

    :cond_38
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "telephony service is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_41} :catch_41

    :catch_41
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSubscriptionsFromGroup RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->isSystemProcess()Z

    move-result v3

    if-nez v3, :cond_62

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_62
    :goto_62
    return-void
.end method

.method public requestEmbeddedSubscriptionInfoListRefresh()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    :try_start_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    :cond_13
    goto :goto_32

    :catch_14
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestEmbeddedSubscriptionInfoListFresh for card = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method public requestEmbeddedSubscriptionInfoListRefresh(I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->requestEmbeddedSubscriptionInfoListRefresh(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_28

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestEmbeddedSubscriptionInfoListFresh for card = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    :goto_28
    return-void
.end method

.method public restoreAllSimSpecificSettingsFromBackup([B)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KEY_SIM_SPECIFIC_SETTINGS_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "restoreSimSpecificSettings"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public restoreSimSpecificSettingsForIccIdFromBackup(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/SubscriptionManager;->SIM_INFO_BACKUP_AND_RESTORE_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "restoreSimSpecificSettings"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public setCarrierPhoneNumber(ILjava/lang/String;)V
    .registers 10

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_9

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    :cond_9
    if-eqz p2, :cond_36

    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    move-object v6, v0

    if-eqz v6, :cond_27

    const/4 v2, 0x2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    return-void

    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "subscription service unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_30} :catch_30

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid number null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataRoaming(II)I
    .registers 5

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda1;-><init>(II)V

    const-string/jumbo v1, "setDataRoaming"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public setDefaultDataSubId(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public setDefaultSmsSubId(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_e

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_e
    return-void
.end method

.method public setDefaultVoiceSubId(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubscriptionId(I)V

    return-void
.end method

.method public setDefaultVoiceSubscriptionId(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public setDeviceToDeviceStatusSharingContacts(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->serializeUriLists(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;I)V

    const-string/jumbo v2, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v2, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    return-void
.end method

.method public setDeviceToDeviceStatusSharingPreference(II)V
    .registers 5

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda18;-><init>(II)V

    const-string/jumbo v1, "setDeviceToDeviceSharingStatus"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    return-void
.end method

.method public setDisplayName(Ljava/lang/String;II)I
    .registers 6

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1, p2, p3}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;II)V

    const-string/jumbo v1, "setDisplayName"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .registers 5

    if-nez p1, :cond_9

    const-string v0, "[setDisplayNumber]- fail"

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    :cond_9
    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v1, "setDisplayNumber"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public setIconTint(II)I
    .registers 5

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda13;-><init>(II)V

    const-string/jumbo v1, "setIconTint"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    return v0
.end method

.method public setOpportunistic(ZI)Z
    .registers 5

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/SubscriptionManager;ZI)V

    const-string/jumbo v1, "setOpportunistic"

    invoke-direct {p0, p2, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public setPreferredDataSubscriptionId(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Landroid/telephony/SubscriptionManager$1;

    invoke-direct {v1, p0, p3, p4}, Landroid/telephony/SubscriptionManager$1;-><init>(Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/ISub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    return-void
.end method

.method public setSubscriptionEnabled(IZ)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setSubscriptionEnabled(ZI)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    const/4 v0, 0x0

    return v0
.end method

.method public setSubscriptionOverrideCongested(IZJ)V
    .registers 11

    nop

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideCongested(IZ[IJ)V

    return-void
.end method

.method public setSubscriptionOverrideCongested(IZ[IJ)V
    .registers 15

    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    move v4, v0

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v1

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    move v2, p1

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    return-void
.end method

.method public setSubscriptionOverrideUnmetered(IZJ)V
    .registers 11

    nop

    invoke-static {}, Landroid/telephony/TelephonyManager;->getAllNetworkTypes()[I

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionOverrideUnmetered(IZ[IJ)V

    return-void
.end method

.method public setSubscriptionOverrideUnmetered(IZ[IJ)V
    .registers 14

    move v3, p2

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move v1, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/net/NetworkPolicyManager;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    return-void
.end method

.method public setSubscriptionPlans(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setSubscriptionPlans(ILjava/util/List;J)V

    return-void
.end method

.method public setSubscriptionPlans(ILjava/util/List;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionPlan;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager;->getNetworkPolicyManager()Landroid/net/NetworkPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/telephony/SubscriptionPlan;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkPolicyManager;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    return-void
.end method

.method public setUiccApplicationsEnabled(IZ)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0, p2, p1}, Lcom/android/internal/telephony/ISub;->setUiccApplicationsEnabled(ZI)I
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    :cond_15
    goto :goto_17

    :catch_16
    move-exception v0

    :goto_17
    return-void
.end method

.method setUsageSetting(II)V
    .registers 5

    new-instance v0, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Landroid/telephony/SubscriptionManager$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/SubscriptionManager;II)V

    const-string/jumbo v1, "setUsageSetting"

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionPropertyHelper(ILjava/lang/String;Landroid/telephony/SubscriptionManager$CallISubMethodHelper;)I

    return-void
.end method

.method public switchToSubscription(ILandroid/app/PendingIntent;)V
    .registers 5

    const-string v0, "callbackIntent cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/euicc/EuiccManager;

    iget-object v1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/telephony/euicc/EuiccManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2}, Landroid/telephony/euicc/EuiccManager;->switchToSubscription(ILandroid/app/PendingIntent;)V

    return-void
.end method
