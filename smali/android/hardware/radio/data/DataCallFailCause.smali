# classes2.dex

.class public interface abstract annotation Landroid/hardware/radio/data/DataCallFailCause;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/DataCallFailCause$$;
    }
.end annotation


# static fields
.field public static final ACCESS_ATTEMPT_ALREADY_IN_PROGRESS:I = 0x8ab

.field public static final ACCESS_BLOCK:I = 0x827

.field public static final ACCESS_BLOCK_ALL:I = 0x828

.field public static final ACCESS_CLASS_DSAC_REJECTION:I = 0x83c

.field public static final ACCESS_CONTROL_LIST_CHECK_FAILURE:I = 0x850

.field public static final ACTIVATION_REJECTED_BCM_VIOLATION:I = 0x30

.field public static final ACTIVATION_REJECT_GGSN:I = 0x1e

.field public static final ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field public static final ALL_MATCHING_RULES_FAILED:I = 0x8ce

.field public static final APN_DISABLED:I = 0x7fd

.field public static final APN_DISALLOWED_ON_ROAMING:I = 0x80b

.field public static final APN_MISMATCH:I = 0x806

.field public static final APN_PARAMETERS_CHANGED:I = 0x80c

.field public static final APN_PENDING_HANDOVER:I = 0x7f9

.field public static final APN_TYPE_CONFLICT:I = 0x70

.field public static final AUTH_FAILURE_ON_EMERGENCY_CALL:I = 0x7a

.field public static final BEARER_HANDLING_NOT_SUPPORTED:I = 0x3c

.field public static final CALL_DISALLOWED_IN_ROAMING:I = 0x814

.field public static final CALL_PREEMPT_BY_EMERGENCY_APN:I = 0x7f

.field public static final CANNOT_ENCODE_OTA_MESSAGE:I = 0x86f

.field public static final CDMA_ALERT_STOP:I = 0x81d

.field public static final CDMA_INCOMING_CALL:I = 0x81c

.field public static final CDMA_INTERCEPT:I = 0x819

.field public static final CDMA_LOCK:I = 0x818

.field public static final CDMA_RELEASE_DUE_TO_SO_REJECTION:I = 0x81b

.field public static final CDMA_REORDER:I = 0x81a

.field public static final CDMA_RETRY_ORDER:I = 0x826

.field public static final CHANNEL_ACQUISITION_FAILURE:I = 0x81e

.field public static final CLOSE_IN_PROGRESS:I = 0x7ee

.field public static final COLLISION_WITH_NETWORK_INITIATED_REQUEST:I = 0x38

.field public static final COMPANION_IFACE_IN_USE:I = 0x76

.field public static final CONCURRENT_SERVICES_INCOMPATIBLE:I = 0x823

.field public static final CONCURRENT_SERVICES_NOT_ALLOWED:I = 0x82b

.field public static final CONCURRENT_SERVICE_NOT_SUPPORTED_BY_BASE_STATION:I = 0x820

.field public static final CONDITIONAL_IE_ERROR:I = 0x64

.field public static final CONGESTION:I = 0x83a

.field public static final CONNECTION_RELEASED:I = 0x841

.field public static final CS_DOMAIN_NOT_AVAILABLE:I = 0x885

.field public static final CS_FALLBACK_CALL_ESTABLISHMENT_NOT_ALLOWED:I = 0x88c

.field public static final DATA_PLAN_EXPIRED:I = 0x896

.field public static final DATA_REGISTRATION_FAIL:I = -0x2

.field public static final DATA_ROAMING_SETTINGS_DISABLED:I = 0x810

.field public static final DATA_SETTINGS_DISABLED:I = 0x80f

.field public static final DBM_OR_SMS_IN_PROGRESS:I = 0x8a3

.field public static final DDS_SWITCHED:I = 0x811

.field public static final DDS_SWITCH_IN_PROGRESS:I = 0x813

.field public static final DRB_RELEASED_BY_RRC:I = 0x840

.field public static final DS_EXPLICIT_DEACTIVATION:I = 0x84d

.field public static final DUAL_SWITCH:I = 0x8b3

