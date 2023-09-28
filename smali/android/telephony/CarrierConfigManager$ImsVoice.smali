# classes3.dex

.class public final Landroid/telephony/CarrierConfigManager$ImsVoice;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CarrierConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImsVoice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CarrierConfigManager$ImsVoice$EvsPrimaryModeBitRate;,
        Landroid/telephony/CarrierConfigManager$ImsVoice$EvsEncodedBwType;,
        Landroid/telephony/CarrierConfigManager$ImsVoice$EvsOperationalMode;,
        Landroid/telephony/CarrierConfigManager$ImsVoice$AmrPayloadFormat;,
        Landroid/telephony/CarrierConfigManager$ImsVoice$SessionRefreshMethod;,
        Landroid/telephony/CarrierConfigManager$ImsVoice$SrvccType;,
        Landroid/telephony/CarrierConfigManager$ImsVoice$ConferenceSubscribeType;,
        Landroid/telephony/CarrierConfigManager$ImsVoice$SessionPrivacyType;,
        Landroid/telephony/CarrierConfigManager$ImsVoice$SessionRefresherType;
    }
.end annotation


# static fields
.field public static final ALERTING_SRVCC_SUPPORT:I = 0x1

.field public static final BANDWIDTH_EFFICIENT:I = 0x0

.field public static final BASIC_SRVCC_SUPPORT:I = 0x0

.field public static final CONFERENCE_SUBSCRIBE_TYPE_IN_DIALOG:I = 0x0

.field public static final CONFERENCE_SUBSCRIBE_TYPE_OUT_OF_DIALOG:I = 0x1

.field public static final EVS_ENCODED_BW_TYPE_FB:I = 0x3

.field public static final EVS_ENCODED_BW_TYPE_NB:I = 0x0

.field public static final EVS_ENCODED_BW_TYPE_NB_WB:I = 0x4

.field public static final EVS_ENCODED_BW_TYPE_NB_WB_SWB:I = 0x5

.field public static final EVS_ENCODED_BW_TYPE_NB_WB_SWB_FB:I = 0x6

.field public static final EVS_ENCODED_BW_TYPE_SWB:I = 0x2

.field public static final EVS_ENCODED_BW_TYPE_WB:I = 0x1

.field public static final EVS_ENCODED_BW_TYPE_WB_SWB:I = 0x7

.field public static final EVS_ENCODED_BW_TYPE_WB_SWB_FB:I = 0x8

.field public static final EVS_OPERATIONAL_MODE_AMRWB_IO:I = 0x1

.field public static final EVS_OPERATIONAL_MODE_PRIMARY:I = 0x0

.field public static final EVS_PRIMARY_MODE_BITRATE_128_0_KBPS:I = 0xb

.field public static final EVS_PRIMARY_MODE_BITRATE_13_2_KBPS:I = 0x4

.field public static final EVS_PRIMARY_MODE_BITRATE_16_4_KBPS:I = 0x5

.field public static final EVS_PRIMARY_MODE_BITRATE_24_4_KBPS:I = 0x6

.field public static final EVS_PRIMARY_MODE_BITRATE_32_0_KBPS:I = 0x7

.field public static final EVS_PRIMARY_MODE_BITRATE_48_0_KBPS:I = 0x8

.field public static final EVS_PRIMARY_MODE_BITRATE_5_9_KBPS:I = 0x0

.field public static final EVS_PRIMARY_MODE_BITRATE_64_0_KBPS:I = 0x9

.field public static final EVS_PRIMARY_MODE_BITRATE_7_2_KBPS:I = 0x1

.field public static final EVS_PRIMARY_MODE_BITRATE_8_0_KBPS:I = 0x2

.field public static final EVS_PRIMARY_MODE_BITRATE_96_0_KBPS:I = 0xa

.field public static final EVS_PRIMARY_MODE_BITRATE_9_6_KBPS:I = 0x3

.field public static final KEY_AMRNB_PAYLOAD_DESCRIPTION_BUNDLE:Ljava/lang/String; = "imsvoice.amrnb_payload_description_bundle"

.field public static final KEY_AMRNB_PAYLOAD_TYPE_INT_ARRAY:Ljava/lang/String; = "imsvoice.amrnb_payload_type_int_array"

