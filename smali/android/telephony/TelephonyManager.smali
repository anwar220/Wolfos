# classes3.dex

.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;,
        Landroid/telephony/TelephonyManager$ModemErrorException;,
        Landroid/telephony/TelephonyManager$TimeoutException;,
        Landroid/telephony/TelephonyManager$NetworkSlicingException;,
        Landroid/telephony/TelephonyManager$PrepareUnattendedRebootResult;,
        Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;,
        Landroid/telephony/TelephonyManager$AuthenticationFailureReason;,
        Landroid/telephony/TelephonyManager$IncludeLocationData;,
        Landroid/telephony/TelephonyManager$RadioInterfaceCapability;,
        Landroid/telephony/TelephonyManager$DeathRecipient;,
        Landroid/telephony/TelephonyManager$NrDualConnectivityState;,
        Landroid/telephony/TelephonyManager$EnableNrDualConnectivityResult;,
        Landroid/telephony/TelephonyManager$MobileDataPolicy;,
        Landroid/telephony/TelephonyManager$CallWaitingStatus;,
        Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;,
        Landroid/telephony/TelephonyManager$IsMultiSimSupportedResult;,
        Landroid/telephony/TelephonyManager$UpdateAvailableNetworksResult;,
        Landroid/telephony/TelephonyManager$SetOpportunisticSubscriptionResult;,
        Landroid/telephony/TelephonyManager$NetworkTypeBitMask;,
        Landroid/telephony/TelephonyManager$DataEnabledChangedReason;,
        Landroid/telephony/TelephonyManager$DataEnabledReason;,
        Landroid/telephony/TelephonyManager$EnableVoNrResult;,
        Landroid/telephony/TelephonyManager$SetSimPowerStateResult;,
        Landroid/telephony/TelephonyManager$SetCarrierRestrictionResult;,
        Landroid/telephony/TelephonyManager$ModemActivityInfoException;,
        Landroid/telephony/TelephonyManager$SimPowerState;,
        Landroid/telephony/TelephonyManager$CdmaSubscription;,
        Landroid/telephony/TelephonyManager$UssdResponseCallback;,
        Landroid/telephony/TelephonyManager$CallComposerStatus;,
        Landroid/telephony/TelephonyManager$AllowedNetworkTypesReason;,
        Landroid/telephony/TelephonyManager$PrefNetworkMode;,
        Landroid/telephony/TelephonyManager$CellInfoCallback;,
        Landroid/telephony/TelephonyManager$EriIconMode;,
        Landroid/telephony/TelephonyManager$EriIconIndex;,
        Landroid/telephony/TelephonyManager$DataState;,
        Landroid/telephony/TelephonyManager$CallComposerException;,
        Landroid/telephony/TelephonyManager$SimState;,
        Landroid/telephony/TelephonyManager$SimCombinationWarningType;,
        Landroid/telephony/TelephonyManager$DefaultSubscriptionSelectType;,
        Landroid/telephony/TelephonyManager$CdmaRoamingMode;,
        Landroid/telephony/TelephonyManager$MultiSimVoiceCapability;,
        Landroid/telephony/TelephonyManager$MultiSimVariants;,
        Landroid/telephony/TelephonyManager$KeyType;,
        Landroid/telephony/TelephonyManager$NetworkSelectionMode;,
        Landroid/telephony/TelephonyManager$WifiCallingChoices;
    }
.end annotation


# static fields
.field public static final ACTION_ANOMALY_REPORTED:Ljava/lang/String; = "android.telephony.action.ANOMALY_REPORTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_CALL_DISCONNECT_CAUSE_CHANGED:Ljava/lang/String; = "android.intent.action.CALL_DISCONNECT_CAUSE"

.field public static final ACTION_CARRIER_MESSAGING_CLIENT_SERVICE:Ljava/lang/String; = "android.telephony.action.CARRIER_MESSAGING_CLIENT_SERVICE"

.field public static final ACTION_CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"

.field public static final ACTION_CARRIER_SIGNAL_PCO_VALUE:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_PCO_VALUE"

.field public static final ACTION_CARRIER_SIGNAL_REDIRECTED:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_REDIRECTED"

.field public static final ACTION_CARRIER_SIGNAL_REQUEST_NETWORK_FAILED:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"

.field public static final ACTION_CARRIER_SIGNAL_RESET:Ljava/lang/String; = "android.telephony.action.CARRIER_SIGNAL_RESET"

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "android.telephony.action.CONFIGURE_VOICEMAIL"

.field public static final ACTION_DATA_STALL_DETECTED:Ljava/lang/String; = "android.intent.action.DATA_STALL_DETECTED"

.field public static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_EMERGENCY_ASSISTANCE:Ljava/lang/String; = "android.telephony.action.EMERGENCY_ASSISTANCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_EMERGENCY_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_MULTI_SIM_CONFIG_CHANGED:Ljava/lang/String; = "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

.field public static final ACTION_NETWORK_COUNTRY_CHANGED:Ljava/lang/String; = "android.telephony.action.NETWORK_COUNTRY_CHANGED"

.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PRIMARY_SUBSCRIPTION_LIST_CHANGED:Ljava/lang/String; = "android.telephony.action.PRIMARY_SUBSCRIPTION_LIST_CHANGED"

.field public static final ACTION_REQUEST_OMADM_CONFIGURATION_UPDATE:Ljava/lang/String; = "com.android.omadm.service.CONFIGURATION_UPDATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final ACTION_SECRET_CODE:Ljava/lang/String; = "android.telephony.action.SECRET_CODE"

.field public static final ACTION_SERVICE_PROVIDERS_UPDATED:Ljava/lang/String; = "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

.field public static final ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SHOW_VOICEMAIL_NOTIFICATION:Ljava/lang/String; = "android.telephony.action.SHOW_VOICEMAIL_NOTIFICATION"

.field public static final ACTION_SIM_APPLICATION_STATE_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SIM_CARD_STATE_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_CARD_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SIM_SLOT_STATUS_CHANGED:Ljava/lang/String; = "android.telephony.action.SIM_SLOT_STATUS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_SUBSCRIPTION_CARRIER_IDENTITY_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

.field public static final ACTION_SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED:Ljava/lang/String; = "android.telephony.action.SUBSCRIPTION_SPECIFIC_CARRIER_IDENTITY_CHANGED"

.field public static final ALLOWED_NETWORK_TYPES_REASON_CARRIER:I = 0x2

.field public static final ALLOWED_NETWORK_TYPES_REASON_ENABLE_2G:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ALLOWED_NETWORK_TYPES_REASON_POWER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ALLOWED_NETWORK_TYPES_REASON_USER:I = 0x0

.field public static final APPTYPE_CSIM:I = 0x4

.field public static final APPTYPE_ISIM:I = 0x5

.field public static final APPTYPE_RUIM:I = 0x3

.field public static final APPTYPE_SIM:I = 0x1

.field public static final APPTYPE_UNKNOWN:I = 0x0

.field public static final APPTYPE_USIM:I = 0x2

.field public static final AUTHTYPE_EAP_AKA:I = 0x81

.field public static final AUTHTYPE_EAP_SIM:I = 0x80

.field public static final CACHE_KEY_PHONE_ACCOUNT_TO_SUBID:Ljava/lang/String; = "cache_key.telephony.phone_account_to_subid"

.field private static final CACHE_MAX_SIZE:I = 0x4

.field private static final CALLBACK_ON_MORE_ERROR_CODE_CHANGE:J = 0x7c8ba7fL

.field public static final CALL_COMPOSER_STATUS_OFF:I = 0x0

.field public static final CALL_COMPOSER_STATUS_ON:I = 0x1

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CALL_WAITING_STATUS_DISABLED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CALL_WAITING_STATUS_ENABLED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CALL_WAITING_STATUS_FDN_CHECK_FAILURE:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CALL_WAITING_STATUS_NOT_SUPPORTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CALL_WAITING_STATUS_UNKNOWN_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE:Ljava/lang/String; = "CAPABILITY_NR_DUAL_CONNECTIVITY_CONFIGURATION_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED:Ljava/lang/String; = "CAPABILITY_PHYSICAL_CHANNEL_CONFIG_1_6_SUPPORTED"

.field public static final CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE:Ljava/lang/String; = "CAPABILITY_SECONDARY_LINK_BANDWIDTH_VISIBLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_SIM_PHONEBOOK_IN_MODEM:Ljava/lang/String; = "CAPABILITY_SIM_PHONEBOOK_IN_MODEM"

.field public static final CAPABILITY_SLICING_CONFIG_SUPPORTED:Ljava/lang/String; = "CAPABILITY_SLICING_CONFIG_SUPPORTED"

.field public static final CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING:Ljava/lang/String; = "CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK:Ljava/lang/String; = "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CARD_POWER_DOWN:I = 0x0

.field public static final CARD_POWER_UP:I = 0x1

.field public static final CARD_POWER_UP_PASS_THROUGH:I = 0x2

.field public static final CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CDMA_ROAMING_MODE_AFFILIATED:I = 0x1

.field public static final CDMA_ROAMING_MODE_ANY:I = 0x2

.field public static final CDMA_ROAMING_MODE_HOME:I = 0x0

.field public static final CDMA_ROAMING_MODE_RADIO_DEFAULT:I = -0x1

.field public static final CDMA_SUBSCRIPTION_NV:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CHANGE_ICC_LOCK_SUCCESS:I = 0x7fffffff

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_DISCONNECTING:I = 0x4

.field public static final DATA_ENABLED_REASON_CARRIER:I = 0x2

.field public static final DATA_ENABLED_REASON_OVERRIDE:I = 0x4

.field public static final DATA_ENABLED_REASON_POLICY:I = 0x1

.field public static final DATA_ENABLED_REASON_THERMAL:I = 0x3

.field public static final DATA_ENABLED_REASON_UNKNOWN:I = -0x1

.field public static final DATA_ENABLED_REASON_USER:I = 0x0

.field public static final DATA_HANDOVER_IN_PROGRESS:I = 0x5

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final DEFAULT_PORT_INDEX:I = 0x0

.field public static final DEFAULT_PREFERRED_NETWORK_MODE:I

.field public static final EMERGENCY_ASSISTANCE_ENABLED:Z = true

.field public static final ENABLE_NR_DUAL_CONNECTIVITY_INVALID_STATE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ENABLE_NR_DUAL_CONNECTIVITY_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ENABLE_NR_DUAL_CONNECTIVITY_RADIO_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ENABLE_NR_DUAL_CONNECTIVITY_RADIO_NOT_AVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ENABLE_NR_DUAL_CONNECTIVITY_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ENABLE_VONR_RADIO_ERROR:I = 0x3

.field public static final ENABLE_VONR_RADIO_INVALID_STATE:I = 0x4

.field public static final ENABLE_VONR_RADIO_NOT_AVAILABLE:I = 0x2

.field public static final ENABLE_VONR_REQUEST_NOT_SUPPORTED:I = 0x5

.field public static final ENABLE_VONR_SUCCESS:I = 0x0

.field public static final ERI_FLASH:I = 0x2

.field public static final ERI_ICON_MODE_FLASH:I = 0x1

.field public static final ERI_ICON_MODE_NORMAL:I = 0x0

.field public static final ERI_OFF:I = 0x1

.field public static final ERI_ON:I = 0x0

.field public static final EVENT_CALL_FORWARDED:Ljava/lang/String; = "android.telephony.event.EVENT_CALL_FORWARDED"

.field public static final EVENT_DOWNGRADE_DATA_DISABLED:Ljava/lang/String; = "android.telephony.event.EVENT_DOWNGRADE_DATA_DISABLED"

.field public static final EVENT_DOWNGRADE_DATA_LIMIT_REACHED:Ljava/lang/String; = "android.telephony.event.EVENT_DOWNGRADE_DATA_LIMIT_REACHED"

.field public static final EVENT_HANDOVER_TO_WIFI_FAILED:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_TO_WIFI_FAILED"

.field public static final EVENT_HANDOVER_VIDEO_FROM_LTE_TO_WIFI:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_LTE_TO_WIFI"

.field public static final EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE:Ljava/lang/String; = "android.telephony.event.EVENT_HANDOVER_VIDEO_FROM_WIFI_TO_LTE"

.field public static final EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC:Ljava/lang/String; = "android.telephony.event.EVENT_NOTIFY_INTERNATIONAL_CALL_ON_WFC"

.field public static final EVENT_SUPPLEMENTARY_SERVICE_NOTIFICATION:Ljava/lang/String; = "android.telephony.event.EVENT_SUPPLEMENTARY_SERVICE_NOTIFICATION"

.field public static final EXCEPTION_RESULT_KEY:Ljava/lang/String; = "exception"

.field public static final EXTRA_ACTIVE_SIM_SUPPORTED_COUNT:Ljava/lang/String; = "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

.field public static final EXTRA_ANOMALY_DESCRIPTION:Ljava/lang/String; = "android.telephony.extra.ANOMALY_DESCRIPTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_ANOMALY_ID:Ljava/lang/String; = "android.telephony.extra.ANOMALY_ID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_APN_PROTOCOL:Ljava/lang/String; = "android.telephony.extra.APN_PROTOCOL"

.field public static final EXTRA_APN_TYPE:Ljava/lang/String; = "android.telephony.extra.APN_TYPE"

.field public static final EXTRA_CALL_VOICEMAIL_INTENT:Ljava/lang/String; = "android.telephony.extra.CALL_VOICEMAIL_INTENT"

.field public static final EXTRA_CARRIER_ID:Ljava/lang/String; = "android.telephony.extra.CARRIER_ID"

.field public static final EXTRA_CARRIER_NAME:Ljava/lang/String; = "android.telephony.extra.CARRIER_NAME"

.field public static final EXTRA_DATA_FAIL_CAUSE:Ljava/lang/String; = "android.telephony.extra.DATA_FAIL_CAUSE"

.field public static final EXTRA_DATA_SPN:Ljava/lang/String; = "android.telephony.extra.DATA_SPN"

.field public static final EXTRA_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "android.telephony.extra.DEFAULT_NETWORK_AVAILABLE"

.field public static final EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE:Ljava/lang/String; = "android.telephony.extra.DEFAULT_SUBSCRIPTION_SELECT_TYPE"

.field public static final EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_ALL:I = 0x4

.field public static final EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_DATA:I = 0x1

.field public static final EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_DISMISS:I = 0x5

.field public static final EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_NONE:I = 0x0

.field public static final EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_SMS:I = 0x3

.field public static final EXTRA_DEFAULT_SUBSCRIPTION_SELECT_TYPE_VOICE:I = 0x2

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_HIDE_PUBLIC_SETTINGS:Ljava/lang/String; = "android.telephony.extra.HIDE_PUBLIC_SETTINGS"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_IS_REFRESH:Ljava/lang/String; = "android.telephony.extra.IS_REFRESH"

.field public static final EXTRA_LAST_KNOWN_NETWORK_COUNTRY:Ljava/lang/String; = "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

.field public static final EXTRA_LAUNCH_VOICEMAIL_SETTINGS_INTENT:Ljava/lang/String; = "android.telephony.extra.LAUNCH_VOICEMAIL_SETTINGS_INTENT"

.field public static final EXTRA_NETWORK_COUNTRY:Ljava/lang/String; = "android.telephony.extra.NETWORK_COUNTRY"

.field public static final EXTRA_NOTIFICATION_CODE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_CODE"

.field public static final EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_COUNT"

.field public static final EXTRA_NOTIFICATION_MESSAGE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_MESSAGE"

.field public static final EXTRA_NOTIFICATION_TYPE:Ljava/lang/String; = "android.telephony.extra.NOTIFICATION_TYPE"

.field public static final EXTRA_PCO_ID:Ljava/lang/String; = "android.telephony.extra.PCO_ID"

.field public static final EXTRA_PCO_VALUE:Ljava/lang/String; = "android.telephony.extra.PCO_VALUE"

.field public static final EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telephony.extra.PHONE_ACCOUNT_HANDLE"

.field public static final EXTRA_PHONE_IN_ECM_STATE:Ljava/lang/String; = "android.telephony.extra.PHONE_IN_ECM_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PHONE_IN_EMERGENCY_CALL:Ljava/lang/String; = "android.telephony.extra.PHONE_IN_EMERGENCY_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_PLMN:Ljava/lang/String; = "android.telephony.extra.PLMN"

.field public static final EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final EXTRA_RECOVERY_ACTION:Ljava/lang/String; = "recoveryAction"