.field public static final DUN_CALL_DISALLOWED:I = 0x808

.field public static final DUPLICATE_BEARER_ID:I = 0x846

.field public static final EHRPD_TO_HRPD_FALLBACK:I = 0x801

.field public static final EMBMS_NOT_ENABLED:I = 0x891

.field public static final EMBMS_REGULAR_DEACTIVATION:I = 0x893

.field public static final EMERGENCY_IFACE_ONLY:I = 0x74

.field public static final EMERGENCY_MODE:I = 0x8ad

.field public static final EMM_ACCESS_BARRED:I = 0x73

.field public static final EMM_ACCESS_BARRED_INFINITE_RETRY:I = 0x79

.field public static final EMM_ATTACH_FAILED:I = 0x843

.field public static final EMM_ATTACH_STARTED:I = 0x844

.field public static final EMM_DETACHED:I = 0x842

.field public static final EMM_T3417_EXPIRED:I = 0x852

.field public static final EMM_T3417_EXT_EXPIRED:I = 0x853

.field public static final EPS_SERVICES_AND_NON_EPS_SERVICES_NOT_ALLOWED:I = 0x882

.field public static final EPS_SERVICES_NOT_ALLOWED_IN_PLMN:I = 0x883

.field public static final ERROR_UNSPECIFIED:I = 0xffff

.field public static final ESM_BAD_OTA_MESSAGE:I = 0x84a

.field public static final ESM_BEARER_DEACTIVATED_TO_SYNC_WITH_NETWORK:I = 0x848

.field public static final ESM_COLLISION_SCENARIOS:I = 0x847

.field public static final ESM_CONTEXT_TRANSFERRED_DUE_TO_IRAT:I = 0x84c

.field public static final ESM_DOWNLOAD_SERVER_REJECTED_THE_CALL:I = 0x84b

.field public static final ESM_FAILURE:I = 0x886

.field public static final ESM_INFO_NOT_RECEIVED:I = 0x35

.field public static final ESM_LOCAL_CAUSE_NONE:I = 0x84e

.field public static final ESM_NW_ACTIVATED_DED_BEARER_WITH_ID_OF_DEF_BEARER:I = 0x849

.field public static final ESM_PROCEDURE_TIME_OUT:I = 0x86b

.field public static final ESM_UNKNOWN_EPS_BEARER_CONTEXT:I = 0x83f

.field public static final EVDO_CONNECTION_DENY_BY_BILLING_OR_AUTHENTICATION_FAILURE:I = 0x899

.field public static final EVDO_CONNECTION_DENY_BY_GENERAL_OR_NETWORK_BUSY:I = 0x898

.field public static final EVDO_HDR_CHANGED:I = 0x89a

.field public static final EVDO_HDR_CONNECTION_SETUP_TIMEOUT:I = 0x89e

.field public static final EVDO_HDR_EXITED:I = 0x89b

.field public static final EVDO_HDR_NO_SESSION:I = 0x89c

.field public static final EVDO_USING_GPS_FIX_INSTEAD_OF_HDR_CALL:I = 0x89d

.field public static final FADE:I = 0x8a9

.field public static final FAILED_TO_ACQUIRE_COLOCATED_HDR:I = 0x89f

.field public static final FEATURE_NOT_SUPP:I = 0x28

.field public static final FILTER_SEMANTIC_ERROR:I = 0x2c

.field public static final FILTER_SYTAX_ERROR:I = 0x2d

.field public static final FORBIDDEN_APN_NAME:I = 0x812

.field public static final GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:I = 0x831

.field public static final GPRS_SERVICES_NOT_ALLOWED:I = 0x832

.field public static final GPRS_SERVICES_NOT_ALLOWED_IN_THIS_PLMN:I = 0x837

.field public static final HANDOFF_PREFERENCE_CHANGED:I = 0x8cb

.field public static final HDR_ACCESS_FAILURE:I = 0x8a5

.field public static final HDR_FADE:I = 0x8a4

.field public static final HDR_NO_LOCK_GRANTED:I = 0x8a2