.field public static final KEY_AMRWB_PAYLOAD_DESCRIPTION_BUNDLE:Ljava/lang/String; = "imsvoice.amrwb_payload_description_bundle"

.field public static final KEY_AMRWB_PAYLOAD_TYPE_INT_ARRAY:Ljava/lang/String; = "imsvoice.amrwb_payload_type_int_array"

.field public static final KEY_AMR_CODEC_ATTRIBUTE_MODESET_INT_ARRAY:Ljava/lang/String; = "imsvoice.amr_codec_attribute_modeset_int_array"

.field public static final KEY_AMR_CODEC_ATTRIBUTE_PAYLOAD_FORMAT_INT:Ljava/lang/String; = "imsvoice.amr_codec_attribute_payload_format_int"

.field public static final KEY_AUDIO_AS_BANDWIDTH_KBPS_INT:Ljava/lang/String; = "imsvoice.audio_as_bandwidth_kbps_int"

.field public static final KEY_AUDIO_CODEC_CAPABILITY_PAYLOAD_TYPES_BUNDLE:Ljava/lang/String; = "imsvoice.audio_codec_capability_payload_types_bundle"

.field public static final KEY_AUDIO_INACTIVITY_CALL_END_REASONS_INT_ARRAY:Ljava/lang/String; = "imsvoice.audio_inactivity_call_end_reasons_int_array"

.field public static final KEY_AUDIO_RR_BANDWIDTH_BPS_INT:Ljava/lang/String; = "imsvoice.audio_rr_bandwidth_bps_int"

.field public static final KEY_AUDIO_RS_BANDWIDTH_BPS_INT:Ljava/lang/String; = "imsvoice.audio_rs_bandwidth_bps_int"

.field public static final KEY_AUDIO_RTCP_INACTIVITY_TIMER_MILLIS_INT:Ljava/lang/String; = "imsvoice.audio_rtcp_inactivity_timer_millis_int"

.field public static final KEY_AUDIO_RTP_INACTIVITY_TIMER_MILLIS_INT:Ljava/lang/String; = "imsvoice.audio_rtp_inactivity_timer_millis_int"

.field public static final KEY_CARRIER_VOLTE_ROAMING_AVAILABLE_BOOL:Ljava/lang/String; = "imsvoice.carrier_volte_roaming_available_bool"

.field public static final KEY_CODEC_ATTRIBUTE_MODE_CHANGE_CAPABILITY_INT:Ljava/lang/String; = "imsvoice.codec_attribute_mode_change_capability_int"

.field public static final KEY_CODEC_ATTRIBUTE_MODE_CHANGE_NEIGHBOR_INT:Ljava/lang/String; = "imsvoice.codec_attribute_mode_change_neighbor_int"

.field public static final KEY_CODEC_ATTRIBUTE_MODE_CHANGE_PERIOD_INT:Ljava/lang/String; = "imsvoice.codec_attribute_mode_change_period_int"

.field public static final KEY_CONFERENCE_FACTORY_URI_STRING:Ljava/lang/String; = "imsvoice.conference_factory_uri_string"

.field public static final KEY_CONFERENCE_SUBSCRIBE_TYPE_INT:Ljava/lang/String; = "imsvoice.conference_subscribe_type_int"

.field public static final KEY_DEDICATED_BEARER_WAIT_TIMER_MILLIS_INT:Ljava/lang/String; = "imsvoice.dedicated_bearer_wait_timer_millis_int"

.field public static final KEY_DTMFNB_PAYLOAD_TYPE_INT_ARRAY:Ljava/lang/String; = "imsvoice.dtmfnb_payload_type_int_array"

.field public static final KEY_DTMFWB_PAYLOAD_TYPE_INT_ARRAY:Ljava/lang/String; = "imsvoice.dtmfwb_payload_type_int_array"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_BANDWIDTH_INT:Ljava/lang/String; = "imsvoice.evs_codec_attribute_bandwidth_int"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_BITRATE_INT_ARRAY:Ljava/lang/String; = "imsvoice.evs_codec_attribute_bitrate_int_array"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_CHANNELS_INT:Ljava/lang/String; = "imsvoice.evs_codec_attribute_channels_int"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_CH_AW_RECV_INT:Ljava/lang/String; = "imsvoice.evs_codec_attribute_ch_aw_recv_int"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_CMR_INT:Ljava/lang/String; = "imsvoice.codec_attribute_cmr_int"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_DTX_BOOL:Ljava/lang/String; = "imsvoice.evs_codec_attribute_dtx_bool"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_DTX_RECV_BOOL:Ljava/lang/String; = "imsvoice.evs_codec_attribute_dtx_recv_bool"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_HF_ONLY_INT:Ljava/lang/String; = "imsvoice.evs_codec_attribute_hf_only_int"