.field public static final EXTRA_REDIRECTION_URL:Ljava/lang/String; = "android.telephony.extra.REDIRECTION_URL"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "android.telephony.extra.SHOW_PLMN"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "android.telephony.extra.SHOW_SPN"

.field public static final EXTRA_SIM_COMBINATION_NAMES:Ljava/lang/String; = "android.telephony.extra.SIM_COMBINATION_NAMES"

.field public static final EXTRA_SIM_COMBINATION_WARNING_TYPE:Ljava/lang/String; = "android.telephony.extra.SIM_COMBINATION_WARNING_TYPE"

.field public static final EXTRA_SIM_COMBINATION_WARNING_TYPE_DUAL_CDMA:I = 0x1

.field public static final EXTRA_SIM_COMBINATION_WARNING_TYPE_NONE:I = 0x0

.field public static final EXTRA_SIM_STATE:Ljava/lang/String; = "android.telephony.extra.SIM_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_SPECIFIC_CARRIER_ID:Ljava/lang/String; = "android.telephony.extra.SPECIFIC_CARRIER_ID"

.field public static final EXTRA_SPECIFIC_CARRIER_NAME:Ljava/lang/String; = "android.telephony.extra.SPECIFIC_CARRIER_NAME"

.field public static final EXTRA_SPN:Ljava/lang/String; = "android.telephony.extra.SPN"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final EXTRA_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.extra.SUBSCRIPTION_ID"

.field public static final EXTRA_VISUAL_VOICEMAIL_ENABLED_BY_USER_BOOL:Ljava/lang/String; = "android.telephony.extra.VISUAL_VOICEMAIL_ENABLED_BY_USER_BOOL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final EXTRA_VOICEMAIL_NUMBER:Ljava/lang/String; = "android.telephony.extra.VOICEMAIL_NUMBER"

.field public static final EXTRA_VOICEMAIL_SCRAMBLED_PIN_STRING:Ljava/lang/String; = "android.telephony.extra.VOICEMAIL_SCRAMBLED_PIN_STRING"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GBA_FAILURE_REASON_FEATURE_NOT_READY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GBA_FAILURE_REASON_FEATURE_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GBA_FAILURE_REASON_INCORRECT_NAF_ID:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GBA_FAILURE_REASON_NETWORK_FAILURE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GBA_FAILURE_REASON_SECURITY_PROTOCOL_NOT_SUPPORTED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final GBA_FAILURE_REASON_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final GET_DATA_STATE_R_VERSION:J = 0x8da744cL

.field public static final INCLUDE_LOCATION_DATA_COARSE:I = 0x1

.field public static final INCLUDE_LOCATION_DATA_FINE:I = 0x2

.field public static final INCLUDE_LOCATION_DATA_NONE:I = 0x0

.field public static final INDICATION_FILTER_DATA_CALL_DORMANCY_CHANGED:I = 0x4

.field public static final INDICATION_FILTER_FULL_NETWORK_STATE:I = 0x2

.field public static final INDICATION_FILTER_LINK_CAPACITY_ESTIMATE:I = 0x8

.field public static final INDICATION_FILTER_PHYSICAL_CHANNEL_CONFIG:I = 0x10

.field public static final INDICATION_FILTER_SIGNAL_STRENGTH:I = 0x1

.field public static final INVALID_EMERGENCY_NUMBER_DB_VERSION:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INVALID_PORT_INDEX:I = -0x1

.field public static final KEY_CALL_COMPOSER_PICTURE_HANDLE:Ljava/lang/String; = "call_composer_picture_handle"

.field public static final KEY_SLICING_CONFIG_HANDLE:Ljava/lang/String; = "slicing_config_handle"

.field public static final KEY_TYPE_EPDG:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final KEY_TYPE_WLAN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final MAXIMUM_CALL_COMPOSER_PICTURE_SIZE:I = 0x13880

.field private static final MAX_NUMBER_VERIFICATION_TIMEOUT_MILLIS:J = 0xea60L

.field public static final METADATA_HIDE_VOICEMAIL_SETTINGS_MENU:Ljava/lang/String; = "android.telephony.HIDE_VOICEMAIL_SETTINGS_MENU"

.field public static final MOBILE_DATA_POLICY_DATA_ON_NON_DEFAULT_DURING_VOICE_CALL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MOBILE_DATA_POLICY_MMS_ALWAYS_ALLOWED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MODEM_ACTIVITY_RESULT_KEY:Ljava/lang/String; = "controller_activity"

.field public static final MULTISIM_ALLOWED:I = 0x0

.field public static final MULTISIM_NOT_SUPPORTED_BY_CARRIER:I = 0x2

.field public static final MULTISIM_NOT_SUPPORTED_BY_HARDWARE:I = 0x1

.field public static final NETWORK_CLASS_BITMASK_2G:J = 0x804bL

.field public static final NETWORK_CLASS_BITMASK_3G:J = 0x16bb4L

.field public static final NETWORK_CLASS_BITMASK_4G:J = 0x61000L

.field public static final NETWORK_CLASS_BITMASK_5G:J = 0x80000L

.field public static final NETWORK_MODE_CDMA_EVDO:I = 0x4

.field public static final NETWORK_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NETWORK_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NETWORK_MODE_GLOBAL:I = 0x7

.field public static final NETWORK_MODE_GSM_ONLY:I = 0x1

.field public static final NETWORK_MODE_GSM_UMTS:I = 0x3

.field public static final NETWORK_MODE_LTE_CDMA_EVDO:I = 0x8

.field public static final NETWORK_MODE_LTE_CDMA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NETWORK_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NETWORK_MODE_LTE_ONLY:I = 0xb

.field public static final NETWORK_MODE_LTE_TDSCDMA:I = 0xf

.field public static final NETWORK_MODE_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x16

.field public static final NETWORK_MODE_LTE_TDSCDMA_GSM:I = 0x11

.field public static final NETWORK_MODE_LTE_TDSCDMA_GSM_WCDMA:I = 0x14

.field public static final NETWORK_MODE_LTE_TDSCDMA_WCDMA:I = 0x13

.field public static final NETWORK_MODE_LTE_WCDMA:I = 0xc

.field public static final NETWORK_MODE_NR_LTE:I = 0x18

.field public static final NETWORK_MODE_NR_LTE_CDMA_EVDO:I = 0x19

.field public static final NETWORK_MODE_NR_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x1b

.field public static final NETWORK_MODE_NR_LTE_GSM_WCDMA:I = 0x1a

.field public static final NETWORK_MODE_NR_LTE_TDSCDMA:I = 0x1d

.field public static final NETWORK_MODE_NR_LTE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x21

.field public static final NETWORK_MODE_NR_LTE_TDSCDMA_GSM:I = 0x1e

.field public static final NETWORK_MODE_NR_LTE_TDSCDMA_GSM_WCDMA:I = 0x20

.field public static final NETWORK_MODE_NR_LTE_TDSCDMA_WCDMA:I = 0x1f

.field public static final NETWORK_MODE_NR_LTE_WCDMA:I = 0x1c

.field public static final NETWORK_MODE_NR_ONLY:I = 0x17

.field public static final NETWORK_MODE_TDSCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x15

.field public static final NETWORK_MODE_TDSCDMA_GSM:I = 0x10

.field public static final NETWORK_MODE_TDSCDMA_GSM_WCDMA:I = 0x12

.field public static final NETWORK_MODE_TDSCDMA_ONLY:I = 0xd

.field public static final NETWORK_MODE_TDSCDMA_WCDMA:I = 0xe

.field public static final NETWORK_MODE_WCDMA_ONLY:I = 0x2

.field public static final NETWORK_MODE_WCDMA_PREF:I = 0x0

.field public static final NETWORK_SELECTION_MODE_AUTO:I = 0x1

.field public static final NETWORK_SELECTION_MODE_MANUAL:I = 0x2

.field public static final NETWORK_SELECTION_MODE_UNKNOWN:I = 0x0

.field public static final NETWORK_STANDARDS_FAMILY_BITMASK_3GPP:J = 0xdd387L

.field public static final NETWORK_STANDARDS_FAMILY_BITMASK_3GPP2:J = 0x2878L