.field public static final IFACE_AND_POL_FAMILY_MISMATCH:I = 0x78

.field public static final IFACE_MISMATCH:I = 0x75

.field public static final ILLEGAL_ME:I = 0x830

.field public static final ILLEGAL_MS:I = 0x82f

.field public static final IMEI_NOT_ACCEPTED:I = 0x881

.field public static final IMPLICITLY_DETACHED:I = 0x834

.field public static final IMSI_UNKNOWN_IN_HOME_SUBSCRIBER_SERVER:I = 0x880

.field public static final INCOMING_CALL_REJECTED:I = 0x82c

.field public static final INSUFFICIENT_RESOURCES:I = 0x1a

.field public static final INTERFACE_IN_USE:I = 0x80a

.field public static final INTERNAL_CALL_PREEMPT_BY_HIGH_PRIO_APN:I = 0x72

.field public static final INTERNAL_EPC_NONEPC_TRANSITION:I = 0x809

.field public static final INVALID_CONNECTION_ID:I = 0x86c

.field public static final INVALID_DNS_ADDR:I = 0x7b

.field public static final INVALID_EMM_STATE:I = 0x88e

.field public static final INVALID_MANDATORY_INFO:I = 0x60

.field public static final INVALID_MODE:I = 0x8af

.field public static final INVALID_PCSCF_ADDR:I = 0x71

.field public static final INVALID_PCSCF_OR_DNS_ADDRESS:I = 0x7c

.field public static final INVALID_PRIMARY_NSAPI:I = 0x86e

.field public static final INVALID_SIM_STATE:I = 0x8b0

.field public static final INVALID_TRANSACTION_ID:I = 0x51

.field public static final IPV6_ADDRESS_TRANSFER_FAILED:I = 0x7ff

.field public static final IPV6_PREFIX_UNAVAILABLE:I = 0x8ca

.field public static final IP_ADDRESS_MISMATCH:I = 0x77

.field public static final IP_VERSION_MISMATCH:I = 0x807

.field public static final IRAT_HANDOVER_FAILED:I = 0x892

.field public static final IS707B_MAX_ACCESS_PROBES:I = 0x829

.field public static final LIMITED_TO_IPV4:I = 0x8ba

.field public static final LIMITED_TO_IPV6:I = 0x8bb

.field public static final LLC_SNDCP:I = 0x19

.field public static final LOCAL_END:I = 0x8a7

.field public static final LOCATION_AREA_NOT_ALLOWED:I = 0x836

.field public static final LOWER_LAYER_REGISTRATION_FAILURE:I = 0x895

.field public static final LOW_POWER_MODE_OR_POWERING_DOWN:I = 0x7fc

.field public static final LTE_NAS_SERVICE_REQUEST_FAILED:I = 0x845

.field public static final LTE_THROTTLING_NOT_REQUIRED:I = 0x84f

.field public static final MAC_FAILURE:I = 0x887

.field public static final MATCH_ALL_RULE_NOT_ALLOWED:I = 0x8cd

.field public static final MAXIMIUM_NSAPIS_EXCEEDED:I = 0x86d

.field public static final MAXINUM_SIZE_OF_L2_MESSAGE_EXCEEDED:I = 0x876

.field public static final MAX_ACCESS_PROBE:I = 0x81f

.field public static final MAX_ACTIVE_PDP_CONTEXT_REACHED:I = 0x41

.field public static final MAX_IPV4_CONNECTIONS:I = 0x804

.field public static final MAX_IPV6_CONNECTIONS:I = 0x805

.field public static final MAX_PPP_INACTIVITY_TIMER_EXPIRED:I = 0x7fe

.field public static final MESSAGE_INCORRECT_SEMANTIC:I = 0x5f

.field public static final MESSAGE_TYPE_UNSUPPORTED:I = 0x61

.field public static final MIP_CONFIG_FAILURE:I = 0x802

.field public static final MIP_FA_ADMIN_PROHIBITED:I = 0x7d1

.field public static final MIP_FA_DELIVERY_STYLE_NOT_SUPPORTED:I = 0x7dc