.field public static final KEY_EVS_CODEC_ATTRIBUTE_MODE_SWITCH_INT:Ljava/lang/String; = "imsvoice.evs_codec_attribute_mode_switch_int"

.field public static final KEY_EVS_PAYLOAD_DESCRIPTION_BUNDLE:Ljava/lang/String; = "imsvoice.evs_payload_description_bundle"

.field public static final KEY_EVS_PAYLOAD_TYPE_INT_ARRAY:Ljava/lang/String; = "imsvoice.evs_payload_type_int_array"

.field public static final KEY_INCLUDE_CALLER_ID_SERVICE_CODES_IN_SIP_INVITE_BOOL:Ljava/lang/String; = "imsvoice.include_caller_id_service_codes_in_sip_invite_bool"

.field public static final KEY_MINIMUM_SESSION_EXPIRES_TIMER_SEC_INT:Ljava/lang/String; = "imsvoice.minimum_session_expires_timer_sec_int"

.field public static final KEY_MO_CALL_REQUEST_TIMEOUT_MILLIS_INT:Ljava/lang/String; = "imsvoice.mo_call_request_timeout_millis_int"

.field public static final KEY_MULTIENDPOINT_SUPPORTED_BOOL:Ljava/lang/String; = "imsvoice.multiendpoint_supported_bool"

.field public static final KEY_OIP_SOURCE_FROM_HEADER_BOOL:Ljava/lang/String; = "imsvoice.oip_source_from_header_bool"

.field public static final KEY_PRACK_SUPPORTED_FOR_18X_BOOL:Ljava/lang/String; = "imsvoice.prack_supported_for_18x_bool"

.field public static final KEY_PREFIX:Ljava/lang/String; = "imsvoice."

.field public static final KEY_RINGBACK_TIMER_MILLIS_INT:Ljava/lang/String; = "imsvoice.ringback_timer_millis_int"

.field public static final KEY_RINGING_TIMER_MILLIS_INT:Ljava/lang/String; = "imsvoice.ringing_timer_millis_int"

.field public static final KEY_SESSION_EXPIRES_TIMER_SEC_INT:Ljava/lang/String; = "imsvoice.session_expires_timer_sec_int"

.field public static final KEY_SESSION_PRIVACY_TYPE_INT:Ljava/lang/String; = "imsvoice.session_privacy_type_int"

.field public static final KEY_SESSION_REFRESHER_TYPE_INT:Ljava/lang/String; = "imsvoice.session_refresher_type_int"

.field public static final KEY_SESSION_REFRESH_METHOD_INT:Ljava/lang/String; = "imsvoice.session_refresh_method_int"

.field public static final KEY_SESSION_TIMER_SUPPORTED_BOOL:Ljava/lang/String; = "imsvoice.session_timer_supported_bool"

.field public static final KEY_SRVCC_TYPE_INT_ARRAY:Ljava/lang/String; = "imsvoice.srvcc_type_int_array"

.field public static final KEY_VOICE_ON_DEFAULT_BEARER_SUPPORTED_BOOL:Ljava/lang/String; = "imsvoice.voice_on_default_bearer_supported_bool"

.field public static final KEY_VOICE_QOS_PRECONDITION_SUPPORTED_BOOL:Ljava/lang/String; = "imsvoice.voice_qos_precondition_supported_bool"

.field public static final MIDCALL_SRVCC_SUPPORT:I = 0x3

.field public static final OCTET_ALIGNED:I = 0x1

.field public static final PREALERTING_SRVCC_SUPPORT:I = 0x2

.field public static final SESSION_PRIVACY_TYPE_HEADER:I = 0x0

.field public static final SESSION_PRIVACY_TYPE_ID:I = 0x2

.field public static final SESSION_PRIVACY_TYPE_NONE:I = 0x1