.field private static final NETWORK_TYPES:[I

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_BITMASK_1xRTT:J = 0x40L

.field public static final NETWORK_TYPE_BITMASK_CDMA:J = 0x8L

.field public static final NETWORK_TYPE_BITMASK_EDGE:J = 0x2L

.field public static final NETWORK_TYPE_BITMASK_EHRPD:J = 0x2000L

.field public static final NETWORK_TYPE_BITMASK_EVDO_0:J = 0x10L

.field public static final NETWORK_TYPE_BITMASK_EVDO_A:J = 0x20L

.field public static final NETWORK_TYPE_BITMASK_EVDO_B:J = 0x800L

.field public static final NETWORK_TYPE_BITMASK_GPRS:J = 0x1L

.field public static final NETWORK_TYPE_BITMASK_GSM:J = 0x8000L

.field public static final NETWORK_TYPE_BITMASK_HSDPA:J = 0x80L

.field public static final NETWORK_TYPE_BITMASK_HSPA:J = 0x200L

.field public static final NETWORK_TYPE_BITMASK_HSPAP:J = 0x4000L

.field public static final NETWORK_TYPE_BITMASK_HSUPA:J = 0x100L

.field public static final NETWORK_TYPE_BITMASK_IWLAN:J = 0x20000L

.field public static final NETWORK_TYPE_BITMASK_LTE:J = 0x1000L

.field public static final NETWORK_TYPE_BITMASK_LTE_CA:J = 0x40000L

.field public static final NETWORK_TYPE_BITMASK_NR:J = 0x80000L

.field public static final NETWORK_TYPE_BITMASK_TD_SCDMA:J = 0x10000L

.field public static final NETWORK_TYPE_BITMASK_UMTS:J = 0x4L

.field public static final NETWORK_TYPE_BITMASK_UNKNOWN:J = 0x0L

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_LTE_CA:I = 0x13

.field public static final NETWORK_TYPE_NR:I = 0x14

.field public static final NETWORK_TYPE_NR_CA:I = 0x1e

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final NR_DUAL_CONNECTIVITY_DISABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NR_DUAL_CONNECTIVITY_DISABLE_IMMEDIATE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NR_DUAL_CONNECTIVITY_ENABLE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final NULL_TELEPHONY_THROW_NO_CB:J = 0xadbeeaaL

.field public static final OTASP_NEEDED:I = 0x2

.field public static final OTASP_NOT_NEEDED:I = 0x3

.field public static final OTASP_SIM_UNPROVISIONED:I = 0x5

.field public static final OTASP_UNINITIALIZED:I = 0x0

.field public static final OTASP_UNKNOWN:I = 0x1

.field public static final PHONE_PROCESS_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_IMS:I = 0x5

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final PHONE_TYPE_THIRD_PARTY:I = 0x4

.field public static final PREPARE_UNATTENDED_REBOOT_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PREPARE_UNATTENDED_REBOOT_PIN_REQUIRED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PREPARE_UNATTENDED_REBOOT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RADIO_POWER_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RADIO_POWER_ON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final RADIO_POWER_UNAVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SET_CARRIER_RESTRICTION_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SET_CARRIER_RESTRICTION_NOT_SUPPORTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SET_CARRIER_RESTRICTION_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SET_OPPORTUNISTIC_SUB_INACTIVE_SUBSCRIPTION:I = 0x2

.field public static final SET_OPPORTUNISTIC_SUB_NO_OPPORTUNISTIC_SUB_AVAILABLE:I = 0x3

.field public static final SET_OPPORTUNISTIC_SUB_REMOTE_SERVICE_EXCEPTION:I = 0x4

.field public static final SET_OPPORTUNISTIC_SUB_SUCCESS:I = 0x0

.field public static final SET_OPPORTUNISTIC_SUB_VALIDATION_FAILED:I = 0x1

.field public static final SET_SIM_POWER_STATE_ALREADY_IN_STATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SET_SIM_POWER_STATE_MODEM_ERROR:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SET_SIM_POWER_STATE_NOT_SUPPORTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SET_SIM_POWER_STATE_SIM_ERROR:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SET_SIM_POWER_STATE_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_ACTIVATION_STATE_ACTIVATED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_ACTIVATION_STATE_ACTIVATING:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_ACTIVATION_STATE_DEACTIVATED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_ACTIVATION_STATE_RESTRICTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_ACTIVATION_STATE_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x8

.field public static final SIM_STATE_CARD_RESTRICTED:I = 0x9

.field public static final SIM_STATE_LOADED:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_NOT_READY:I = 0x6

.field public static final SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PRESENT:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field public static final SRVCC_STATE_HANDOVER_CANCELED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SRVCC_STATE_HANDOVER_COMPLETED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SRVCC_STATE_HANDOVER_FAILED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SRVCC_STATE_HANDOVER_NONE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SRVCC_STATE_HANDOVER_STARTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final THERMAL_MITIGATION_RESULT_INVALID_STATE:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final THERMAL_MITIGATION_RESULT_MODEM_ERROR:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final THERMAL_MITIGATION_RESULT_MODEM_NOT_AVAILABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final THERMAL_MITIGATION_RESULT_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final THERMAL_MITIGATION_RESULT_UNKNOWN_ERROR:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final UNINITIALIZED_CARD_ID:I = -0x2

.field public static final UNKNOWN_CARRIER_ID:I = -0x1

.field public static final UNKNOWN_CARRIER_ID_LIST_VERSION:I = -0x1

.field public static final UNSUPPORTED_CARD_ID:I = -0x1

.field public static final UPDATE_AVAILABLE_NETWORKS_ABORTED:I = 0x2

.field public static final UPDATE_AVAILABLE_NETWORKS_DISABLE_MODEM_FAIL:I = 0x5

.field public static final UPDATE_AVAILABLE_NETWORKS_ENABLE_MODEM_FAIL:I = 0x6

.field public static final UPDATE_AVAILABLE_NETWORKS_INVALID_ARGUMENTS:I = 0x3

.field public static final UPDATE_AVAILABLE_NETWORKS_MULTIPLE_NETWORKS_NOT_SUPPORTED:I = 0x7

.field public static final UPDATE_AVAILABLE_NETWORKS_NO_CARRIER_PRIVILEGE:I = 0x4

.field public static final UPDATE_AVAILABLE_NETWORKS_NO_OPPORTUNISTIC_SUB_AVAILABLE:I = 0x8

.field public static final UPDATE_AVAILABLE_NETWORKS_REMOTE_SERVICE_EXCEPTION:I = 0x9

.field public static final UPDATE_AVAILABLE_NETWORKS_SERVICE_IS_DISABLED:I = 0xa

.field public static final UPDATE_AVAILABLE_NETWORKS_SIM_PORT_NOT_AVAILABLE:I = 0xb

.field public static final UPDATE_AVAILABLE_NETWORKS_SUCCESS:I = 0x0

.field public static final UPDATE_AVAILABLE_NETWORKS_UNKNOWN_FAILURE:I = 0x1

.field public static final USSD_ERROR_SERVICE_UNAVAIL:I = -0x2

.field public static final USSD_RESPONSE:Ljava/lang/String; = "USSD_RESPONSE"

.field public static final USSD_RETURN_FAILURE:I = -0x1

.field public static final USSD_RETURN_SUCCESS:I = 0x64

.field public static final VVM_TYPE_CVVM:Ljava/lang/String; = "vvm_type_cvvm"

.field public static final VVM_TYPE_OMTP:Ljava/lang/String; = "vvm_type_omtp"

.field private static final WECHAT_PKG_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static final sCacheLock:Ljava/lang/Object;

.field private static sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

.field private static sISms:Lcom/android/internal/telephony/ISms;

.field private static sISub:Lcom/android/internal/telephony/ISub;

.field private static sITelephony:Lcom/android/internal/telephony/ITelephony;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

.field private static sServiceHandleCacheEnabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

.field private mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Landroid/telephony/TelephonyManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetITelephony(Landroid/telephony/TelephonyManager;)Lcom/android/internal/telephony/ITelephony;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/TelephonyManager;->createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smresetServiceCache()V
    .registers 0

    invoke-static {}, Landroid/telephony/TelephonyManager;->resetServiceCache()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    new-instance v0, Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager$DeathRecipient;-><init>(Landroid/telephony/TelephonyManager$DeathRecipient-IA;)V

    sput-object v0, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Landroid/telephony/TelephonyManager;->NETWORK_TYPES:[I

    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    sput v0, Landroid/telephony/TelephonyManager;->DEFAULT_PREFERRED_NETWORK_MODE:I

    return-void

    nop

    :array_40
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
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/TelephonyManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.telephony.phone_account_to_subid"

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/TelephonyManager$1;-><init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/TelephonyManager$1;

    const/4 v1, 0x4

    const-string v2, "cache_key.telephony.phone_account_to_subid"

    invoke-direct {v0, p0, v1, v2}, Landroid/telephony/TelephonyManager$1;-><init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    iput p2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/telephony/TelephonyManager;->mergeAttributionAndRenouncedPermissions(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private checkNetworkTypeBitmask(J)J
    .registers 9

    const-wide/32 v0, 0x40000

    and-long v2, p1, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    :cond_f
    return-wide p1
.end method

.method public static convertNetworkTypeBitmaskToString(J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda11;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "UNKNOWN"

    goto :goto_30

    :cond_2f
    move-object v1, v0

    :goto_30
    return-object v1
.end method

.method private static createThrowableByClassName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Throwable;
    .registers 7

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    :try_start_4
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_1e
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_4 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_1e} :catch_1f

    return-object v1

    :catch_1f
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static disableServiceHandleCaching()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    return-void
.end method

.method public static enableServiceHandleCaching()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getAllNetworkTypes()[I
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    sget-object v0, Landroid/telephony/TelephonyManager;->NETWORK_TYPES:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static getAllNetworkTypesBitmask()J
    .registers 2

    const-wide/32 v0, 0xdfbff

    return-wide v0
.end method

.method private getAttributionTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBitMaskForNetworkType(I)J
    .registers 3

    packed-switch p0, :pswitch_data_48

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_6  #0x14
    const-wide/32 v0, 0x80000

    return-wide v0

    :pswitch_a  #0x13
    const-wide/32 v0, 0x40000

    return-wide v0

    :pswitch_e  #0x12
    const-wide/32 v0, 0x20000

    return-wide v0

    :pswitch_12  #0x11
    const-wide/32 v0, 0x10000

    return-wide v0

    :pswitch_16  #0x10
    const-wide/32 v0, 0x8000

    return-wide v0

    :pswitch_1a  #0xf
    const-wide/16 v0, 0x4000

    return-wide v0

    :pswitch_1d  #0xe
    const-wide/16 v0, 0x2000

    return-wide v0

    :pswitch_20  #0xd
    const-wide/16 v0, 0x1000

    return-wide v0

    :pswitch_23  #0xc
    const-wide/16 v0, 0x800

    return-wide v0

    :pswitch_26  #0xb
    const-wide/16 v0, 0x400

    return-wide v0

    :pswitch_29  #0xa
    const-wide/16 v0, 0x200

    return-wide v0

    :pswitch_2c  #0x9
    const-wide/16 v0, 0x100

    return-wide v0

    :pswitch_2f  #0x8
    const-wide/16 v0, 0x80

    return-wide v0

    :pswitch_32  #0x7
    const-wide/16 v0, 0x40

    return-wide v0

    :pswitch_35  #0x6
    const-wide/16 v0, 0x20

    return-wide v0

    :pswitch_38  #0x5
    const-wide/16 v0, 0x10

    return-wide v0

    :pswitch_3b  #0x4
    const-wide/16 v0, 0x8

    return-wide v0

    :pswitch_3e  #0x3
    const-wide/16 v0, 0x4

    return-wide v0

    :pswitch_41  #0x2
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_44  #0x1
    const-wide/16 v0, 0x1

    return-wide v0

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_44  #00000001
        :pswitch_41  #00000002
        :pswitch_3e  #00000003
        :pswitch_3b  #00000004
        :pswitch_38  #00000005
        :pswitch_35  #00000006
        :pswitch_32  #00000007
        :pswitch_2f  #00000008
        :pswitch_2c  #00000009
        :pswitch_29  #0000000a
        :pswitch_26  #0000000b
        :pswitch_23  #0000000c
        :pswitch_20  #0000000d
        :pswitch_1d  #0000000e
        :pswitch_1a  #0000000f
        :pswitch_16  #00000010
        :pswitch_12  #00000011
        :pswitch_e  #00000012
        :pswitch_a  #00000013
        :pswitch_6  #00000014
    .end packed-switch
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getFirstActivePortIndex(I)I
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    if-eqz v0, :cond_37

    if-ltz p1, :cond_37

    array-length v1, v0

    if-ge p1, v1, :cond_37

    aget-object v1, v0, p1

    if-eqz v1, :cond_37

    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v2

    return v2

    :cond_37
    const/4 v1, -0x1

    return v1
.end method

.method private getIOns()Lcom/android/internal/telephony/IOns;
    .registers 2

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getOpportunisticNetworkServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IOns$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOns;

    move-result-object v0

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 6

    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0

    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_48

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_45

    if-nez v2, :cond_43

    if-eqz v0, :cond_43

    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    goto :goto_43

    :catch_3f
    move-exception v2

    const/4 v3, 0x0

    :try_start_41
    sput-object v3, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    :cond_43
    :goto_43
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2

    :cond_48
    :goto_48
    sget-object v0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-ltz p2, :cond_1d

    array-length v2, v1

    if-ge p2, v2, :cond_1d

    aget-object v2, v1, p2

    if-eqz v2, :cond_1d

    :try_start_15
    aget-object v2, v1, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c

    return v2

    :catch_1c
    move-exception v2

    :cond_1d
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLocationData()I
    .registers 4

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_1a

    const/4 v2, 0x0

    return v2

    :cond_1a
    if-eqz v1, :cond_1e

    const/4 v2, 0x1

    return v2

    :cond_1e
    const/4 v2, 0x2

    return v2
.end method

.method private getLogicalSlotIndex(II)I
    .registers 7

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    if-eqz v0, :cond_31

    if-ltz p1, :cond_31

    array-length v1, v0

    if-ge p1, v1, :cond_31

    aget-object v1, v0, p1

    if-eqz v1, :cond_31

    aget-object v1, v0, p1

    invoke-virtual {v1}, Landroid/telephony/UiccSlotInfo;->getPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/UiccPortInfo;

    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getPortIndex()I

    move-result v3

    if-ne v3, p2, :cond_30

    invoke-virtual {v2}, Landroid/telephony/UiccPortInfo;->getLogicalSlotIndex()I

    move-result v1

    return v1

    :cond_30
    goto :goto_19

    :cond_31
    const/4 v1, -0x1

    return v1
.end method

.method public static getMaxNumberVerificationTimeoutMillis()J
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static getMaximumCallComposerPictureSize()J
    .registers 2

    const-wide/32 v0, 0x13880

    return-wide v0
.end method

.method private getNaiBySubscriberId(I)Ljava/lang/String;
    .registers 8

    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    if-nez v2, :cond_a

    return-object v1

    :cond_a
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nai = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_37} :catch_3a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_37} :catch_38

    :cond_37
    return-object v3

    :catch_38
    move-exception v0

    return-object v1

    :catch_3a
    move-exception v0

    return-object v1
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_60

    :pswitch_3  #0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1d  #0x1e
    const-string v0, "NR_CA"

    return-object v0

    :pswitch_20  #0x14
    const-string v0, "NR"

    return-object v0

    :pswitch_23  #0x13
    const-string v0, "LTE_CA"

    return-object v0

    :pswitch_26  #0x12
    const-string v0, "IWLAN"

    return-object v0

    :pswitch_29  #0x11
    const-string v0, "TD_SCDMA"

    return-object v0

    :pswitch_2c  #0x10
    const-string v0, "GSM"

    return-object v0

    :pswitch_2f  #0xf
    const-string v0, "HSPA+"

    return-object v0

    :pswitch_32  #0xe
    const-string v0, "CDMA - eHRPD"

    return-object v0

    :pswitch_35  #0xd
    const-string v0, "LTE"

    return-object v0

    :pswitch_38  #0xc
    const-string v0, "CDMA - EvDo rev. B"

    return-object v0

    :pswitch_3b  #0xb
    const-string/jumbo v0, "iDEN"

    return-object v0

    :pswitch_3f  #0xa
    const-string v0, "HSPA"

    return-object v0

    :pswitch_42  #0x9
    const-string v0, "HSUPA"

    return-object v0

    :pswitch_45  #0x8
    const-string v0, "HSDPA"

    return-object v0

    :pswitch_48  #0x7
    const-string v0, "CDMA - 1xRTT"

    return-object v0

    :pswitch_4b  #0x6
    const-string v0, "CDMA - EvDo rev. A"

    return-object v0

    :pswitch_4e  #0x5
    const-string v0, "CDMA - EvDo rev. 0"

    return-object v0

    :pswitch_51  #0x4
    const-string v0, "CDMA"

    return-object v0

    :pswitch_54  #0x3
    const-string v0, "UMTS"

    return-object v0

    :pswitch_57  #0x2
    const-string v0, "EDGE"

    return-object v0

    :pswitch_5a  #0x1
    const-string v0, "GPRS"

    return-object v0

    :pswitch_5d  #0x0
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5d  #00000000
        :pswitch_5a  #00000001
        :pswitch_57  #00000002
        :pswitch_54  #00000003
        :pswitch_51  #00000004
        :pswitch_4e  #00000005
        :pswitch_4b  #00000006
        :pswitch_48  #00000007
        :pswitch_45  #00000008
        :pswitch_42  #00000009
        :pswitch_3f  #0000000a
        :pswitch_3b  #0000000b
        :pswitch_38  #0000000c
        :pswitch_35  #0000000d
        :pswitch_32  #0000000e
        :pswitch_2f  #0000000f
        :pswitch_2c  #00000010
        :pswitch_29  #00000011
        :pswitch_26  #00000012
        :pswitch_23  #00000013
        :pswitch_20  #00000014
        :pswitch_3  #00000015
        :pswitch_3  #00000016
        :pswitch_3  #00000017
        :pswitch_3  #00000018
        :pswitch_3  #00000019
        :pswitch_3  #0000001a
        :pswitch_3  #0000001b
        :pswitch_3  #0000001c
        :pswitch_3  #0000001d
        :pswitch_1d  #0000001e
    .end packed-switch
.end method

.method private getOpPackageName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    :try_start_11
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v2

    return-object v1

    :catch_18
    move-exception v2

    return-object v1
.end method

.method private getPhoneId()I
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private getPhoneId(I)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getPhoneType(I)I
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_20

    return v1

    :pswitch_6  #0xb
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->lte_on_cdma_device()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1c

    return v0

    :cond_1c
    return v1

    :pswitch_1d  #0x7, 0x8, 0x15
    return v0

    :pswitch_1e  #0x4, 0x5, 0x6
    return v0

    :pswitch_1f  #0x0, 0x1, 0x2, 0x3, 0x9, 0xa, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x16
    return v1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1f  #00000000
        :pswitch_1f  #00000001
        :pswitch_1f  #00000002
        :pswitch_1f  #00000003
        :pswitch_1e  #00000004
        :pswitch_1e  #00000005
        :pswitch_1e  #00000006
        :pswitch_1d  #00000007
        :pswitch_1d  #00000008
        :pswitch_1f  #00000009
        :pswitch_1f  #0000000a
        :pswitch_6  #0000000b
        :pswitch_1f  #0000000c
        :pswitch_1f  #0000000d
        :pswitch_1f  #0000000e
        :pswitch_1f  #0000000f
        :pswitch_1f  #00000010
        :pswitch_1f  #00000011
        :pswitch_1f  #00000012
        :pswitch_1f  #00000013
        :pswitch_1f  #00000014
        :pswitch_1d  #00000015
        :pswitch_1f  #00000016
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .registers 4

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->default_network()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    return v1

    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method private getPhoneTypeFromProperty()I
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromProperty(I)I
    .registers 4

    nop

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->current_active_phone()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_13
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    return v1
.end method

.method private getRenouncedPermissions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getServiceStateForSubscriber(IZZ)Landroid/telephony/ServiceState;
    .registers 11

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_18

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->getServiceStateForSubscriber(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_17} :catch_19

    return-object v1

    :cond_18
    goto :goto_46

    :catch_19
    move-exception v0

    nop

    const-string v1, "a3ab0b9d-f2aa-4baf-911d-7096c0d4645a"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceStateForSubscriber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NPE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_47

    :catch_3e
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getServiceStateForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_46
    nop

    :goto_47
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSimApplicationStateFromSimState(I)I
    .registers 3

    sparse-switch p1, :sswitch_data_8

    return p1

    :sswitch_4
    const/4 v0, 0x6

    return v0

    :sswitch_6
    const/4 v0, 0x0

    return v0

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x5 -> :sswitch_4
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
    .end sparse-switch
.end method

.method private getSimCardStateFromSimState(I)I
    .registers 3

    sparse-switch p1, :sswitch_data_8

    const/16 v0, 0xb

    return v0

    :sswitch_6
    return p1

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getSimCountryIso(I)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSimCountryIsoForPhone(I)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getSimStateIncludingLoaded()I
    .registers 7

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    if-gez v0, :cond_66

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const-string v3, "getSimState: default sim:"

    const-string v4, "TelephonyManager"

    const/4 v5, 0x1

    if-ge v1, v2, :cond_4b

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    if-eq v2, v5, :cond_48

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", sim state for slotIndex="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", return state as unknown"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", all SIMs absent, return state as absent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_66
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v1

    return v1
.end method

.method static getSmsService()Lcom/android/internal/telephony/ISms;
    .registers 5

    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0

    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    if-nez v0, :cond_48

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_45

    if-nez v2, :cond_43

    if-eqz v0, :cond_43

    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    goto :goto_43

    :catch_3f
    move-exception v2

    const/4 v3, 0x0

    :try_start_41
    sput-object v3, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    :cond_43
    :goto_43
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2

    :cond_48
    :goto_48
    sget-object v0, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    return-object v0
.end method

.method private getSubId()I
    .registers 2

    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0

    :cond_b
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    return v0
.end method

.method private getSubId(I)I
    .registers 3

    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    return v0

    :cond_b
    return p1
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method static getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 5

    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0

    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    if-nez v0, :cond_48

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_45

    if-nez v2, :cond_43

    if-eqz v0, :cond_43

    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    invoke-interface {v0}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    goto :goto_43

    :catch_3f
    move-exception v2

    const/4 v3, 0x0

    :try_start_41
    sput-object v3, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    :cond_43
    :goto_43
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2

    :cond_48
    :goto_48
    sget-object v0, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    return-object v0
.end method

.method static getSubscriptionService()Lcom/android/internal/telephony/ISub;
    .registers 5

    sget-boolean v0, Landroid/telephony/TelephonyManager;->sServiceHandleCacheEnabled:Z

    if-nez v0, :cond_15

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    return-object v0

    :cond_15
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    if-nez v0, :cond_48

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    sget-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_45

    if-nez v2, :cond_43

    if-eqz v0, :cond_43

    :try_start_32
    sput-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_3f
    .catchall {:try_start_32 .. :try_end_3e} :catchall_45

    goto :goto_43

    :catch_3f
    move-exception v2

    const/4 v3, 0x0

    :try_start_41
    sput-object v3, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    :cond_43
    :goto_43
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception v2

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_45

    throw v2

    :cond_48
    :goto_48
    sget-object v0, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    return-object v0
.end method

.method private static getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p0, :cond_d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_d

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_d
    if-eqz v0, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    move-object v1, p2

    :goto_12
    return-object v1
.end method

.method public static getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-ltz p0, :cond_1e

    array-length v3, v2

    if-ge p0, v3, :cond_1e

    aget-object v3, v2, p0

    if-eqz v3, :cond_1e

    aget-object v0, v2, p0

    :cond_1e
    if-nez v0, :cond_22

    move-object v2, p2

    goto :goto_23

    :cond_22
    move-object v2, v0

    :goto_23
    return-object v2
.end method

.method public static getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public static isConcurrentCallsPossible()Z
    .registers 3

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_voice_capability()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private isDataEnabledForReason(II)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->isDataEnabledForReason(II)Z

    move-result v1

    return v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#isDataEnabledForReason RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method private isImsiEncryptionRequired(II)Z
    .registers 7

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    :cond_e
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    const-string/jumbo v1, "imsi_key_availability_int"

    invoke-virtual {v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p2}, Landroid/telephony/TelephonyManager;->isKeyEnabled(II)Z

    move-result v3

    return v3
.end method

.method private static isKeyEnabled(II)Z
    .registers 4

    add-int/lit8 v0, p1, -0x1

    shr-int v0, p0, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public static isNetworkTypeValid(I)Z
    .registers 2

    if-ltz p0, :cond_8

    const/16 v0, 0x14

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static isSlotMappingValid(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v1}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_36

    return v3

    :cond_36
    goto :goto_1b

    :cond_37
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda18;

    invoke-direct {v2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v4, :cond_6b

    return v3

    :cond_6b
    goto :goto_52

    :cond_6c
    return v4
.end method

.method public static isValidAllowedNetworkTypesReason(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x0, 0x1, 0x2, 0x3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
    .end packed-switch
.end method

.method static synthetic lambda$bootstrapAuthenticationRequest$20(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic lambda$bootstrapAuthenticationRequest$21(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;->onAuthenticationFailure(I)V

    return-void
.end method

.method static synthetic lambda$convertNetworkTypeBitmaskToString$11(JI)Z
    .registers 7

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getBitMaskForNetworkType(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method static synthetic lambda$convertNetworkTypeBitmaskToString$12(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getFirstActivePortIndex$8(Landroid/telephony/UiccPortInfo;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/UiccPortInfo;->isActive()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$isSlotMappingValid$0(Landroid/telephony/UiccSlotMapping;)Ljava/util/List;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/telephony/UiccSlotMapping;->getPortIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$requestCellInfoUpdate$4(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$requestCellInfoUpdate$5(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$requestCellInfoUpdate$6(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager$CellInfoCallback;->onError(ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$requestCellInfoUpdate$7(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V
    .registers 4

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$requestModemActivityInfo$15(Landroid/os/OutcomeReceiver;)V
    .registers 3

    new-instance v0, Landroid/telephony/TelephonyManager$ModemActivityInfoException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/TelephonyManager$ModemActivityInfoException;-><init>(I)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$requestNumberVerification$10(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 3

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/NumberVerificationCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$requestNumberVerification$9(Landroid/telephony/NumberVerificationCallback;)V
    .registers 2

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/telephony/NumberVerificationCallback;->onVerificationFailed(I)V

    return-void
.end method

.method static synthetic lambda$setPreferredOpportunisticDataSubscription$16(Ljava/util/function/Consumer;)V
    .registers 3

    const-wide/32 v0, 0x7c8ba7f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_12
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1a
    return-void
.end method

.method static synthetic lambda$setPreferredOpportunisticDataSubscription$17(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$setSimPowerStateForSlot$13(Ljava/util/function/Consumer;)V
    .registers 2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$setSimPowerStateForSlot$14(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$updateAvailableNetworks$18(Ljava/util/function/Consumer;)V
    .registers 3

    const-wide/32 v0, 0x7c8ba7f

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1b
    return-void
.end method

.method static synthetic lambda$updateAvailableNetworks$19(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 3

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda13;

    invoke-direct {v0, p1}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda13;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$uploadCallComposerPicture$2(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V
    .registers 4

    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$uploadCallComposerPicture$3(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 13

    const-string v0, "Error closing fd pipe: "

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    const-string v2, "TelephonyManager"

    if-eqz v1, :cond_13

    const-string v1, "Uploading call composer picture on main thread! hic sunt dracones!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const/4 v1, 0x0

    const/16 v3, 0x4000

    new-array v3, v3, [B

    :goto_18
    :try_start_18
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1c} :catch_99
    .catchall {:try_start_18 .. :try_end_1c} :catchall_97

    nop

    if-gez v4, :cond_21

    goto/16 :goto_d6

    :cond_21
    add-int/2addr v1, v4

    int-to-long v5, v1

    :try_start_23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getMaximumCallComposerPictureSize()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_6a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read too many bytes from call composer pic stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_97

    :try_start_41
    new-instance v5, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v5}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    const-string/jumbo v5, "too large"

    invoke-virtual {p2, v5}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_51} :catch_53
    .catchall {:try_start_41 .. :try_end_51} :catchall_97

    goto/16 :goto_d6

    :catch_53
    move-exception v5

    :try_start_54
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_97

    nop

    goto :goto_d6

    :cond_6a
    const/4 v5, 0x0

    :try_start_6b
    invoke-virtual {p3, v3, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_70
    .catchall {:try_start_6b .. :try_end_6e} :catchall_97

    nop

    goto :goto_18

    :catch_70
    move-exception v5

    :try_start_71
    new-instance v6, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v6}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_97

    :try_start_7a
    const-string/jumbo v6, "remote end closed"

    invoke-virtual {p2, v6}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_80} :catch_81
    .catchall {:try_start_7a .. :try_end_80} :catchall_97

    goto :goto_96

    :catch_81
    move-exception v6

    :try_start_82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    goto :goto_d6

    :catchall_97
    move-exception v0

    goto :goto_dd

    :catch_99
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException reading from input while uploading pic: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v4}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p1, v5}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_82 .. :try_end_b9} :catchall_97

    :try_start_b9
    const-string/jumbo v5, "input closed"

    invoke-virtual {p2, v5}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bf} :catch_c0
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_97

    goto :goto_d5

    :catch_c0
    move-exception v5

    :try_start_c1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d5
    .catchall {:try_start_c1 .. :try_end_d5} :catchall_97

    :goto_d5
    nop

    :goto_d6
    :try_start_d6
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_da

    goto :goto_dc

    :catch_da
    move-exception v0

    nop

    :goto_dc
    return-void

    :goto_dd
    :try_start_dd
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_e2

    :catch_e1
    move-exception v2

    :goto_e2
    throw v0
.end method

.method private mergeAttributionAndRenouncedPermissions(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .registers 7

    move-object v0, p2

    if-eqz p1, :cond_57

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, p1

    :goto_1b
    nop

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {p1}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v2

    if-eqz v2, :cond_46

    new-instance v2, Landroid/content/ContextParams$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getParams()Landroid/content/ContextParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/ContextParams$Builder;-><init>(Landroid/content/ContextParams;)V

    invoke-virtual {v2, v1}, Landroid/content/ContextParams$Builder;->setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    goto :goto_57

    :cond_46
    new-instance v2, Landroid/content/ContextParams$Builder;

    invoke-direct {v2}, Landroid/content/ContextParams$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/ContextParams$Builder;->setRenouncedPermissions(Ljava/util/Set;)Landroid/content/ContextParams$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object v0

    :cond_57
    :goto_57
    return-object v0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .registers 11

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7fffffff

    if-eq p2, v3, :cond_8b

    if-ltz p2, :cond_71

    const-string v3, ","

    if-eqz v2, :cond_16

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_16
    const/4 v4, 0x0

    :goto_17
    if-ge v4, p2, :cond_3a

    const-string v5, ""

    if-eqz v1, :cond_22

    array-length v6, v1

    if-ge v4, v6, :cond_22

    aget-object v5, v1, v4

    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_3a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_6c

    add-int/lit8 v4, p2, 0x1

    :goto_4f
    array-length v5, v1

    if-ge v4, v5, :cond_6c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_6c
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_71
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putIntAtIndex index < 0 index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static resetServiceCache()V
    .registers 5

    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    sput-object v2, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    :cond_14
    sget-object v1, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_26

    invoke-interface {v1}, Lcom/android/internal/telephony/ISub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    sput-object v2, Landroid/telephony/TelephonyManager;->sISub:Lcom/android/internal/telephony/ISub;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->clearCaches()V

    :cond_26
    sget-object v1, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_35

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    sput-object v2, Landroid/telephony/TelephonyManager;->sISms:Lcom/android/internal/telephony/ISms;

    :cond_35
    sget-object v1, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_44

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v4, Landroid/telephony/TelephonyManager;->sServiceDeath:Landroid/telephony/TelephonyManager$DeathRecipient;

    invoke-interface {v1, v4, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    sput-object v2, Landroid/telephony/TelephonyManager;->sIPhoneSubInfo:Lcom/android/internal/telephony/IPhoneSubInfo;

    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v1
.end method

.method private static runOnBackgroundThread(Ljava/lang/Runnable;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to post a callback from the caller\'s thread context."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setDataEnabledForReason(IIZ)V
    .registers 7

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telephony/ITelephony;->setDataEnabledForReason(IIZLjava/lang/String;)V

    goto :goto_22

    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#setDataEnabledForReason RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_22
    return-void
.end method

.method private setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/telephony/TelephonyManager$12;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$12;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :goto_9
    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    :cond_16
    goto :goto_30

    :catch_17
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#setSystemSelectionChannels RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public static setupITelephonyForTest(Lcom/android/internal/telephony/ITelephony;)V
    .registers 1

    sput-object p0, Landroid/telephony/TelephonyManager;->sITelephony:Lcom/android/internal/telephony/ITelephony;

    return-void
.end method

.method private static updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;ITT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_10

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addDevicePolicyOverrideApn(Landroid/content/Context;Landroid/telephony/data/ApnSetting;)I
    .registers 8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_38

    :try_start_11
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_19} :catch_1b

    move v1, v2

    goto :goto_38

    :catch_1b
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse inserted override APN id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelephonyManager"

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return v1
.end method

.method public answerRingingCall()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public bootstrapAuthenticationRequest(ILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V
    .registers 15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;

    invoke-direct {v1, p6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda19;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    invoke-interface {p5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    new-instance v7, Landroid/telephony/TelephonyManager$17;

    invoke-direct {v7, p0, p5, p6}, Landroid/telephony/TelephonyManager$17;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ITelephony;->bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_32

    :catch_22
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#bootstrapAuthenticationRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;

    invoke-direct {v1, p6}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda20;-><init>(Landroid/telephony/TelephonyManager$BootstrapAuthenticationCallback;)V

    invoke-interface {p5, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_32
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public canChangeDtmfToneLength()Z
    .registers 6

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_17

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_18

    return v0

    :cond_17
    goto :goto_25

    :catch_18
    move-exception v1

    const-string v2, "Permission error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :catch_1f
    move-exception v1

    const-string v2, "Error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    nop

    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method public canConnectTo5GInDsdsMode()Z
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->canConnectTo5GInDsdsMode()Z

    move-result v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v2

    return v1

    :catch_f
    move-exception v2

    return v1
.end method

.method public changeIccLockPin(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "changeIccLockPin oldPin can\'t be null."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "changeIccLockPin newPin can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_24

    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    :cond_24
    if-gez v1, :cond_2b

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v2

    return-object v2

    :cond_2b
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_3b} :catch_3b

    :catch_3b
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "changeIccLockPin RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(ILjava/lang/String;)I

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return v0

    :cond_11
    goto :goto_1f

    :catch_12
    move-exception v1

    const-string v2, "checkCarrierPrivilegesForPackage NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :catch_19
    move-exception v1

    const-string v2, "checkCarrierPrivilegesForPackage RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    nop

    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_1b

    :catch_e
    move-exception v1

    const-string v2, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_15
    move-exception v1

    const-string v2, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    nop

    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public clearSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5

    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#clearSignalStrengthUpdateRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public createForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/TelephonyManager;
    .registers 5

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

.method public createForSubscriptionId(I)Landroid/telephony/TelephonyManager;
    .registers 4

    new-instance v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public dial(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public disableDataConnectivity()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public disableIms(I)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->disableIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_27

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableIms, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public disableVisualVoicemailSmsFilter(I)V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_14

    :catch_12
    move-exception v0

    :cond_13
    :goto_13
    nop

    :goto_14
    return-void
.end method

.method public doesSwitchMultiSimConfigTriggerReboot()Z
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "doesSwitchMultiSimConfigTriggerReboot RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public enableDataConnectivity()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public enableIms(I)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_27

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableIms, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public enableModemForSlot(IZ)Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableModemForSlot(IZ)Z

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    :cond_c
    goto :goto_15

    :catch_d
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "enableModem RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    return v0
.end method

.method public enableVideoCalling(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#enableVideoCalling"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 5

    if-eqz p2, :cond_17

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_15

    :catch_12
    move-exception v0

    goto :goto_16

    :catch_14
    move-exception v0

    :cond_15
    :goto_15
    nop

    :goto_16
    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Settings cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endCall()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public factoryReset(I)V
    .registers 5

    :try_start_0
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factoryReset: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    :cond_25
    goto :goto_27

    :catch_26
    move-exception v0

    :goto_27
    return-void
.end method

.method public filterEmergencyNumbersByCategories(Ljava/util/Map;I)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_44

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v6, p2}, Landroid/telephony/emergency/EmergencyNumber;->isInEmergencyServiceCategories(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    goto :goto_2a

    :cond_40
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_44
    return-object v0
.end method

.method public getActiveModemCount()I
    .registers 4

    const/4 v0, 0x1

    sget-object v1, Landroid/telephony/TelephonyManager$19;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    goto :goto_34

    :pswitch_11  #0x4
    const/4 v0, 0x3

    goto :goto_34

    :pswitch_13  #0x2, 0x3
    const/4 v0, 0x2

    goto :goto_34

    :pswitch_15  #0x1
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    if-nez v1, :cond_29

    const/4 v0, 0x0

    :cond_29
    const/4 v1, 0x0

    const-string/jumbo v2, "ro.radio.noril"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    :cond_34
    :goto_34
    return v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_13  #00000002
        :pswitch_13  #00000003
        :pswitch_11  #00000004
    .end packed-switch
.end method

.method public getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_f

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception v0

    :goto_f
    nop

    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAidForAppType(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAidForAppType(II)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getAidForAppType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v1

    goto :goto_19

    :catch_17
    move-exception v1

    nop

    :goto_19
    return-object v0
.end method

.method public getAllowedCarriers(I)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCarrierRestrictionRules()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/telephony/CarrierRestrictionRules;->getAllowedCarriers()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public getAllowedNetworkTypes()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return-wide v1

    :cond_10
    goto :goto_19

    :catch_11
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypes RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAllowedNetworkTypesBitmask()J
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesBitmask(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_11

    int-to-long v1, v1

    return-wide v1

    :cond_10
    goto :goto_19

    :catch_11
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypesBitmask RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAllowedNetworkTypesForReason(I)J
    .registers 5

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getAllowedNetworkTypesForReason(II)J

    move-result-wide v1

    return-wide v1

    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "getAllowedNetworkTypesForReason RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid AllowedNetworkTypesReason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAndUpdateDefaultRespondViaMessageApplication()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks()Lcom/android/internal/telephony/CellNetworkScanResult;
    .registers 6

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_18} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_18} :catch_1a

    return-object v0

    :cond_19
    goto :goto_27

    :catch_1a
    move-exception v1

    const-string v2, "getAvailableNetworks NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_21
    move-exception v1

    const-string v2, "getAvailableNetworks RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    nop

    :goto_28
    new-instance v0, Lcom/android/internal/telephony/CellNetworkScanResult;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public getBasebandVersion()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getBasebandVersionForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBasebandVersionForPhone(I)Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCallComposerStatus()I
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCallComposerStatus(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_1b

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getCallComposerStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwarding(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-ltz p1, :cond_24

    const/4 v0, 0x5

    if-gt p1, v0, :cond_24

    new-instance v0, Landroid/telephony/TelephonyManager$13;

    invoke-direct {v0, p0, p2, p3}, Landroid/telephony/TelephonyManager$13;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V

    :try_start_a
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, p1, v0}, Lcom/android/internal/telephony/ITelephony;->getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    :cond_17
    goto :goto_23

    :catch_18
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "getCallForwarding RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_23
    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callForwardingReason is out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCallState()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isSupportWechatAndCallCoexist()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "TelephonyManager"

    const-string v2, "always return idle state for wetchat app..."

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_30

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallState()I

    move-result v1

    return v1

    :cond_30
    return v1
.end method

.method public getCallState(I)I
    .registers 6

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    :try_start_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v1

    :catch_19
    move-exception v2

    return v1
.end method

.method public getCallStateForSlot(I)I
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_24

    if-eqz v1, :cond_24

    array-length v3, v1

    if-nez v3, :cond_11

    goto :goto_24

    :cond_11
    aget v3, v1, v0

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_23} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_23} :catch_25

    return v0

    :cond_24
    :goto_24
    return v0

    :catch_25
    move-exception v1

    return v0
.end method

.method public getCallStateForSubscription()I
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCallWaitingStatus(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/telephony/TelephonyManager$15;

    invoke-direct {v1, p0, p1, p2}, Landroid/telephony/TelephonyManager$15;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/ITelephony;->getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1a} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1a} :catch_1b

    goto :goto_2b

    :catch_1b
    move-exception v2

    const-string v3, "getCallWaitingStatus NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v2

    :catch_22
    move-exception v2

    const-string v3, "getCallWaitingStatus RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_2b
    :goto_2b
    nop

    return-void
.end method

.method public getCardIdForDefaultEuicc()I
    .registers 5

    const/4 v0, -0x2

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCardIdForDefaultEuicc(ILjava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v1

    return v0
.end method

.method public getCarrierConfig()Landroid/os/PersistableBundle;
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method public getCarrierIdFromMccMnc(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    :cond_10
    goto :goto_12

    :catch_11
    move-exception v0

    :goto_12
    const/4 v0, -0x1

    return v0
.end method

.method public getCarrierIdFromSimMccMnc()I
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdFromMccMnc(ILjava/lang/String;Z)I

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v1

    :cond_14
    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    const/4 v0, -0x1

    return v0
.end method

.method public getCarrierIdListVersion()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getCarrierIdListVersion(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public getCarrierInfoForImsiEncryption(I)Landroid/telephony/ImsiEncryptionInfo;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "IMSI error: key is required but not found"

    const-string v1, "TelephonyManager"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    if-nez v3, :cond_11

    const-string v0, "IMSI error: Subscriber Info is null"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq p1, v5, :cond_28

    const/4 v5, 0x2

    if-ne p1, v5, :cond_20

    goto :goto_28

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "IMSI error: Invalid key type"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    iget-object v5, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCarrierInfoForImsiEncryption(IILjava/lang/String;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object v5

    if-nez v5, :cond_44

    invoke-direct {p0, v4, p1}, Landroid/telephony/TelephonyManager;->isImsiEncryptionRequired(II)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_44

    :cond_3b
    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_44} :catch_5d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_44} :catch_45

    :cond_44
    :goto_44
    return-object v5

    :catch_45
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierInfoForImsiEncryption NullPointerException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    :catch_5d
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierInfoForImsiEncryption RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_75
    return-object v2
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    :cond_d
    goto :goto_1b

    :catch_e
    move-exception v1

    const-string v2, "getCarrierPackageNamesForIntentAndPhone NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_15
    move-exception v1

    const-string v2, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    nop

    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarrierPrivilegeStatus(I)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatusForUid(II)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "getCarrierPrivilegeStatus RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public getCarrierPrivilegedPackagesForAllActiveSubscriptions()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    :cond_d
    goto :goto_1b

    :catch_e
    move-exception v1

    const-string v2, "getCarrierPrivilegedPackagesForAllActiveSubscriptions NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_15
    move-exception v1

    const-string v2, "getCarrierPrivilegedPackagesForAllActiveSubscriptions RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    nop

    :goto_1c
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getCarrierRestrictionRules()Landroid/telephony/CarrierRestrictionRules;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "Error calling ITelephony#getAllowedCarriers"

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    return-object v0

    :cond_f
    goto :goto_19

    :catch_10
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_15
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    nop

    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCarrierServicePackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    :cond_d
    goto :goto_1b

    :catch_e
    move-exception v1

    const-string v2, "getCarrierServicePackageNameForLogicalSlot NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_15
    move-exception v1

    const-string v2, "getCarrierServicePackageNameForLogicalSlot RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    nop

    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaEnhancedRoamingIndicatorDisplayNumber()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .registers 6

    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v1

    return v0

    :catch_17
    move-exception v1

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .registers 6

    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v1

    return v0

    :catch_17
    move-exception v1

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v1

    return-object v0

    :catch_17
    move-exception v1

    return-object v0
.end method

.method public getCdmaMdn()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v1

    return-object v0

    :catch_f
    move-exception v1

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v1

    return-object v0

    :catch_f
    move-exception v1

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion(I)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaPrlVersion(I)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getCdmaPrlVersion"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaRoamingMode()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaRoamingMode(I)I

    move-result v2

    move v0, v2

    goto :goto_25

    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getCdmaRoamingMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_25
    return v0
.end method

.method public getCdmaSubscriptionMode()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCdmaSubscriptionMode(I)I

    move-result v2

    move v0, v2

    goto :goto_25

    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getCdmaSubscriptionMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_25
    return v0
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "TelephonyManager"

    const/16 v1, 0x31

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    const/4 v1, 0x0

    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-nez v2, :cond_14

    const-string v3, "getCellLocation returning null because telephony is null"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_14
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    goto :goto_2c

    :cond_2b
    move-object v4, v1

    :goto_2c
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_36

    :cond_35
    return-object v4

    :cond_36
    :goto_36
    const-string v5, "getCellLocation returning null because CellLocation is empty or phone type doesn\'t match CellLocation type"

    invoke-static {v0, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3b} :catch_3c

    return-object v1

    :catch_3c
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getCertsFromCarrierPrivilegeAccessRules()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;

    move-result-object v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move-object v0, v2

    :cond_10
    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    if-nez v0, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_1a

    :cond_19
    move-object v1, v0

    :goto_1a
    return-object v1
.end method

.method public getClientRequestStats(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/ITelephony;->getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return-object v1

    :cond_13
    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getClientRequestStats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPhoneType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    :goto_9
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v1

    return v1
.end method

.method public getCurrentPhoneTypeForSlot(I)I
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSlot(I)I

    move-result v1

    return v1

    :cond_b
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_f} :catch_10

    return v1

    :catch_10
    move-exception v0

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1

    return v1

    :catch_16
    move-exception v0

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v1

    return v1
.end method

.method public getDataActivationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataActivationState(I)I

    move-result v0

    return v0
.end method

.method public getDataActivationState(I)I
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivationState(ILjava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_14

    :catch_12
    move-exception v0

    :goto_13
    nop

    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public getDataActivity()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivityForSubId(I)I

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v1

    return v0

    :catch_18
    move-exception v1

    return v0
.end method

.method public getDataEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataEnabled(I)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(II)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    :catch_6
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling isDataEnabledForReason e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDataNetworkType()I
    .registers 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return v0

    :cond_14
    return v0

    :catch_15
    move-exception v1

    return v0

    :catch_17
    move-exception v1

    return v0
.end method

.method public getDataState()I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getDataStateForSubId(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_23

    const-wide/32 v3, 0x8da744c

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1f} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1f} :catch_24

    if-nez v0, :cond_23

    const/4 v0, 0x2

    return v0

    :cond_23
    return v2

    :catch_24
    move-exception v1

    return v0

    :catch_26
    move-exception v1

    return v0
.end method

.method public getDefaultRespondViaMessageApplication()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v1

    return-object v0

    :catch_1b
    move-exception v1

    return-object v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    const/4 v0, 0x0

    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception v1

    return-object v0

    :catch_33
    move-exception v1

    return-object v0
.end method

.method public getDevicePolicyOverrideApns(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1a

    :try_start_10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_39

    if-eqz v0, :cond_19

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_19
    return-object v1

    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_39

    nop

    goto :goto_23

    :cond_32
    nop

    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_38
    return-object v1

    :catchall_39
    move-exception v1

    if-eqz v0, :cond_44

    :try_start_3c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v1
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v2

    return-object v1

    :catch_17
    move-exception v2

    return-object v1
.end method

.method public getEmergencyCallbackMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode(I)Z

    move-result v0

    return v0
.end method

.method public getEmergencyCallbackMode(I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getEmergencyCallbackMode(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getEmergencyCallbackMode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public getEmergencyNumberDbVersion()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberDbVersion(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_1b

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "getEmergencyNumberDbVersion RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1b
    const/4 v0, -0x1

    return v0
.end method

.method public getEmergencyNumberList()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_25} :catch_25

    :catch_25
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "getEmergencyNumberList RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return-object v0
.end method

.method public getEmergencyNumberList(I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/telephony/emergency/EmergencyNumber;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_23

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    nop

    invoke-virtual {p0, v2, p1}, Landroid/telephony/TelephonyManager;->filterEmergencyNumbersByCategories(Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    nop

    goto :goto_37

    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "getEmergencyNumberList with Categories RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_37
    return-object v0
.end method

.method public getEquivalentHomePlmns()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_22

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getEquivalentHomePlmns RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getEsn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsn(I)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getEsn(I)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getEsn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForbiddenPlmns()[Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns(II)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForbiddenPlmns(II)[Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v1

    return-object v0

    :catch_19
    move-exception v1

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1c} :catch_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v1

    return-object v0

    :catch_1f
    move-exception v1

    return-object v0
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v1

    return-object v0

    :catch_1b
    move-exception v1

    return-object v0
.end method

.method public getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-interface/range {v2 .. v8}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1a} :catch_1b

    return-object v0

    :catch_1b
    move-exception v1

    return-object v0

    :catch_1d
    move-exception v1

    return-object v0
.end method

.method public getIccAuthentication(IILjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->getIccAuthentication(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "disallow_imeiread"

    invoke-static {v0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ""

    return-object v0

    :cond_d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    :try_start_15
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_21} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_21} :catch_22

    return-object v1

    :catch_22
    move-exception v2

    return-object v1

    :catch_24
    move-exception v2

    return-object v1
.end method

.method public getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .registers 6

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_29

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRegistration, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImsRegTechnologyForMmTel()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getImsRegTechnologyForMmTel(I)I

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 6

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_29

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsRegistration, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsimDomain()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v1

    return-object v0

    :catch_13
    move-exception v1

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v1

    return-object v0

    :catch_13
    move-exception v1

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v1

    return-object v0

    :catch_13
    move-exception v1

    return-object v0
.end method

.method public getIsimIst()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst(I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v1

    return-object v0

    :catch_13
    move-exception v1

    return-object v0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v1

    return-object v0

    :catch_13
    move-exception v1

    return-object v0
.end method

.method public getLastKnownCellIdentity()Landroid/telephony/CellIdentity;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v1

    return-object v1

    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_15

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_16

    move-object v0, v2

    :cond_15
    :goto_15
    goto :goto_1a

    :catch_16
    move-exception v1

    goto :goto_1a

    :catch_18
    move-exception v1

    goto :goto_15

    :goto_1a
    if-eqz v0, :cond_1d

    return-object v0

    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    if-nez v2, :cond_25

    return-object v1

    :cond_25
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_31} :catch_34
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_31} :catch_32

    return-object v1

    :catch_32
    move-exception v2

    return-object v1

    :catch_34
    move-exception v2

    return-object v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    const/4 v0, 0x0

    :try_start_19
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2f} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_2f} :catch_31

    move-object v0, v2

    :cond_30
    :goto_30
    goto :goto_35

    :catch_31
    move-exception v1

    goto :goto_35

    :catch_33
    move-exception v1

    goto :goto_30

    :goto_35
    if-eqz v0, :cond_38

    return-object v0

    :cond_38
    const/4 v1, 0x0

    :try_start_39
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    if-nez v2, :cond_40

    return-object v1

    :cond_40
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_50} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_39 .. :try_end_50} :catch_51

    return-object v1

    :catch_51
    move-exception v2

    return-object v1

    :catch_53
    move-exception v2

    return-object v1
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    :cond_f
    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogicalToPhysicalSlotMapping()Ljava/util/Map;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/UiccSlotMapping;

    invoke-virtual {v4}, Landroid/telephony/UiccSlotMapping;->getLogicalSlotIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Landroid/telephony/UiccSlotMapping;->getPhysicalSlotIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_38} :catch_3b

    nop

    goto :goto_19

    :cond_3a
    goto :goto_43

    :catch_3b
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "getSlotsMapping RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_43
    return-object v0
.end method

.method public getLteOnCdmaMode(I)I
    .registers 6

    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v1

    return v0

    :catch_17
    move-exception v1

    return v0
.end method

.method public getManualNetworkSelectionPlmn()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isManualNetworkSelectionAllowed()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getManualNetworkSelectionPlmn(I)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    return-object v1

    :cond_15
    goto :goto_1e

    :catch_16
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "getManualNetworkSelectionPlmn RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public getManufacturerCode()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getManufacturerCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturerCode(I)Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getManufacturerCodeForSlot(I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v2

    return-object v1

    :catch_f
    move-exception v2

    return-object v1
.end method

.method public getMaxNumberOfSimultaneouslyActiveSims()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Landroid/telephony/TelephonyManager$19;->$SwitchMap$android$telephony$TelephonyManager$MultiSimVariants:[I

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_14

    return v1

    :pswitch_11  #0x3
    const/4 v0, 0x2

    return v0

    :pswitch_13  #0x1, 0x2, 0x4
    return v1

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_13  #00000002
        :pswitch_11  #00000003
        :pswitch_13  #00000004
    .end packed-switch
.end method

.method public getMeid()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeid(I)Ljava/lang/String;
    .registers 7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "TelephonyManager"

    const-string v4, "getMeid: return null because MEID is not available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_21} :catch_25
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_21} :catch_23

    return-object v1

    :cond_22
    return-object v2

    :catch_23
    move-exception v2

    return-object v1

    :catch_25
    move-exception v2

    return-object v1
.end method

.method public getMergedImsisFromGroup()[Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return-object v1

    :cond_13
    goto :goto_15

    :catch_14
    move-exception v0

    :goto_15
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMergedSubscriberIds()[Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_18

    return-object v1

    :cond_17
    goto :goto_1b

    :catch_18
    move-exception v0

    goto :goto_1c

    :catch_1a
    move-exception v0

    :goto_1b
    nop

    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMmsUAProfUrl(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    :cond_f
    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_14

    :catch_12
    move-exception v0

    :goto_13
    nop

    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getMmsUserAgent(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    :cond_f
    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_14

    :catch_12
    move-exception v0

    :goto_13
    nop

    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileProvisioningUrl()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getMobileProvisioningUrl RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v1

    return-object v0

    :catch_17
    move-exception v1

    return-object v0
.end method

.method public getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .registers 3

    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isCustSingleSimDevice()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0

    :cond_9
    invoke-static {}, Landroid/sysprop/TelephonyProperties;->multi_sim_config()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    :cond_20
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    :cond_2b
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    :cond_37
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1
.end method

.method public getNai()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getNaiBySubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNai(I)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getNaiBySubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x32

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v0

    :cond_d
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1d} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v1

    return-object v0

    :catch_20
    move-exception v1

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso(I)Ljava/lang/String;
    .registers 6

    const v0, 0x7fffffff

    const-string v1, ""

    if-eq p1, v0, :cond_28

    :try_start_7
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid slot index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_2f

    return-object v1

    :cond_2f
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_34

    return-object v1

    :catch_34
    move-exception v0

    return-object v1
.end method

.method public getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperatorForPhone(I)Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_numeric()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_alpha()Ljava/util/List;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getNetworkSelectionMode()I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkSelectionMode(I)I

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v2

    :cond_10
    goto :goto_19

    :catch_11
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "getNetworkSelectionMode RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    return v0
.end method

.method public getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/data/NetworkSlicingConfig;",
            "Landroid/telephony/TelephonyManager$NetworkSlicingException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v1, Landroid/telephony/TelephonyManager$18;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1, p2}, Landroid/telephony/TelephonyManager$18;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSlicingConfig(Landroid/os/ResultReceiver;)V

    goto :goto_23

    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_23
    return-void
.end method

.method public getNetworkSpecifier()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getNetworkType(I)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return v0

    :cond_14
    return v0

    :catch_15
    move-exception v1

    return v0

    :catch_17
    move-exception v1

    return v0
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfModemsWithSimultaneousDataConnections()I
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_18

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    return v1

    :cond_18
    goto :goto_1a

    :catch_19
    move-exception v0

    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public getOtaSpNumberSchema(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    nop

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->otasp_num_schema()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_12
    return-object p2
.end method

.method public getPackagesWithCarrierPrivileges()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getPackagesWithCarrierPrivileges(I)Ljava/util/List;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return-object v0

    :cond_11
    goto :goto_1f

    :catch_12
    move-exception v1

    const-string v2, "getPackagesWithCarrierPrivileges NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :catch_19
    move-exception v1

    const-string v2, "getPackagesWithCarrierPrivileges RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    nop

    :goto_20
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v2

    :cond_c
    goto :goto_e

    :catch_d
    move-exception v1

    :goto_e
    return-object v0
.end method

.method public getPhoneCapability()Landroid/telephony/PhoneCapability;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object v1

    return-object v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_DSDS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0

    :cond_22
    sget-object v0, Landroid/telephony/PhoneCapability;->DEFAULT_SSSS_CAPABILITY:Landroid/telephony/PhoneCapability;

    return-object v0
.end method

.method public getPhoneCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    return v0
.end method

.method public getPhoneType()I
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(I)I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkTypeBitmask()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesBitmask()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreferredOpportunisticDataSubscription()I
    .registers 7

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    :goto_b
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    const/4 v2, -0x1

    :try_start_16
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-interface {v3, v0, v1}, Lcom/android/internal/telephony/IOns;->getPreferredDataSubscriptionId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_22

    move v2, v4

    :cond_21
    goto :goto_2a

    :catch_22
    move-exception v3

    const-string v4, "TelephonyManager"

    const-string v5, "getPreferredDataSubscriptionId RemoteException"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return v2
.end method

.method public getRadioHalVersion()Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getRadioHalVersion()I

    move-result v2

    if-ne v2, v0, :cond_1b

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_1b
    new-instance v3, Landroid/util/Pair;

    div-int/lit8 v4, v2, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    rem-int/lit8 v5, v2, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2c} :catch_2e

    return-object v3

    :cond_2d
    goto :goto_36

    :catch_2e
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "getRadioHalVersion() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_36
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public getRadioPowerState()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1c

    return v1

    :cond_1b
    goto :goto_1d

    :catch_1c
    move-exception v0

    :goto_1d
    const/4 v0, 0x2

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getLocationData()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .registers 6

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_b

    move v3, v1

    goto :goto_c

    :cond_b
    move v3, v2

    :goto_c
    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    invoke-direct {p0, v0, v3, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(IZZ)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(IZZ)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getSignalStrength"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimApplicationState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSimStateIncludingLoaded()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public getSimApplicationState(I)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v0

    nop

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v2

    return v2
.end method

.method public getSimApplicationState(II)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    nop

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimApplicationStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public getSimCardState()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public getSimCardState(I)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v2

    return v2
.end method

.method public getSimCardState(II)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->getLogicalSlotIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCardStateFromSimState(I)I

    move-result v1

    return v1
.end method

.method public getSimCarrierId()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionCarrierId(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public getSimCarrierIdName()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionCarrierName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    :cond_f
    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimCount()I
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimLocale()Ljava/util/Locale;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSimLocaleForSubscriber(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v2

    :cond_19
    goto :goto_1b

    :catch_1a
    move-exception v0

    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName(I)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNameForPhone(I)Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorNumeric()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    :cond_2a
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumeric(I)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .registers 4

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x184

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    const/4 v0, 0x0

    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception v1

    return-object v0

    :catch_33
    move-exception v1

    return-object v0
.end method

.method public getSimSlotMapping()Ljava/util/Collection;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSlotsMapping(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    nop

    return-object v1

    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSimSpecificCarrierId()I
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionSpecificCarrierId(I)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    const/4 v0, -0x1

    return v0
.end method

.method public getSimSpecificCarrierIdName()Ljava/lang/CharSequence;
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSubscriptionSpecificCarrierName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    :cond_f
    goto :goto_11

    :catch_10
    move-exception v0

    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSimState()I
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSimStateIncludingLoaded()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    const/4 v0, 0x5

    :cond_9
    return v0
.end method

.method public getSimState(I)I
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    const/4 v0, 0x5

    :cond_9
    return v0
.end method

.method public getSlotIndex()I
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const v0, 0x7fffffff

    :cond_e
    return v0
.end method

.method public getSmsReceiveCapable(Z)Z
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsReceiveCapableForPhone(IZ)Z
    .registers 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sms_receive()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_19
    return p2
.end method

.method public getSmsSendCapable(Z)Z
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsSendCapableForPhone(IZ)Z
    .registers 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sms_send()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_19
    return p2
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .registers 4

    const/4 v0, -0x1

    if-eqz p1, :cond_12

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I

    move-result v0

    :cond_12
    return v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x185

    invoke-static {v1, v0}, Landroid/util/SeempLog;->record_str(ILjava/lang/String;)I

    const/4 v0, 0x0

    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_20

    return-object v0

    :cond_20
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_30} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    move-exception v1

    return-object v0

    :catch_33
    move-exception v1

    return-object v0
.end method

.method public getSubscriptionId()I
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    return v0
.end method

.method public getSubscriptionId(Landroid/telecom/PhoneAccountHandle;)I
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mPhoneAccountHandleToSubIdCache:Landroid/app/PropertyInvalidatedCache;

    invoke-virtual {v0, p1}, Landroid/app/PropertyInvalidatedCache;->query(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSupportedModemCount()I
    .registers 3

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->max_active_modems()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSupportedRadioAccessFamily()J
    .registers 6

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_14} :catch_17

    int-to-long v0, v0

    return-wide v0

    :cond_16
    return-wide v0

    :catch_17
    move-exception v2

    return-wide v0

    :catch_19
    move-exception v2

    return-wide v0
.end method

.method public getSystemSelectionChannels()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->getSystemSelectionChannels(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getSystemSelectionChannels RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTelephonyHistograms()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->getTelephonyHistograms()Ljava/util/List;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getTelephonyHistograms"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeAllocationCode()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getTypeAllocationCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeAllocationCode(I)Ljava/lang/String;
    .registers 5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getTypeAllocationCodeForSlot(I)Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v2

    return-object v1

    :catch_f
    move-exception v2

    return-object v1
.end method

.method public getUiccCardsInfo()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v2, "Error in getUiccCardsInfo: unable to connect to Telephony service."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_13
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getUiccCardsInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v1

    return-object v0
.end method

.method public getVisualVoicemailPackageName()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v1

    :cond_19
    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1e

    :catch_1c
    move-exception v0

    :goto_1d
    nop

    :goto_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisualVoicemailSettings()Landroid/os/Bundle;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_14

    return-object v1

    :cond_13
    goto :goto_17

    :catch_14
    move-exception v0

    goto :goto_18

    :catch_16
    move-exception v0

    :goto_17
    nop

    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_10} :catch_12

    return-object v1

    :cond_11
    goto :goto_15

    :catch_12
    move-exception v0

    goto :goto_16

    :catch_14
    move-exception v0

    :goto_15
    nop

    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceActivationState()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceActivationState(I)I

    move-result v0

    return v0
.end method

.method public getVoiceActivationState(I)I
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceActivationState(ILjava/lang/String;)I

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_14

    :catch_12
    move-exception v0

    :goto_13
    nop

    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v1

    return-object v0

    :catch_17
    move-exception v1

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v1

    return-object v0

    :catch_17
    move-exception v1

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v1

    return v0

    :catch_17
    move-exception v1

    return v0
.end method

.method public getVoiceNetworkType()I
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_13} :catch_15

    return v0

    :cond_14
    return v0

    :catch_15
    move-exception v1

    return v0

    :catch_17
    move-exception v1

    return v0
.end method

.method public getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#getVoicemailRingtoneUri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#handlePinMmi"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public hasCarrierPrivileges()Z
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasCarrierPrivileges(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPrivileges(I)Z
    .registers 6

    const-string v0, "TelephonyManager"

    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus(I)I

    move-result v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_d} :catch_13

    const/4 v3, 0x1

    if-ne v0, v3, :cond_11

    move v1, v3

    :cond_11
    return v1

    :cond_12
    goto :goto_20

    :catch_13
    move-exception v2

    const-string v3, "hasCarrierPrivileges NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    :catch_1a
    move-exception v2

    const-string v3, "hasCarrierPrivileges RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    nop

    :goto_21
    return v1
.end method

.method public hasIccCard()Z
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotIndex(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v1

    return v0

    :catch_f
    move-exception v1

    return v0
.end method

.method public iccCloseLogicalChannel(I)Z
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->iccCloseLogicalChannel(II)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public iccCloseLogicalChannel(II)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->subId:I

    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v2
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_13} :catch_15

    return v2

    :cond_14
    goto :goto_22

    :catch_15
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :catch_1f
    move-exception v0

    goto :goto_22

    :catch_21
    move-exception v0

    :goto_22
    nop

    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public iccCloseLogicalChannelByPort(III)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    nop

    nop

    return-void

    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public iccCloseLogicalChannelBySlot(II)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->channel:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_19} :catch_25
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_19} :catch_1b

    return v2

    :cond_1a
    goto :goto_28

    :catch_1b
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "iccCloseLogicalChannel IllegalStateException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    :catch_25
    move-exception v0

    goto :goto_28

    :catch_27
    move-exception v0

    :goto_28
    nop

    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .registers 17

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_14

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_15

    return-object v1

    :cond_14
    goto :goto_18

    :catch_15
    move-exception v0

    goto :goto_19

    :catch_17
    move-exception v0

    :goto_18
    nop

    :goto_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .registers 15

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 7

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->subId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_26
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_22} :catch_24

    return-object v2

    :cond_23
    goto :goto_27

    :catch_24
    move-exception v0

    goto :goto_28

    :catch_26
    move-exception v0

    :goto_27
    nop

    :goto_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->iccOpenLogicalChannel(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v0

    return-object v0
.end method

.method public iccOpenLogicalChannelByPort(IILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    iput p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    iput-object p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    iput p4, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2

    return-object v2

    :cond_25
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public iccOpenLogicalChannelBySlot(ILjava/lang/String;I)Landroid/telephony/IccOpenLogicalChannelResponse;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_29

    new-instance v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    iput p1, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->slotIndex:I

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->portIndex:I

    iput-object p2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->aid:Ljava/lang/String;

    iput p3, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->p2:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->callingPackage:Ljava/lang/String;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/internal/telephony/IccLogicalChannelRequest;->binder:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_28} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_28} :catch_2a

    return-object v2

    :cond_29
    goto :goto_2d

    :catch_2a
    move-exception v0

    goto :goto_2e

    :catch_2c
    move-exception v0

    :goto_2d
    nop

    :goto_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method public iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 18

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_1a

    return-object v1

    :cond_19
    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1e

    :catch_1c
    move-exception v0

    :goto_1d
    nop

    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .registers 15

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/telephony/TelephonyManager;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduBasicChannelByPort(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1e

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    return-object v1

    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_27

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public iccTransmitApduBasicChannelBySlot(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1f

    nop

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1e} :catch_20

    return-object v1

    :cond_1f
    goto :goto_23

    :catch_20
    move-exception v0

    goto :goto_24

    :catch_22
    move-exception v0

    :goto_23
    nop

    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 19

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_17

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_18

    return-object v1

    :cond_17
    goto :goto_1b

    :catch_18
    move-exception v0

    goto :goto_1c

    :catch_1a
    move-exception v0

    :goto_1b
    nop

    :goto_1c
    const-string v0, ""

    return-object v0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 17

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/TelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 21
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1b

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    return-object v1

    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public iccTransmitApduLogicalChannelBySlot(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .registers 20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1d

    nop

    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getFirstActivePortIndex(I)I

    move-result v3

    move-object v1, v0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_1c} :catch_1e

    return-object v1

    :cond_1d
    goto :goto_21

    :catch_1e
    move-exception v0

    goto :goto_22

    :catch_20
    move-exception v0

    :goto_21
    nop

    :goto_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_f

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception v0

    :goto_f
    nop

    :goto_10
    const/4 v0, -0x1

    return v0
.end method

.method public isAnyRadioPoweredOn()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_17

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isAnyRadioPoweredOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_17
    const/4 v0, 0x0

    return v0
.end method

.method public isApnMetered(I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isApnMetered(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_29

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#isApnMetered RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method public isApplicationOnUicc(I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->isApplicationOnUicc(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isApplicationOnUicc"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public isConcurrentVoiceAndDataSupported()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    goto :goto_11

    :cond_8
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isConcurrentVoiceAndDataAllowed(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_12

    goto :goto_7

    :goto_11
    return v0

    :catch_12
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isConcurrentVoiceAndDataAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isDataCapable()Z
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const-string/jumbo v0, "ro.radio.noril"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectionAllowed()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->isDataEnabled(I)Z

    move-result v3
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15

    move v0, v3

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "Error isDataConnectionAllowed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return v0
.end method

.method public isDataConnectivityPossible()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_14

    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible(I)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    return v1

    :cond_14
    goto :goto_1d

    :catch_15
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isDataAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEnabled()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(I)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_5} :catch_6

    return v0

    :catch_6
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "Error calling #isDataEnabled, returning default (false)."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public isDataEnabledForApn(I)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    :goto_b
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/ITelephony;->isDataEnabledForApn(IILjava/lang/String;)Z

    move-result v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1b

    return v2

    :cond_1a
    goto :goto_34

    :catch_1b
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#isDataEnabledForApn RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    const/4 v1, 0x0

    return v1
.end method

.method public isDataEnabledForReason(I)Z
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p1}, Landroid/telephony/TelephonyManager;->isDataEnabledForReason(II)Z

    move-result v0

    return v0
.end method

.method public isDataRoamingEnabled()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_15

    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isDataRoamingEnabled(I)Z

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    move v0, v2

    :cond_15
    goto :goto_1e

    :catch_16
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#isDataRoamingEnabled"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return v0
.end method

.method public isEmergencyAssistanceEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string/jumbo v2, "isEmergencyAssistanceEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isEmergencyNumber(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isEmergencyNumber RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isHearingAidCompatibilitySupported()Z
    .registers 4

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_1b

    :catch_e
    move-exception v1

    const-string v2, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_15
    move-exception v1

    const-string v2, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    nop

    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isIccLockEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isIccLockEnabled(I)Z

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isIccLockEnabled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isIdle()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isImsRegistered()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isImsRegistered(I)Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isInEmergencySmsMode()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isInEmergencySmsMode()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_15

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isInEmergencySmsMode RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public isLteCdmaEvdoGsmWcdmaEnabled()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public isManualNetworkSelectionAllowed()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isManualNetworkSelectionAllowed(I)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isManualNetworkSelectionAllowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x1

    return v0
.end method

.method public isMobileDataPolicyEnabled(I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->isMobileDataPolicyEnabled(II)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_29

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#isMobileDataPolicyEnabled RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public isModemEnabledForSlot(I)Z
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_18

    return v1

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "enableModem RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiSimEnabled()Z
    .registers 4

    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isCustSingleSimDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public isMultiSimSupported()I
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    return v1

    :cond_9
    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_1d

    return v1

    :cond_1c
    goto :goto_26

    :catch_1d
    move-exception v0

    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "isMultiSimSupported RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_26
    return v1
.end method

.method public isNetworkRoaming()Z
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .registers 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isNrDualConnectivityEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isNrDualConnectivityEnabled(I)Z

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isNRDualConnectivityEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isOffhook()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    return v1
.end method

.method public isOpportunisticNetworkEnabled()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    :goto_b
    const/4 v1, 0x0

    :try_start_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/IOns;->isEnabled(Ljava/lang/String;)Z

    move-result v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    move v1, v3

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v2

    const-string v3, "TelephonyManager"

    const-string v4, "enableOpportunisticNetwork RemoteException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return v1
.end method

.method public isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/ITelephony;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_15

    :catch_15
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "isEmergencyNumber RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    return v0
.end method

.method public isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_f
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "telephony service is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_18

    :catch_18
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#isRadioInterfaceCapabilitySupported RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isRadioOn()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v1

    :cond_13
    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isRadioOn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isRemovableEsimDefaultEuicc()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_29

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in isRemovableEsimDefaultEuicc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const/4 v0, 0x0

    return v0
.end method

.method public isRinging()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v1

    return v1
.end method

.method public isRttSupported()Z
    .registers 4

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_f

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRttSupported(I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_1d

    :catch_10
    move-exception v1

    const-string v2, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_17
    move-exception v1

    const-string v2, "Error calling ITelephony#isRttSupported"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    nop

    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public isSmsCapable()Z
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringApnRequired()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isTetheringApnRequired(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringApnRequired(I)Z
    .registers 5

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->isTetheringApnRequiredForSubscriber(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_1b

    :catch_e
    move-exception v1

    const-string v2, "hasMatchedTetherApnSetting NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :catch_15
    move-exception v1

    const-string v2, "hasMatchedTetherApnSetting RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    nop

    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isTtyModeSupported()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_e

    const-class v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    move-object v0, v1

    :cond_e
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isTtySupported()Z

    move-result v1
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_14} :catch_16

    return v1

    :cond_15
    goto :goto_1e

    :catch_16
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Permission error calling TelecomManager#isTtySupported"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoCallingEnabled()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    return v1

    :cond_13
    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVideoCallingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoTelephonyAvailable()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isVoNrEnabled()Z
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isVoNrEnabled(I)Z

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "isVoNrEnabled RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCapable()Z
    .registers 3

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public isVolteAvailable()Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/ITelephony;->isAvailable(III)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v1

    return v0
.end method

.method public isWifiCallingAvailable()Z
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable(I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isWorldPhone()Z
    .registers 6

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_17

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_16} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_16} :catch_18

    return v0

    :cond_17
    goto :goto_25

    :catch_18
    move-exception v1

    const-string v2, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    :catch_1f
    move-exception v1

    const-string v2, "Error calling ITelephony#isWorldPhone"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    nop

    :goto_26
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$uploadCallComposerPicture$1$android-telephony-TelephonyManager(Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .registers 12

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "Uploading call composer picture on main thread! hic sunt dracones!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getMaximumCallComposerPictureSize()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_28

    new-instance v3, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p2, v3}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_28
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2f} :catch_5a

    :try_start_2f
    new-instance v4, Landroid/telephony/TelephonyManager$2;

    invoke-direct {v4, p0, v3, p2}, Landroid/telephony/TelephonyManager$2;-><init>(Landroid/telephony/TelephonyManager;Ljava/io/InputStream;Landroid/os/OutcomeReceiver;)V

    invoke-virtual {p0, v3, p3, p4, v4}, Landroid/telephony/TelephonyManager;->uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_37} :catch_5a

    goto :goto_59

    :catch_38
    move-exception v4

    :try_start_39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception calling into stream-version of uploadCallComposerPicture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4f} :catch_5a

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_59

    :catch_53
    move-exception v5

    :try_start_54
    const-string v6, "Error closing file input stream when uploading call composer pic"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_5a

    :goto_59
    goto :goto_7a

    :catch_5a
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException when uploading call composer pic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    :goto_7a
    return-void
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    move v9, v0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_registry"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_41

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getRenouncedPermissions()Ljava/util/Set;

    move-result-object v10

    nop

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    nop

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v10, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    iget v2, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move v3, v11

    move v4, v12

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v1 .. v9}, Landroid/telephony/TelephonyRegistryManager;->listenFromListener(IZZLjava/lang/String;Ljava/lang/String;Landroid/telephony/PhoneStateListener;IZ)V

    goto :goto_49

    :cond_41
    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "telephony registry not ready."

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void
.end method

.method public matchesCurrentSimOperator(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v0

    :cond_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ITelephony;->isMvnoMatched(IILjava/lang/String;)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1a} :catch_1c

    return v0

    :cond_1b
    goto :goto_35

    :catch_1c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Telephony#matchesCurrentSimOperator RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelephonyManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return v0
.end method

.method public modifyDevicePolicyOverrideApn(Landroid/content/Context;ILandroid/telephony/data/ApnSetting;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public notifyOtaEmergencyNumberDbInstalled()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->notifyOtaEmergencyNumberDbInstalled()V

    goto :goto_1f

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "notifyOtaEmergencyNumberDatabaseInstalled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1f
    return-void
.end method

.method public notifyUserActivity()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->userActivity()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_28

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUserActivity exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .registers 5

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return-object v0

    :cond_d
    goto :goto_1d

    :catch_e
    move-exception v1

    const-string/jumbo v2, "nvReadItem NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_16
    move-exception v1

    const-string/jumbo v2, "nvReadItem RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    nop

    :goto_1e
    const-string v0, ""

    return-object v0
.end method

.method public nvResetConfig(I)Z
    .registers 5

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_36

    const/4 v2, 0x1

    if-ne p1, v2, :cond_14

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v0

    return v0

    :cond_14
    const/4 v2, 0x3

    if-ne p1, v2, :cond_20

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->resetModemConfig(I)Z

    move-result v0

    return v0

    :cond_20
    const-string/jumbo v2, "nvResetConfig unsupported reset type"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_26} :catch_2f
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_36

    :catch_27
    move-exception v1

    const-string/jumbo v2, "nvResetConfig NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :catch_2f
    move-exception v1

    const-string/jumbo v2, "nvResetConfig RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_36
    :goto_36
    nop

    :goto_37
    const/4 v0, 0x0

    return v0
.end method

.method public nvWriteCdmaPrl([B)Z
    .registers 5

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_1d

    :catch_e
    move-exception v1

    const-string/jumbo v2, "nvWriteCdmaPrl NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_16
    move-exception v1

    const-string/jumbo v2, "nvWriteCdmaPrl RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    nop

    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .registers 6

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_1d

    :catch_e
    move-exception v1

    const-string/jumbo v2, "nvWriteItem NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_16
    move-exception v1

    const-string/jumbo v2, "nvWriteItem RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    nop

    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public prepareForUnattendedReboot()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->prepareForUnattendedReboot()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_17

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#prepareForUnattendedReboot RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_17
    const/4 v0, 0x2

    return v0
.end method

.method public rebootModem()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    nop

    return-void

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "rebootRadio RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public rebootRadio()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->rebootModem(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return v0

    :cond_11
    goto :goto_21

    :catch_12
    move-exception v1

    const-string/jumbo v2, "rebootRadio NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :catch_1a
    move-exception v1

    const-string/jumbo v2, "rebootRadio RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    nop

    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method public refreshUiccProfile()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->refreshUiccProfile(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public registerCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_28

    if-eqz p2, :cond_20

    if-eqz p3, :cond_20

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/TelephonyRegistryManager;->addCarrierPrivilegesCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony registry service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CarrierPrivilegesCallback and executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTelephonyCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .registers 15

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony service is null."

    if-eqz v0, :cond_4f

    if-eqz p2, :cond_47

    if-eqz p3, :cond_47

    nop

    const-string/jumbo v2, "telephony_registry"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyRegistryManager;

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v2, :cond_41

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v3

    :goto_22
    if-nez p1, :cond_26

    move v4, v1

    goto :goto_27

    :cond_26
    move v4, v3

    :goto_27
    iget v6, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    if-eqz v5, :cond_39

    move v10, v1

    goto :goto_3a

    :cond_39
    move v10, v3

    :goto_3a
    move v3, v0

    move-object v5, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v10}, Landroid/telephony/TelephonyRegistryManager;->registerTelephonyCallback(ZZLjava/util/concurrent/Executor;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V

    return-void

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TelephonyCallback and executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getLocationData()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public reportDefaultNetworkStatus(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_12

    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->carrierActionReportDefaultNetworkStatus(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionReportDefaultNetworkStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public requestCellInfoUpdate(Landroid/os/WorkSource;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_18

    const-wide/32 v1, 0xadbeeaa

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    new-instance v3, Landroid/telephony/TelephonyManager$5;

    invoke-direct {v3, p0, p2, p3}, Landroid/telephony/TelephonyManager$5;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ITelephony;->requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_39

    :catch_30
    move-exception v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p2, p3, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda16;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_39
    return-void
.end method

.method public requestCellInfoUpdate(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    .registers 8

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_18

    const-wide/32 v1, 0xadbeeaa

    invoke-static {v1, v2}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    new-instance v2, Landroid/telephony/TelephonyManager$4;

    invoke-direct {v2, p0, p1, p2}, Landroid/telephony/TelephonyManager$4;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_request_cell_info_list"

    invoke-static {v1, v2, v3}, Landroid/telephony/MiuiResourceAccessUtilsStub;->sendResourceAccessBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_42

    :catch_39
    move-exception v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;Landroid/os/RemoteException;)V

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_42
    return-void
.end method

.method public requestModemActivityInfo(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telephony/ModemActivityInfo;",
            "Landroid/telephony/TelephonyManager$ModemActivityInfoException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/telephony/TelephonyManager$9;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/telephony/TelephonyManager$9;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :try_start_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "event_request_activity_info"

    invoke-static {v2, v3, v4}, Landroid/telephony/MiuiResourceAccessUtilsStub;->sendResourceAccessBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/ITelephony;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_20} :catch_22

    return-void

    :cond_21
    goto :goto_2a

    :catch_22
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string v3, "Error calling ITelephony#getModemActivityInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p2}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda7;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 15

    sget-object v0, Landroid/telephony/TelephonyManager;->sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    if-nez v1, :cond_e

    new-instance v1, Landroid/telephony/TelephonyScanManager;

    invoke-direct {v1}, Landroid/telephony/TelephonyScanManager;-><init>()V

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyScanManager:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    move v4, v0

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v9

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v9}, Landroid/telephony/TelephonyScanManager;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/NetworkScan;

    move-result-object v0

    return-object v0

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public requestNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1, v0, p2}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object v0

    return-object v0
.end method

.method public requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object v0

    return-object v0
.end method

.method public requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLjava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p4, :cond_48

    if-eqz p5, :cond_40

    new-instance v4, Landroid/telephony/TelephonyManager$6;

    invoke-direct {v4, p0, p4, p5}, Landroid/telephony/TelephonyManager$6;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move-object v6, v0

    if-nez v6, :cond_22

    const-wide/32 v0, 0xadbeeaa

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2d} :catch_2e

    goto :goto_3f

    :catch_2e
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "requestNumberVerification RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda21;

    invoke-direct {v1, p4, p5}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda21;-><init>(Ljava/util/concurrent/Executor;Landroid/telephony/NumberVerificationCallback;)V

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_3f
    return-void

    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Callback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetAllCarrierActions()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_12

    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->carrierActionResetAll(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionResetAll"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public resetCarrierKeysForImsiEncryption()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->resetCarrierKeysForImsiEncryption(ILjava/lang/String;)V

    goto :goto_39

    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IMSI error: Subscriber Info is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_20} :catch_20

    :catch_20
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#getCarrierInfoForImsiEncryption RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method public resetIms(I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->resetIms(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_28

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleImsOnOff, RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void
.end method

.method public resetOtaEmergencyNumberDbFilePath()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->resetOtaEmergencyNumberDbFilePath()V

    goto :goto_1f

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "resetOtaEmergencyNumberDbFilePath RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1f
    return-void
.end method

.method public resetRadioConfig()Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->resetModemConfig(I)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_10} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_12

    return v0

    :cond_11
    goto :goto_21

    :catch_12
    move-exception v1

    const-string/jumbo v2, "resetRadioConfig NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :catch_1a
    move-exception v1

    const-string/jumbo v2, "resetRadioConfig RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    nop

    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method public resetSettings()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    const-string v0, "TelephonyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetSettings: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->factoryReset(ILjava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2e} :catch_2f

    :cond_2e
    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    return-void
.end method

.method public sendDialerSpecialCode(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_2a

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#sendDialerSpecialCode RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return-object v1

    :cond_b
    goto :goto_f

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception v0

    :goto_f
    nop

    :goto_10
    const-string v0, ""

    return-object v0
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sendThermalMitigationRequest(Landroid/telephony/ThermalMitigationRequest;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Telephony#thermalMitigationRequest RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x4

    return v0
.end method

.method public sendUssdRequest(Ljava/lang/String;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/os/Handler;)V
    .registers 10

    const-string v0, "UssdResponseCallback cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    new-instance v1, Landroid/telephony/TelephonyManager$7;

    invoke-direct {v1, p0, p3, p2, v0}, Landroid/telephony/TelephonyManager$7;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/telephony/TelephonyManager;)V

    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    :cond_18
    goto :goto_36

    :catch_19
    move-exception v2

    const-string v3, "TelephonyManager"

    const-string v4, "Error calling ITelephony#sendUSSDCode"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Landroid/telephony/UssdResponse;

    const-string v4, ""

    invoke-direct {v3, p1, v4}, Landroid/telephony/UssdResponse;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "USSD_RESPONSE"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v5, -0x2

    invoke-virtual {v1, v5, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_36
    return-void
.end method

.method public sendVisualVoicemailSms(Ljava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 11

    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public sendVisualVoicemailSmsForSubscriber(ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 15

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony;->sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    goto :goto_1d

    :catch_1c
    move-exception v0

    :goto_1d
    return-void
.end method

.method public setAllowedCarriers(ILjava/util/List;)I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p2, :cond_2f

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2f

    :cond_a
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->setCarrierRestrictionRules(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v2

    if-nez v2, :cond_2e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_2e
    return v0

    :cond_2f
    :goto_2f
    return v0
.end method

.method public setAllowedNetworkTypes(J)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v1

    move-wide p1, v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_16

    return v1

    :cond_15
    goto :goto_1f

    :catch_16
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setAllowedNetworkTypes RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowedNetworkTypesForReason(IJ)V
    .registers 7

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isValidAllowedNetworkTypesReason(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-direct {p0, p2, p3}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v1

    move-wide p2, v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    goto :goto_2e

    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_22

    :catch_22
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setAllowedNetworkTypesForReason RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2e
    return-void

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid AllowedNetworkTypesReason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBasebandVersion(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    return-void
.end method

.method public setBasebandVersionForPhone(ILjava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->baseband_version()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->baseband_version(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public setCallComposerStatus(I)V
    .registers 5

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1f

    if-ltz p1, :cond_1f

    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCallComposerStatus(II)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_13

    :cond_12
    goto :goto_1e

    :catch_13
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCallComposerStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requested status is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallForwarding(Landroid/telephony/CallForwardingInfo;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CallForwardingInfo;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getReason()I

    move-result v1

    if-ltz v1, :cond_5f

    const/4 v2, 0x5

    if-gt v1, v2, :cond_5f

    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    invoke-virtual {p1}, Landroid/telephony/CallForwardingInfo;->getTimeoutSeconds()I

    move-result v2

    if-lez v2, :cond_23

    goto :goto_33

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwarding timeout isn\'t positive"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwarding number is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    :goto_33
    if-eqz p3, :cond_38

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    new-instance v2, Landroid/telephony/TelephonyManager$14;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/TelephonyManager$14;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_3d
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    if-eqz v3, :cond_5d

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    invoke-interface {v3, v4, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_4a} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_4a} :catch_4b

    goto :goto_5d

    :catch_4b
    move-exception v3

    const-string/jumbo v4, "setCallForwarding NPE"

    invoke-static {v0, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v3

    :catch_53
    move-exception v3

    const-string/jumbo v4, "setCallForwarding RemoteException"

    invoke-static {v0, v4, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_5d
    :goto_5d
    nop

    return-void

    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callForwardingReason is out of range"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callForwardingInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallWaitingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    if-eqz p3, :cond_7

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v1, Landroid/telephony/TelephonyManager$16;

    invoke-direct {v1, p0, p2, p3}, Landroid/telephony/TelephonyManager$16;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :try_start_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v3

    invoke-interface {v2, v3, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_19} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_2c

    :catch_1a
    move-exception v2

    const-string/jumbo v3, "setCallWaitingStatus NPE"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v2

    :catch_22
    move-exception v2

    const-string/jumbo v3, "setCallWaitingStatus RemoteException"

    invoke-static {v0, v3, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :cond_2c
    :goto_2c
    nop

    return-void
.end method

.method public setCarrierDataEnabled(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_1e

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v1, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->setCarrierInfoForImsiEncryption(ILjava/lang/String;Landroid/telephony/ImsiEncryptionInfo;)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_12} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_14

    nop

    return-void

    :catch_14
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setCarrierInfoForImsiEncryption RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1e
    move-exception v0

    return-void
.end method

.method public setCarrierRestrictionRules(Landroid/telephony/CarrierRestrictionRules;)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "Error calling ITelephony#setAllowedCarriers"

    const-string v1, "TelephonyManager"

    :try_start_4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_e} :catch_10

    return v0

    :cond_f
    goto :goto_19

    :catch_10
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_15
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_19
    nop

    :goto_1a
    const/4 v0, 0x2

    return v0
.end method

.method public setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1c

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephony;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    :cond_1c
    goto :goto_1e

    :catch_1d
    move-exception v0

    :goto_1e
    return-void
.end method

.method public setCarrierTestOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1e

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ITelephony;->setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    :cond_1e
    goto :goto_20

    :catch_1f
    move-exception v0

    :goto_20
    return-void
.end method

.method public setCdmaRoamingMode(I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    :try_start_7
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCdmaRoamingMode(II)Z

    move-result v1

    if-eqz v1, :cond_19

    nop

    goto :goto_36

    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "radio is unavailable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCdmaRoamingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_36
    return-void

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Phone does not support CDMA."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCdmaSubscriptionMode(I)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    :try_start_7
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setCdmaSubscriptionMode(II)Z

    move-result v1

    if-eqz v1, :cond_19

    nop

    goto :goto_36

    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "radio is unavailable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setCdmaSubscriptionMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_36
    return-void

    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Phone does not support CDMA."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCellInfoListRate(I)V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    :cond_d
    :goto_d
    nop

    :goto_e
    return-void
.end method

.method public setDataActivationState(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataActivationState(II)V

    return-void
.end method

.method public setDataActivationState(II)V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataActivationState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    :cond_d
    :goto_d
    nop

    :goto_e
    return-void
.end method

.method public setDataEnabled(IZ)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IIZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_1e

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public setDataEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    return-void
.end method

.method public setDataEnabledForReason(IZ)V
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IIZ)V

    return-void
.end method

.method public setDataNetworkType(I)V
    .registers 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    return-void
.end method

.method public setDataNetworkTypeForPhone(II)V
    .registers 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->data_network_type()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->data_network_type(Ljava/util/List;)V

    :cond_15
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_12

    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setDataRoamingEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public setForbiddenPlmns(Ljava/util/List;)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    const/4 v1, -0x1

    :try_start_3
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    move-object v6, p1

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/ITelephony;->setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1e} :catch_1f

    return v0

    :catch_1f
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setForbiddenPlmns NullPointerException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :catch_3c
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setForbiddenPlmns RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_59
    return v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string/jumbo v0, "setIccLockEnabled pin can\'t be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setIccLockEnabled(IZLjava/lang/String;)I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_20

    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    :cond_20
    if-gez v1, :cond_27

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v2

    return-object v2

    :cond_27
    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    :cond_2e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_37} :catch_37

    :catch_37
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setIccLockEnabled RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public setImsRegistrationState(Z)V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_b

    :catch_a
    move-exception v0

    :goto_b
    return-void
.end method

.method public setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez p3, :cond_7

    const-string v1, ""

    goto :goto_8

    :cond_7
    move-object v1, p3

    :goto_8
    invoke-virtual {v0, p1, v1}, Landroid/telephony/SubscriptionManager;->setCarrierPhoneNumber(ILjava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_17

    return v1

    :cond_16
    goto :goto_1a

    :catch_17
    move-exception v0

    goto :goto_1b

    :catch_19
    move-exception v0

    :goto_1a
    nop

    :goto_1b
    const/4 v0, 0x0

    return v0
.end method

.method public setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setMobileDataPolicyEnabled(IZ)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setMobileDataPolicyEnabled(IIZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_27

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telephony#setMobileDataPolicyEnabled RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public setMultiSimCarrierRestriction(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setMultiSimCarrierRestriction(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setMultiSimCarrierRestriction RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public setNetworkOperatorName(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    return-void
.end method

.method public setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .registers 10

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_alpha()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :try_start_e
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_alpha(Ljava/util/List;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_11} :catch_12

    goto :goto_5a

    :catch_12
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setNetworkOperatorNameForPhone: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    rsub-int/lit8 v4, v3, 0x5b

    div-int/2addr v4, v3

    const/4 v5, 0x0

    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_40

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3d

    nop

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v4}, Landroid/text/TextUtils;->truncateStringForUtf8Storage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_40
    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_alpha(Ljava/util/List;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "successfully truncated operator_alpha: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    return-void
.end method

.method public setNetworkOperatorNumeric(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    return-void
.end method

.method public setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_numeric()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_numeric(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public setNetworkRoaming(Z)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    return-void
.end method

.method public setNetworkRoamingForPhone(IZ)V
    .registers 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->operator_is_roaming(Ljava/util/List;)V

    :cond_15
    return-void
.end method

.method public setNetworkSelectionModeAutomatic()V
    .registers 4

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_1f

    :catch_10
    move-exception v1

    const-string/jumbo v2, "setNetworkSelectionModeAutomatic NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :catch_18
    move-exception v1

    const-string/jumbo v2, "setNetworkSelectionModeAutomatic RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    :goto_1f
    nop

    :goto_20
    return-void
.end method

.method public setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_10

    nop

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    return v1

    :cond_10
    goto :goto_1a

    :catch_11
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setNetworkSelectionModeManual RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Z)Z
    .registers 5

    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v0

    return v0
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;ZI)Z
    .registers 6

    new-instance v0, Lcom/android/internal/telephony/OperatorInfo;

    const-string v1, ""

    invoke-direct {v0, v1, v1, p1, p3}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v0

    return v0
.end method

.method public setNrDualConnectivityState(I)I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setNrDualConnectivityState(II)I

    move-result v1

    return v1

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_18

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "setNrDualConnectivityState RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x4

    return v0
.end method

.method public setOperatorBrandOverride(ILjava/lang/String;)Z
    .registers 6

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_c} :catch_e

    return v0

    :cond_d
    goto :goto_1d

    :catch_e
    move-exception v1

    const-string/jumbo v2, "setOperatorBrandOverride NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_16
    move-exception v1

    const-string/jumbo v2, "setOperatorBrandOverride RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    nop

    :goto_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOpportunisticNetworkState(Z)Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    :goto_b
    const/4 v1, 0x0

    :try_start_c
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/IOns;->setEnable(ZLjava/lang/String;)Z

    move-result v3
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    move v1, v3

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v2

    const-string v3, "TelephonyManager"

    const-string v4, "enableOpportunisticNetwork RemoteException"

    invoke-static {v3, v4, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return v1
.end method

.method public setPhoneType(I)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    return-void
.end method

.method public setPhoneType(II)V
    .registers 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->current_active_phone()Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->current_active_phone(Ljava/util/List;)V

    :cond_15
    return-void
.end method

.method public setPolicyDataEnabled(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledForReason(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_1e

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDataEnabledForReason e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    return-void
.end method

.method public setPreferredNetworkType(II)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_12

    nop

    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    return v0

    :cond_12
    goto :goto_1c

    :catch_13
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredNetworkType RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return v0
.end method

.method public setPreferredNetworkTypeBitmask(J)Z
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-direct {p0, p1, p2}, Landroid/telephony/TelephonyManager;->checkNetworkTypeBitmask(J)J

    move-result-wide v2

    move-wide p1, v2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setAllowedNetworkTypesForReason(IIJ)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_14} :catch_16

    return v0

    :cond_15
    goto :goto_1f

    :catch_16
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredNetworkTypeBitmask RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return v0
.end method

.method public setPreferredNetworkTypeToGlobal()Z
    .registers 2

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeToGlobal(I)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkTypeToGlobal(I)Z
    .registers 3

    const/16 v0, 0x1b

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    return v0
.end method

.method public setPreferredOpportunisticDataSubscription(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    :goto_b
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v1

    if-nez v1, :cond_2a

    const-wide/32 v2, 0xadbeeaa

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Opportunistic Network Service is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_22
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Null Opportunistic Network Service!"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2a
    new-instance v2, Landroid/telephony/TelephonyManager$10;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/TelephonyManager$10;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    nop

    invoke-interface {v1, p1, p2, v2, v0}, Lcom/android/internal/telephony/IOns;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_33} :catch_34

    goto :goto_4a

    :catch_34
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "setPreferredOpportunisticDataSubscription RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_4b

    if-nez p4, :cond_42

    goto :goto_4b

    :cond_42
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p3, p4}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda10;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_4a
    return-void

    :cond_4b
    :goto_4b
    return-void
.end method

.method public setRadio(Z)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadio"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public setRadioEnabled(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_12

    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->carrierActionSetRadioEnabled(IZ)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    goto :goto_1b

    :catch_13
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#carrierActionSetRadioEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    return-void
.end method

.method public setRadioPower(Z)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setRadioPower"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public setRemovableEsimAsDefaultEuicc(Z)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/ITelephony;->setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_27

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setRemovableEsimAsDefault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_13

    move-object v2, v1

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_12} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_12} :catch_14

    return v0

    :cond_13
    goto :goto_23

    :catch_14
    move-exception v1

    const-string/jumbo v2, "setRoamingOverride NPE"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string/jumbo v2, "setRoamingOverride RemoteException"

    invoke-static {v0, v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    nop

    :goto_24
    const/4 v0, 0x0

    return v0
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/TelephonyManager;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setSignalStrengthUpdateRequest(Landroid/telephony/SignalStrengthUpdateRequest;)V
    .registers 5

    const-string/jumbo v0, "request must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_6
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_18

    :cond_17
    goto :goto_20

    :catch_18
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setSignalStrengthUpdateRequest"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public setSimCountryIso(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    return-void
.end method

.method public setSimCountryIsoForPhone(ILjava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_iso_country(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public setSimOperatorName(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    return-void
.end method

.method public setSimOperatorNameForPhone(ILjava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_alpha(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public setSimOperatorNumeric(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    return-void
.end method

.method public setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->icc_operator_numeric(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public setSimPowerState(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(II)V

    return-void
.end method

.method public setSimPowerState(ILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setSimPowerStateForSlot(II)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "TelephonyManager"

    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlot(II)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_13
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_19

    :catch_c
    move-exception v1

    const-string v2, "Permission error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    :catch_13
    move-exception v1

    const-string v2, "Error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    nop

    :goto_1a
    return-void
.end method

.method public setSimPowerStateForSlot(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TelephonyManager"

    if-eqz p2, :cond_14

    const/4 v1, 0x1

    if-eq p2, v1, :cond_14

    const/4 v1, 0x2

    if-ne p2, v1, :cond_b

    goto :goto_14

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "requested SIM state is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_14
    :try_start_14
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-eqz v1, :cond_37

    new-instance v2, Landroid/telephony/TelephonyManager$8;

    invoke-direct {v2, p0, p3, p4}, Landroid/telephony/TelephonyManager$8;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    if-nez v1, :cond_33

    const-wide/32 v3, 0xadbeeaa

    invoke-static {v3, v4}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v3

    if-nez v3, :cond_2b

    return-void

    :cond_2b
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_33
    invoke-interface {v1, p1, p2, v2}, Lcom/android/internal/telephony/ITelephony;->setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V

    goto :goto_54

    :cond_37
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Telephony is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3f} :catch_46
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v1

    const-string v2, "Permission error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_55

    :catch_46
    move-exception v1

    const-string v2, "Error calling ITelephony#setSimPowerStateForSlot"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p3, p4}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda14;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_54
    nop

    :goto_55
    return-void
.end method

.method public setSimSlotMapping(Ljava/util/Collection;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->isSlotMappingValid(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->setSimSlotMapping(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1a

    nop

    nop

    return-void

    :cond_1a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "setSimSlotMapping has failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Duplicate UiccSlotMapping data found"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_34

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setSimState(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    return-void
.end method

.method public setSimStateForPhone(ILjava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/sysprop/TelephonyProperties;->sim_state()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->updateTelephonyProperty(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/TelephonyProperties;->sim_state(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public setSystemSelectionChannels(Ljava/util/List;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Specifiers must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setSystemSelectionChannels(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Specifiers must not be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor must not be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback must not be null."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/TelephonyManager;->setSystemSelectionChannelsInternal(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setVisualVoicemailEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setVisualVoicemailSmsFilterSettings(Landroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .registers 3

    if-nez p1, :cond_8

    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->disableVisualVoicemailSmsFilter(I)V

    goto :goto_d

    :cond_8
    iget v0, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->enableVisualVoicemailSmsFilter(ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V

    :goto_d
    return-void
.end method

.method public setVoNrEnabled(Z)I
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_14

    nop

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/telephony/TelephonyManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->setVoNrEnabled(IZ)I

    move-result v1

    return v1

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setVoNrEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x4

    return v0
.end method

.method public setVoiceActivationState(I)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setVoiceActivationState(II)V

    return-void
.end method

.method public setVoiceActivationState(II)V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoiceActivationState(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    :cond_d
    :goto_d
    nop

    :goto_e
    return-void
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_a} :catch_c

    return v1

    :cond_b
    goto :goto_f

    :catch_c
    move-exception v0

    goto :goto_10

    :catch_e
    move-exception v0

    :goto_f
    nop

    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setVoiceServiceStateOverride(Z)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/ITelephony;->setVoiceServiceStateOverride(IZLjava/lang/String;)V

    goto :goto_1e

    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telephony service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1e
    return-void
.end method

.method public setVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#setVoicemailRingtoneUri"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public setVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :cond_d
    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#isVoicemailVibrationEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public shutdownAllRadios()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_15

    :catch_a
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#shutdownAllRadios"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_15
    return-void
.end method

.method public silenceRinger()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public supplyIccLockPin(Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1

    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyIccLockPin"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public supplyIccLockPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/PinResult;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    new-instance v2, Landroid/telephony/PinResult;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/PinResult;-><init>(II)V

    return-object v2

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyIccLockPuk"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    invoke-static {}, Landroid/telephony/PinResult;->getDefaultFailedResult()Landroid/telephony/PinResult;

    move-result-object v0

    return-object v0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPinReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    :cond_f
    goto :goto_18

    :catch_10
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#supplyPukReportResultForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public switchMultiSimConfig(I)V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->switchMultiSimConfig(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "switchMultiSimConfig RemoteException"

    invoke-static {v1, v2, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public switchSlots([I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->switchSlots([I)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v1

    return v0
.end method

.method public toggleRadioOnOff()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string v2, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public unregisterCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_26

    if-eqz p1, :cond_1e

    const-class v1, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManager;

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyRegistryManager;->removeCarrierPrivilegesCallback(Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;)V

    return-void

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony registry service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CarrierPrivilegesCallback must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V
    .registers 10

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony service is null."

    if-eqz v0, :cond_3a

    iget-object v0, p1, Landroid/telephony/TelephonyCallback;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyRegistryManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyRegistryManager;

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mTelephonyRegistryMgr:Landroid/telephony/TelephonyRegistryManager;

    if-eqz v2, :cond_34

    iget v3, p0, Landroid/telephony/TelephonyManager;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    move v7, v0

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/TelephonyRegistryManager;->unregisterTelephonyCallback(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallback;Z)V

    return-void

    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateAvailableNetworks(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/AvailableNetworkInfo;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, "<unknown>"

    :goto_b
    const-string v1, "availableNetworks must not be null."

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_10
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getIOns()Lcom/android/internal/telephony/IOns;

    move-result-object v1

    if-nez v1, :cond_2f

    const-wide/32 v2, 0xadbeeaa

    invoke-static {v2, v3}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Opportunistic Network Service is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Null Opportunistic Network Service!"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2f
    new-instance v2, Landroid/telephony/TelephonyManager$11;

    invoke-direct {v2, p0, p2, p3}, Landroid/telephony/TelephonyManager$11;-><init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    nop

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/telephony/IOns;->updateAvailableNetworks(Ljava/util/List;Lcom/android/internal/telephony/IUpdateAvailableNetworksCallback;Ljava/lang/String;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_38} :catch_39

    goto :goto_4f

    :catch_39
    move-exception v1

    const-string v2, "TelephonyManager"

    const-string/jumbo v3, "updateAvailableNetworks RemoteException"

    invoke-static {v2, v3, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_50

    if-nez p3, :cond_47

    goto :goto_50

    :cond_47
    new-instance v2, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda9;

    invoke-direct {v2, p2, p3}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    :goto_4f
    return-void

    :cond_50
    :goto_50
    return-void
.end method

.method public updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_1f

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telephony service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    :catch_13
    move-exception v0

    const-string v1, "TelephonyManager"

    const-string/jumbo v2, "updateOtaEmergencyNumberDbFilePath RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_1f
    return-void
.end method

.method public updateServiceLocation()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "TelephonyManager"

    const-string v1, "Do not call TelephonyManager#updateServiceLocation()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/ParcelUuid;",
            "Landroid/telephony/TelephonyManager$CallComposerException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    if-eqz v6, :cond_66

    :try_start_f
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    move-object v7, v1

    const/4 v1, 0x0

    aget-object v4, v0, v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1a} :catch_5c

    nop

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v8, v0

    :try_start_21
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubId()I

    move-result v1

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/telephony/TelephonyManager$3;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0, p3, p4}, Landroid/telephony/TelephonyManager$3;-><init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    move-object v0, v6

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephony;->uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_36} :catch_37

    goto :goto_53

    :catch_37
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception uploading call composer pic:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_53
    new-instance v0, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p4, v7, v8}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda5;-><init>(Ljava/io/InputStream;Landroid/os/OutcomeReceiver;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_5c
    move-exception v0

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p4, v0}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/OutcomeReceiver;Ljava/io/IOException;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Telephony service not available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uploadCallComposerPicture(Ljava/nio/file/Path;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/ParcelUuid;",
            "Landroid/telephony/TelephonyManager$CallComposerException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    const-string v1, "android.app.role.DIALER"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->isRoleHeld(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda22;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Landroid/telephony/TelephonyManager$$ExternalSyntheticLambda22;-><init>(Landroid/telephony/TelephonyManager;Ljava/nio/file/Path;Landroid/os/OutcomeReceiver;Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    invoke-interface {p3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2a
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "You must hold RoleManager.ROLE_DIALER to do this"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