.field public static final MIP_FA_ENCAPSULATION_UNAVAILABLE:I = 0x7d8

.field public static final MIP_FA_HOME_AGENT_AUTHENTICATION_FAILURE:I = 0x7d4

.field public static final MIP_FA_INSUFFICIENT_RESOURCES:I = 0x7d2

.field public static final MIP_FA_MALFORMED_REPLY:I = 0x7d7

.field public static final MIP_FA_MALFORMED_REQUEST:I = 0x7d6

.field public static final MIP_FA_MISSING_CHALLENGE:I = 0x7e1

.field public static final MIP_FA_MISSING_HOME_ADDRESS:I = 0x7df

.field public static final MIP_FA_MISSING_HOME_AGENT:I = 0x7de

.field public static final MIP_FA_MISSING_NAI:I = 0x7dd

.field public static final MIP_FA_MOBILE_NODE_AUTHENTICATION_FAILURE:I = 0x7d3

.field public static final MIP_FA_REASON_UNSPECIFIED:I = 0x7d0

.field public static final MIP_FA_REQUESTED_LIFETIME_TOO_LONG:I = 0x7d5

.field public static final MIP_FA_REVERSE_TUNNEL_IS_MANDATORY:I = 0x7db

.field public static final MIP_FA_REVERSE_TUNNEL_UNAVAILABLE:I = 0x7da

.field public static final MIP_FA_STALE_CHALLENGE:I = 0x7e2

.field public static final MIP_FA_UNKNOWN_CHALLENGE:I = 0x7e0

.field public static final MIP_FA_VJ_HEADER_COMPRESSION_UNAVAILABLE:I = 0x7d9

.field public static final MIP_HA_ADMIN_PROHIBITED:I = 0x7e4

.field public static final MIP_HA_ENCAPSULATION_UNAVAILABLE:I = 0x7ed

.field public static final MIP_HA_FOREIGN_AGENT_AUTHENTICATION_FAILURE:I = 0x7e7

.field public static final MIP_HA_INSUFFICIENT_RESOURCES:I = 0x7e5

.field public static final MIP_HA_MALFORMED_REQUEST:I = 0x7e9

.field public static final MIP_HA_MOBILE_NODE_AUTHENTICATION_FAILURE:I = 0x7e6

.field public static final MIP_HA_REASON_UNSPECIFIED:I = 0x7e3

.field public static final MIP_HA_REGISTRATION_ID_MISMATCH:I = 0x7e8

.field public static final MIP_HA_REVERSE_TUNNEL_IS_MANDATORY:I = 0x7ec

.field public static final MIP_HA_REVERSE_TUNNEL_UNAVAILABLE:I = 0x7eb

.field public static final MIP_HA_UNKNOWN_HOME_AGENT_ADDRESS:I = 0x7ea

.field public static final MISSING_UNKNOWN_APN:I = 0x1b

.field public static final MODEM_APP_PREEMPTED:I = 0x7f0

.field public static final MODEM_RESTART:I = 0x7f5

.field public static final MSC_TEMPORARILY_NOT_REACHABLE:I = 0x884

.field public static final MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE:I = 0x65

.field public static final MSG_TYPE_NONCOMPATIBLE_STATE:I = 0x62

.field public static final MS_IDENTITY_CANNOT_BE_DERIVED_BY_THE_NETWORK:I = 0x833

.field public static final MULTIPLE_PDP_CALL_NOT_ALLOWED:I = 0x890

.field public static final MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED:I = 0x37

.field public static final NAS_LAYER_FAILURE:I = 0x88f

.field public static final NAS_REQUEST_REJECTED_BY_NETWORK:I = 0x877

.field public static final NAS_SIGNALLING:I = 0xe

.field public static final NETWORK_FAILURE:I = 0x26

.field public static final NETWORK_INITIATED_DETACH_NO_AUTO_REATTACH:I = 0x86a

.field public static final NETWORK_INITIATED_DETACH_WITH_AUTO_REATTACH:I = 0x869

.field public static final NETWORK_INITIATED_TERMINATION:I = 0x7ef