.field public static final SESSION_REFRESHER_TYPE_UAC:I = 0x1

.field public static final SESSION_REFRESHER_TYPE_UAS:I = 0x2

.field public static final SESSION_REFRESHER_TYPE_UNKNOWN:I = 0x0

.field public static final SESSION_REFRESH_METHOD_INVITE:I = 0x0

.field public static final SESSION_REFRESH_METHOD_UPDATE_PREFERRED:I = 0x1


# direct methods
.method static bridge synthetic -$$Nest$smgetDefaults()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/telephony/CarrierConfigManager$ImsVoice;->getDefaults()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefaults()Landroid/os/PersistableBundle;
    .registers 10

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v1, "imsvoice.carrier_volte_roaming_available_bool"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsvoice.include_caller_id_service_codes_in_sip_invite_bool"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsvoice.multiendpoint_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsvoice.session_timer_supported_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsvoice.oip_source_from_header_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsvoice.prack_supported_for_18x_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsvoice.voice_qos_precondition_supported_bool"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsvoice.voice_on_default_bearer_supported_bool"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "imsvoice.session_refresher_type_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.session_privacy_type_int"

    invoke-virtual {v0, v1, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.session_refresh_method_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.conference_subscribe_type_int"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.audio_rtp_inactivity_timer_millis_int"

    const/16 v4, 0x4e20

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.audio_rtcp_inactivity_timer_millis_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.dedicated_bearer_wait_timer_millis_int"

    const/16 v4, 0x1f40

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.ringing_timer_millis_int"

    const v4, 0x15f90

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.ringback_timer_millis_int"

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.mo_call_request_timeout_millis_int"

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.session_expires_timer_sec_int"

    const/16 v4, 0x708

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.minimum_session_expires_timer_sec_int"

    const/16 v4, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.audio_as_bandwidth_kbps_int"

    const/16 v4, 0x29

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.audio_rs_bandwidth_bps_int"

    const/16 v4, 0x258

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "imsvoice.audio_rr_bandwidth_bps_int"

    const/16 v4, 0x7d0

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x4

    new-array v4, v1, [I

    fill-array-data v4, :array_146

    const-string/jumbo v5, "imsvoice.audio_inactivity_call_end_reasons_int_array"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v1, v1, [I

    fill-array-data v1, :array_152

    const-string/jumbo v4, "imsvoice.srvcc_type_int_array"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v1, "imsvoice.conference_factory_uri_string"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_15e

    const-string/jumbo v6, "imsvoice.amrwb_payload_type_int_array"

    invoke-virtual {v1, v6, v5}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v4, v4, [I

    fill-array-data v4, :array_166

    const-string/jumbo v5, "imsvoice.amrnb_payload_type_int_array"

    invoke-virtual {v1, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v4, v2, [I

    const/16 v5, 0x65

    aput v5, v4, v3

    const-string/jumbo v5, "imsvoice.dtmfwb_payload_type_int_array"

    invoke-virtual {v1, v5, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    new-array v4, v2, [I

    const/16 v5, 0x66

    aput v5, v4, v3

    const-string/jumbo v3, "imsvoice.dtmfnb_payload_type_int_array"

    invoke-virtual {v1, v3, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo v3, "imsvoice.audio_codec_capability_payload_types_bundle"

    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    const-string v5, "97"

    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    const-string/jumbo v6, "imsvoice.amr_codec_attribute_payload_format_int"

    invoke-virtual {v5, v6, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "98"

    invoke-virtual {v3, v7, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v7, "imsvoice.amrwb_payload_description_bundle"

    invoke-virtual {v0, v7, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    const-string v9, "99"

    invoke-virtual {v7, v9, v8}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    new-instance v9, Landroid/os/PersistableBundle;

    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    invoke-virtual {v9, v6, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "100"

    invoke-virtual {v7, v2, v9}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    const-string/jumbo v2, "imsvoice.amrnb_payload_description_bundle"

    invoke-virtual {v0, v2, v7}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    return-object v0

    nop

    :array_146
    .array-data 4
        0x1
        0x2
        0x3
        0x0
    .end array-data

    :array_152
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data

    :array_15e
    .array-data 4
        0x61
        0x62
    .end array-data

    :array_166
    .array-data 4
        0x63
        0x64
    .end array-data
.end method