.field public static final NONE:I = 0x0

.field public static final NON_IP_NOT_SUPPORTED:I = 0x815

.field public static final NORMAL_RELEASE:I = 0x8aa

.field public static final NO_CDMA_SERVICE:I = 0x824

.field public static final NO_COLLOCATED_HDR:I = 0x8b1

.field public static final NO_EPS_BEARER_CONTEXT_ACTIVATED:I = 0x88d

.field public static final NO_GPRS_CONTEXT:I = 0x82e

.field public static final NO_HYBRID_HDR_SERVICE:I = 0x8a1

.field public static final NO_PDP_CONTEXT_ACTIVATED:I = 0x83b

.field public static final NO_RESPONSE_FROM_BASE_STATION:I = 0x821

.field public static final NO_SERVICE:I = 0x8a8

.field public static final NO_SERVICE_ON_GATEWAY:I = 0x82d

.field public static final NSAPI_IN_USE:I = 0x23

.field public static final NULL_APN_DISALLOWED:I = 0x80d

.field public static final OEM_DCFAILCAUSE_1:I = 0x1001

.field public static final OEM_DCFAILCAUSE_10:I = 0x100a

.field public static final OEM_DCFAILCAUSE_11:I = 0x100b

.field public static final OEM_DCFAILCAUSE_12:I = 0x100c

.field public static final OEM_DCFAILCAUSE_13:I = 0x100d

.field public static final OEM_DCFAILCAUSE_14:I = 0x100e

.field public static final OEM_DCFAILCAUSE_15:I = 0x100f

.field public static final OEM_DCFAILCAUSE_2:I = 0x1002

.field public static final OEM_DCFAILCAUSE_3:I = 0x1003

.field public static final OEM_DCFAILCAUSE_4:I = 0x1004

.field public static final OEM_DCFAILCAUSE_5:I = 0x1005

.field public static final OEM_DCFAILCAUSE_6:I = 0x1006

.field public static final OEM_DCFAILCAUSE_7:I = 0x1007

.field public static final OEM_DCFAILCAUSE_8:I = 0x1008

.field public static final OEM_DCFAILCAUSE_9:I = 0x1009

.field public static final ONLY_IPV4V6_ALLOWED:I = 0x39

.field public static final ONLY_IPV4_ALLOWED:I = 0x32

.field public static final ONLY_IPV6_ALLOWED:I = 0x33

.field public static final ONLY_NON_IP_ALLOWED:I = 0x3a

.field public static final ONLY_SINGLE_BEARER_ALLOWED:I = 0x34

.field public static final OPERATOR_BARRED:I = 0x8

.field public static final OTASP_COMMIT_IN_PROGRESS:I = 0x8a0

.field public static final PDN_CONN_DOES_NOT_EXIST:I = 0x36

.field public static final PDN_INACTIVITY_TIMER_EXPIRED:I = 0x803

.field public static final PDN_IPV4_CALL_DISALLOWED:I = 0x7f1

.field public static final PDN_IPV4_CALL_THROTTLED:I = 0x7f2

.field public static final PDN_IPV6_CALL_DISALLOWED:I = 0x7f3

.field public static final PDN_IPV6_CALL_THROTTLED:I = 0x7f4

.field public static final PDN_NON_IP_CALL_DISALLOWED:I = 0x817

.field public static final PDN_NON_IP_CALL_THROTTLED:I = 0x816

.field public static final PDP_ACTIVATE_MAX_RETRY_FAILED:I = 0x83d

.field public static final PDP_DUPLICATE:I = 0x838

.field public static final PDP_ESTABLISH_TIMEOUT_EXPIRED:I = 0x871

.field public static final PDP_INACTIVE_TIMEOUT_EXPIRED:I = 0x873

.field public static final PDP_LOWERLAYER_ERROR:I = 0x874

.field public static final PDP_MODIFY_COLLISION:I = 0x875

.field public static final PDP_MODIFY_TIMEOUT_EXPIRED:I = 0x872

.field public static final PDP_PPP_NOT_SUPPORTED:I = 0x7f6

.field public static final PDP_WITHOUT_ACTIVE_TFT:I = 0x2e

.field public static final PHONE_IN_USE:I = 0x8ae

.field public static final PHYSICAL_LINK_CLOSE_IN_PROGRESS:I = 0x7f8

.field public static final PLMN_NOT_ALLOWED:I = 0x835

.field public static final PPP_AUTH_FAILURE:I = 0x8b5

.field public static final PPP_CHAP_FAILURE:I = 0x8b8

.field public static final PPP_CLOSE_IN_PROGRESS:I = 0x8b9

.field public static final PPP_OPTION_MISMATCH:I = 0x8b6

.field public static final PPP_PAP_FAILURE:I = 0x8b7

.field public static final PPP_TIMEOUT:I = 0x8b4

.field public static final PREF_RADIO_TECH_CHANGED:I = -0x4

.field public static final PROFILE_BEARER_INCOMPATIBLE:I = 0x7fa

.field public static final PROTOCOL_ERRORS:I = 0x6f

.field public static final QOS_NOT_ACCEPTED:I = 0x25

.field public static final RADIO_ACCESS_BEARER_FAILURE:I = 0x83e

.field public static final RADIO_ACCESS_BEARER_SETUP_FAILURE:I = 0x870

.field public static final RADIO_POWER_OFF:I = -0x5

.field public static final REDIRECTION_OR_HANDOFF_IN_PROGRESS:I = 0x8ac

.field public static final REGULAR_DEACTIVATION:I = 0x24

.field public static final REJECTED_BY_BASE_STATION:I = 0x822

.field public static final RRC_CONNECTION_ABORTED_AFTER_HANDOVER:I = 0x87d

.field public static final RRC_CONNECTION_ABORTED_AFTER_IRAT_CELL_CHANGE:I = 0x87e

.field public static final RRC_CONNECTION_ABORTED_DUE_TO_IRAT_CHANGE:I = 0x87b

.field public static final RRC_CONNECTION_ABORTED_DURING_IRAT_CELL_CHANGE:I = 0x87f

.field public static final RRC_CONNECTION_ABORT_REQUEST:I = 0x867

.field public static final RRC_CONNECTION_ACCESS_BARRED:I = 0x85b

.field public static final RRC_CONNECTION_ACCESS_STRATUM_FAILURE:I = 0x859

.field public static final RRC_CONNECTION_ANOTHER_PROCEDURE_IN_PROGRESS:I = 0x85a

.field public static final RRC_CONNECTION_CELL_NOT_CAMPED:I = 0x860

.field public static final RRC_CONNECTION_CELL_RESELECTION:I = 0x85c

.field public static final RRC_CONNECTION_CONFIG_FAILURE:I = 0x85d

.field public static final RRC_CONNECTION_INVALID_REQUEST:I = 0x878

.field public static final RRC_CONNECTION_LINK_FAILURE:I = 0x85f

.field public static final RRC_CONNECTION_NORMAL_RELEASE:I = 0x863

.field public static final RRC_CONNECTION_OUT_OF_SERVICE_DURING_CELL_REGISTER:I = 0x866

.field public static final RRC_CONNECTION_RADIO_LINK_FAILURE:I = 0x864

.field public static final RRC_CONNECTION_REESTABLISHMENT_FAILURE:I = 0x865

.field public static final RRC_CONNECTION_REJECT_BY_NETWORK:I = 0x862

.field public static final RRC_CONNECTION_RELEASED_SECURITY_NOT_ACTIVE:I = 0x87c

.field public static final RRC_CONNECTION_RF_UNAVAILABLE:I = 0x87a

.field public static final RRC_CONNECTION_SYSTEM_INFORMATION_BLOCK_READ_ERROR:I = 0x868

.field public static final RRC_CONNECTION_SYSTEM_INTERVAL_FAILURE:I = 0x861

.field public static final RRC_CONNECTION_TIMER_EXPIRED:I = 0x85e

.field public static final RRC_CONNECTION_TRACKING_AREA_ID_CHANGED:I = 0x879

.field public static final RRC_UPLINK_CONNECTION_RELEASE:I = 0x856

.field public static final RRC_UPLINK_DATA_TRANSMISSION_FAILURE:I = 0x854

.field public static final RRC_UPLINK_DELIVERY_FAILED_DUE_TO_HANDOVER:I = 0x855

.field public static final RRC_UPLINK_ERROR_REQUEST_FROM_NAS:I = 0x858

.field public static final RRC_UPLINK_RADIO_LINK_FAILURE:I = 0x857

.field public static final RUIM_NOT_PRESENT:I = 0x825

.field public static final SECURITY_MODE_REJECTED:I = 0x88a

.field public static final SERVICE_NOT_ALLOWED_ON_PLMN:I = 0x851

.field public static final SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field public static final SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field public static final SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field public static final SIGNAL_LOST:I = -0x3

.field public static final SIM_CARD_CHANGED:I = 0x7fb

.field public static final SLICE_REJECTED:I = 0x8cc

.field public static final SYNCHRONIZATION_FAILURE:I = 0x888

.field public static final TEST_LOOPBACK_REGULAR_DEACTIVATION:I = 0x894

.field public static final TETHERED_CALL_ACTIVE:I = -0x6

.field public static final TFT_SEMANTIC_ERROR:I = 0x29

.field public static final TFT_SYTAX_ERROR:I = 0x2a

.field public static final THERMAL_EMERGENCY:I = 0x82a

.field public static final THERMAL_MITIGATION:I = 0x80e

.field public static final TRAT_SWAP_FAILED:I = 0x800

.field public static final UE_INITIATED_DETACH_OR_DISCONNECT:I = 0x80

.field public static final UE_IS_ENTERING_POWERSAVE_MODE:I = 0x8b2

.field public static final UE_RAT_CHANGE:I = 0x839

.field public static final UE_SECURITY_CAPABILITIES_MISMATCH:I = 0x889

.field public static final UMTS_HANDOVER_TO_IWLAN:I = 0x897

.field public static final UMTS_REACTIVATION_REQ:I = 0x27

.field public static final UNACCEPTABLE_NON_EPS_AUTHENTICATION:I = 0x88b

.field public static final UNKNOWN_INFO_ELEMENT:I = 0x63

.field public static final UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field public static final UNKNOWN_PDP_CONTEXT:I = 0x2b

.field public static final UNPREFERRED_RAT:I = 0x7f7

.field public static final UNSUPPORTED_1X_PREV:I = 0x8a6

.field public static final UNSUPPORTED_APN_IN_CURRENT_PLMN:I = 0x42

.field public static final UNSUPPORTED_QCI_VALUE:I = 0x3b

.field public static final USER_AUTHENTICATION:I = 0x1d

.field public static final VOICE_REGISTRATION_FAIL:I = -0x1

.field public static final VSNCP_ADMINISTRATIVELY_PROHIBITED:I = 0x8c5

.field public static final VSNCP_APN_UNAUTHORIZED:I = 0x8be

.field public static final VSNCP_GEN_ERROR:I = 0x8bd

.field public static final VSNCP_INSUFFICIENT_PARAMETERS:I = 0x8c3

.field public static final VSNCP_NO_PDN_GATEWAY_ADDRESS:I = 0x8c0

.field public static final VSNCP_PDN_EXISTS_FOR_THIS_APN:I = 0x8c8

.field public static final VSNCP_PDN_GATEWAY_REJECT:I = 0x8c2

.field public static final VSNCP_PDN_GATEWAY_UNREACHABLE:I = 0x8c1

.field public static final VSNCP_PDN_ID_IN_USE:I = 0x8c6

.field public static final VSNCP_PDN_LIMIT_EXCEEDED:I = 0x8bf

.field public static final VSNCP_RECONNECT_NOT_ALLOWED:I = 0x8c9

.field public static final VSNCP_RESOURCE_UNAVAILABLE:I = 0x8c4

.field public static final VSNCP_SUBSCRIBER_LIMITATION:I = 0x8c7

.field public static final VSNCP_TIMEOUT:I = 0x8bc
