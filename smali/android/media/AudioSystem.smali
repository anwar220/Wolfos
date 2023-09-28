# classes2.dex

.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$AudioSystemError;,
        Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;,
        Landroid/media/AudioSystem$RoutingUpdateCallback;,
        Landroid/media/AudioSystem$AudioRecordingCallback;,
        Landroid/media/AudioSystem$DynamicPolicyCallback;,
        Landroid/media/AudioSystem$ErrorCallback;,
        Landroid/media/AudioSystem$DeviceType;,
        Landroid/media/AudioSystem$AudioFormatNativeEnumForBtLeAudioCodec;,
        Landroid/media/AudioSystem$AudioFormatNativeEnumForBtCodec;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_AAC:I = 0x4000000

.field public static final AUDIO_FORMAT_APTX:I = 0x20000000

.field public static final AUDIO_FORMAT_APTX_ADAPTIVE:I = 0x27000000

.field public static final AUDIO_FORMAT_APTX_HD:I = 0x21000000

.field public static final AUDIO_FORMAT_APTX_TWSP:I = 0x2a000000

.field public static final AUDIO_FORMAT_CELT:I = 0x26000000

.field public static final AUDIO_FORMAT_DEFAULT:I = 0x0

.field public static final AUDIO_FORMAT_INVALID:I = -0x1

.field public static final AUDIO_FORMAT_LC3:I = 0x2b000000

.field public static final AUDIO_FORMAT_LDAC:I = 0x23000000

.field public static final AUDIO_FORMAT_LHDC:I = 0x28000000

.field public static final AUDIO_FORMAT_LHDC_LL:I = 0x29000000

.field public static final AUDIO_FORMAT_SBC:I = 0x1f000000

.field public static final AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final BAD_VALUE:I = -0x2

.field public static final DEAD_OBJECT:I = -0x6

.field private static final DEBUG_VOLUME:Z = false

.field public static final DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x6f

.field public static DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_IN_ALL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_IN_ALL_USB_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final DEVICE_IN_BLE_HEADSET:I = -0x60000000

.field public static final DEVICE_IN_BLE_HEADSET_NAME:Ljava/lang/String; = "ble_headset"

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_IN_BLUETOOTH_BLE:I = -0x7c000000

.field public static final DEVICE_IN_BLUETOOTH_BLE_NAME:Ljava/lang/String; = "bt_ble"

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final DEVICE_IN_BUS:I = -0x7ff00000

.field public static final DEVICE_IN_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_IN_ECHO_REFERENCE:I = -0x70000000

.field public static final DEVICE_IN_ECHO_REFERENCE_NAME:Ljava/lang/String; = "echo_reference"

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_HDMI_ARC:I = -0x78000000

.field public static final DEVICE_IN_HDMI_ARC_NAME:Ljava/lang/String; = "hdmi_arc"

.field public static final DEVICE_IN_HDMI_EARC:I = -0x77ffffff

.field public static final DEVICE_IN_HDMI_EARC_NAME:Ljava/lang/String; = "hdmi_earc"

.field public static final DEVICE_IN_IP:I = -0x7ff80000

.field public static final DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final DEVICE_IN_PROXY:I = -0x7f000000

.field public static final DEVICE_IN_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_IN_USB_HEADSET:I = -0x7e000000

.field public static final DEVICE_IN_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_OUT_ALL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_OUT_ALL_USB:I = 0x4006000

.field public static final DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final DEVICE_OUT_BLE_BROADCAST:I = 0x20000002

.field public static final DEVICE_OUT_BLE_BROADCAST_NAME:Ljava/lang/String; = "ble_broadcast"

.field public static final DEVICE_OUT_BLE_HEADSET:I = 0x20000000

.field public static final DEVICE_OUT_BLE_HEADSET_NAME:Ljava/lang/String; = "ble_headset"

.field public static final DEVICE_OUT_BLE_SPEAKER:I = 0x20000001

.field public static final DEVICE_OUT_BLE_SPEAKER_NAME:Ljava/lang/String; = "ble_speaker"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_BUS:I = 0x1000000

.field public static final DEVICE_OUT_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_ECHO_CANCELLER:I = 0x10000000

.field public static final DEVICE_OUT_ECHO_CANCELLER_NAME:Ljava/lang/String; = "echo_canceller"

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hmdi_arc"

.field public static final DEVICE_OUT_HDMI_EARC:I = 0x40001

.field public static final DEVICE_OUT_HDMI_EARC_NAME:Ljava/lang/String; = "hmdi_earc"

.field public static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final DEVICE_OUT_HEARING_AID:I = 0x8000000

.field public static final DEVICE_OUT_HEARING_AID_NAME:Ljava/lang/String; = "hearing_aid_out"

.field public static final DEVICE_OUT_IP:I = 0x800000

.field public static final DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_OUT_PROXY:I = 0x2000000

.field public static final DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_ROLE_DISABLED:I = 0x2

.field public static final DEVICE_ROLE_NONE:I = 0x0

.field public static final DEVICE_ROLE_PREFERRED:I = 0x1

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field public static final DIRECT_BITSTREAM_SUPPORTED:I = 0x4

.field public static final DIRECT_NOT_SUPPORTED:I = 0x0

.field public static final DIRECT_OFFLOAD_GAPLESS_SUPPORTED:I = 0x3

.field public static final DIRECT_OFFLOAD_SUPPORTED:I = 0x1

.field private static final DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final FCC_24:I = 0x18

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_ENCODED_SURROUND_ALWAYS:I = 0xe

.field public static final FORCE_ENCODED_SURROUND_MANUAL:I = 0xf

.field public static final FORCE_ENCODED_SURROUND_NEVER:I = 0xd

.field public static final FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_ENCODED_SURROUND:I = 0x6

.field public static final FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final FOR_LOOPBACK:I = 0x9

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_SYSTEM:I = 0x4

.field public static final FOR_VIBRATE_RINGING:I = 0x7

.field public static final INVALID_OPERATION:I = -0x3

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final LEGACY_REMOTE_SUBMIX_ADDRESS:Ljava/lang/String; = "0"

.field private static final MAX_DEVICE_ROUTING:I = 0x4

.field public static final MODE_CALL_REDIRECT:I = 0x5

.field public static final MODE_CALL_SCREENING:I = 0x4

.field public static final MODE_COMMUNICATION_REDIRECT:I = 0x6

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field static final NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final NO_INIT:I = -0x5

.field private static final NUM_DEVICE_STATES:I = 0x1

.field public static final NUM_FORCE_CONFIG:I = 0x10

.field private static final NUM_FORCE_USE:I = 0x8

.field public static final NUM_MODES:I = 0x7

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xc

.field public static final OFFLOAD_GAPLESS_SUPPORTED:I = 0x2

.field public static final OFFLOAD_NOT_SUPPORTED:I = 0x0

.field public static final OFFLOAD_SUPPORTED:I = 0x1

.field public static final OUT_CHANNEL_COUNT_MAX:I

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final PLATFORM_DEFAULT:I = 0x0

.field public static final PLATFORM_TELEVISION:I = 0x2

.field public static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SAMPLE_RATE_HZ_MAX:I

.field public static final SAMPLE_RATE_HZ_MIN:I

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_ASSISTANT:I = 0xb

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NAMES:[Ljava/lang/String;

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field public static final SYNC_EVENT_SHARE_AUDIO_HISTORY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AudioSystem"

.field public static final VX_AUDIO_FORMAT_APTX_ADAPTIVE_QLEA:I = 0x30000000

.field public static final WOULD_BLOCK:I = -0x7

.field private static sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private static sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private static sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

.field private static sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

.field private static sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    invoke-static {}, Landroid/media/AudioSystem;->native_getMaxChannelCount()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->OUT_CHANNEL_COUNT_MAX:I

    invoke-static {}, Landroid/media/AudioSystem;->native_getMaxSampleRate()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    invoke-static {}, Landroid/media/AudioSystem;->native_getMinSampleRate()I

    move-result v0

    sput v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MIN:I

    const-string v1, "STREAM_VOICE_CALL"

    const-string v2, "STREAM_SYSTEM"

    const-string v3, "STREAM_RING"

    const-string v4, "STREAM_MUSIC"

    const-string v5, "STREAM_ALARM"

    const-string v6, "STREAM_NOTIFICATION"

    const-string v7, "STREAM_BLUETOOTH_SCO"

    const-string v8, "STREAM_SYSTEM_ENFORCED"

    const-string v9, "STREAM_DTMF"

    const-string v10, "STREAM_TTS"

    const-string v11, "STREAM_ACCESSIBILITY"

    const-string v12, "STREAM_ASSISTANT"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x40

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x100

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x800

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x1000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x2000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v9, 0x4000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v10, 0x8000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v10, 0x10000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v10, 0x20000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v10, 0x40000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v11, 0x40001

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v12, 0x80000

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v13, 0x100000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v13, 0x200000

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v14, 0x400000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v14, 0x800000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v14, 0x1000000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v14, 0x2000000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v14, 0x4000000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v15, 0x8000000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v15, 0x10000000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v15, 0x20000000

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v16, 0x20000001

    move-object/from16 v17, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v15, 0x20000002

    move-object/from16 v18, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO_SET:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/media/AudioSystem;->DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER_SET:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SET:Ljava/util/Set;

    const v1, -0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, -0x7ffffffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, -0x7ffffffc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, -0x7ffffff8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffffe0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffffc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffff80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, -0x7fffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffe00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffffc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v2, -0x7ffff800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v3, -0x7ffff000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v4, -0x7fffe000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v4, -0x7fffc000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v4, -0x7fff8000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7fff0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7ffc0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7ff80000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7ff00000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7f000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v4, -0x7e000000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v5, -0x7c000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v5, -0x78000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v5, -0x77ffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v5, -0x70000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v5, -0x60000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v5, -0x40000000  # -2.0f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/AudioSystem;->DEVICE_IN_ALL_USB_SET:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_32c

    sput-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    return-void

    nop

    :array_32c
    .array-data 4
        0x4
        0x7
        0x5
        0x5
        0x6
        0x5
        0x7
        0x7
        0x5
        0x5
        0x5
        0x5
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Trying to instantiate AudioSystem"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x2

    return v0

    :cond_8
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->addDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native addDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static audioFormatToBluetoothLeAudioSourceCodec(I)I
    .registers 3

    sparse-switch p0, :sswitch_data_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio format 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to BT LE audio codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xf4240

    return v0

    :sswitch_29
    const/4 v0, 0x1

    return v0

    :sswitch_2b
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x2b000000 -> :sswitch_2b
        0x30000000 -> :sswitch_29
    .end sparse-switch
.end method

.method public static audioFormatToBluetoothSourceCodec(I)I
    .registers 3

    const/16 v0, 0xd

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown audio format 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to BT codec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0xf4240

    return v0

    :sswitch_2c
    return v1

    :sswitch_2d
    const/4 v0, 0x5

    return v0

    :sswitch_2f
    const/4 v0, 0x7

    return v0

    :sswitch_31
    return v0

    :sswitch_32
    return v0

    :sswitch_33
    const/4 v0, 0x6

    return v0

    :sswitch_35
    const/16 v0, 0x8

    return v0

    :sswitch_38
    const/4 v0, 0x4

    return v0

    :sswitch_3a
    const/4 v0, 0x3

    return v0

    :sswitch_3c
    const/4 v0, 0x2

    return v0

    :sswitch_3e
    const/4 v0, 0x0

    return v0

    :sswitch_40
    return v1

    nop

    :sswitch_data_42
    .sparse-switch
        0x4000000 -> :sswitch_40
        0x1f000000 -> :sswitch_3e
        0x20000000 -> :sswitch_3c
        0x21000000 -> :sswitch_3a
        0x23000000 -> :sswitch_38
        0x26000000 -> :sswitch_35
        0x27000000 -> :sswitch_33
        0x28000000 -> :sswitch_32
        0x29000000 -> :sswitch_31
        0x2a000000 -> :sswitch_2f
        0x2b000000 -> :sswitch_2d
        0x30000000 -> :sswitch_2c
    .end sparse-switch
.end method

.method public static audioFormatToString(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_114

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUDIO_FORMAT_("

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

    :sswitch_1d
    const-string v0, "VX_AUDIO_FORMAT_APTX_ADAPTIVE_QLEA"

    return-object v0

    :sswitch_20
    const-string v0, "AUDIO_FORMAT_DRA"

    return-object v0

    :sswitch_23
    const-string v0, "AUDIO_FORMAT_DTS_UHD"

    return-object v0

    :sswitch_26
    const-string v0, "AUDIO_FORMAT_LC3"

    return-object v0

    :sswitch_29
    const-string v0, "AUDIO_FORMAT_APTX_TWSP"

    return-object v0

    :sswitch_2c
    const-string v0, "AUDIO_FORMAT_LHDC_LL"

    return-object v0

    :sswitch_2f
    const-string v0, "AUDIO_FORMAT_LHDC"

    return-object v0

    :sswitch_32
    const-string v0, "AUDIO_FORMAT_APTX_ADAPTIVE"

    return-object v0

    :sswitch_35
    const-string v0, "AUDIO_FORMAT_CELT"

    return-object v0

    :sswitch_38
    const-string v0, "AUDIO_FORMAT_AAC_LATM_HE_V2"

    return-object v0

    :sswitch_3b
    const-string v0, "AUDIO_FORMAT_AAC_LATM_HE_V1"

    return-object v0

    :sswitch_3e
    const-string v0, "AUDIO_FORMAT_AAC_LATM_LC"

    return-object v0

    :sswitch_41
    const-string v0, "AUDIO_FORMAT_AAC_LATM"

    return-object v0

    :sswitch_44
    const-string v0, "AUDIO_FORMAT_MAT_2_1"

    return-object v0

    :sswitch_47
    const-string v0, "AUDIO_FORMAT_MAT_2_0"

    return-object v0

    :sswitch_4a
    const-string v0, "AUDIO_FORMAT_MAT_1_0"

    return-object v0

    :sswitch_4d
    const-string v0, "AUDIO_FORMAT_MAT"

    return-object v0

    :sswitch_50
    const-string v0, "AUDIO_FORMAT_LDAC"

    return-object v0

    :sswitch_53
    const-string v0, "AUDIO_FORMAT_AC4"

    return-object v0

    :sswitch_56
    const-string v0, "AUDIO_FORMAT_APTX_HD"

    return-object v0

    :sswitch_59
    const-string v0, "AUDIO_FORMAT_APTX"

    return-object v0

    :sswitch_5c
    const-string v0, "AUDIO_FORMAT_SBC"

    return-object v0

    :sswitch_5f
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_XHE"

    return-object v0

    :sswitch_62
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_ELD"

    return-object v0

    :sswitch_65
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_HE_V2"

    return-object v0

    :sswitch_68
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LD"

    return-object v0

    :sswitch_6b
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_ERLC"

    return-object v0

    :sswitch_6e
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_SCALABLE"

    return-object v0

    :sswitch_71
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_HE_V1"

    return-object v0

    :sswitch_74
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LTP"

    return-object v0

    :sswitch_77
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_SSR"

    return-object v0

    :sswitch_7a
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_LC"

    return-object v0

    :sswitch_7d
    const-string v0, "AUDIO_FORMAT_AAC_ADTS_MAIN"

    return-object v0

    :sswitch_80
    const-string v0, "AUDIO_FORMAT_AAC_ADTS"

    return-object v0

    :sswitch_83
    const-string v0, "AUDIO_FORMAT_APE"

    return-object v0

    :sswitch_86
    const-string v0, "AUDIO_FORMAT_ALAC"

    return-object v0

    :sswitch_89
    const-string v0, "AUDIO_FORMAT_FLAC"

    return-object v0

    :sswitch_8c
    const-string v0, "AUDIO_FORMAT_DSD"

    return-object v0

    :sswitch_8f
    const-string v0, "AUDIO_FORMAT_QCELP"

    return-object v0

    :sswitch_92
    const-string v0, "AUDIO_FORMAT_MP2"

    return-object v0

    :sswitch_95
    const-string v0, "AUDIO_FORMAT_AMR_WB_PLUS"

    return-object v0

    :sswitch_98
    const-string v0, "AUDIO_FORMAT_WMA_PRO"

    return-object v0

    :sswitch_9b
    const-string v0, "AUDIO_FORMAT_WMA"

    return-object v0

    :sswitch_9e
    const-string v0, "AUDIO_FORMAT_AAC_ADIF"

    return-object v0

    :sswitch_a1
    const-string v0, "AUDIO_FORMAT_EVRCNW"

    return-object v0

    :sswitch_a4
    const-string v0, "AUDIO_FORMAT_EVRCWB"

    return-object v0

    :sswitch_a7
    const-string v0, "AUDIO_FORMAT_EVRCB"

    return-object v0

    :sswitch_aa
    const-string v0, "AUDIO_FORMAT_EVRC"

    return-object v0

    :sswitch_ad
    const-string v0, "AUDIO_FORMAT_DOLBY_TRUEHD"

    return-object v0

    :sswitch_b0
    const-string v0, "AUDIO_FORMAT_IEC61937"

    return-object v0

    :sswitch_b3
    const-string v0, "AUDIO_FORMAT_DTS_HD"

    return-object v0

    :sswitch_b6
    const-string v0, "AUDIO_FORMAT_DTS"

    return-object v0

    :sswitch_b9
    const-string v0, "AUDIO_FORMAT_E_AC3_JOC"

    return-object v0

    :sswitch_bc
    const-string v0, "AUDIO_FORMAT_E_AC3"

    return-object v0

    :sswitch_bf
    const-string v0, "AUDIO_FORMAT_AC3"

    return-object v0

    :sswitch_c2
    const-string v0, "AUDIO_FORMAT_OPUS"

    return-object v0

    :sswitch_c5
    const-string v0, "AUDIO_FORMAT_VORBIS"

    return-object v0

    :sswitch_c8
    const-string v0, "AUDIO_FORMAT_HE_AAC_V2"

    return-object v0

    :sswitch_cb
    const-string v0, "AUDIO_FORMAT_HE_AAC_V1"

    return-object v0

    :sswitch_ce
    const-string v0, "AUDIO_FORMAT_AAC_XHE"

    return-object v0

    :sswitch_d1
    const-string v0, "AUDIO_FORMAT_AAC_ELD"

    return-object v0

    :sswitch_d4
    const-string v0, "AUDIO_FORMAT_AAC_HE_V2"

    return-object v0

    :sswitch_d7
    const-string v0, "AUDIO_FORMAT_AAC_LD"

    return-object v0

    :sswitch_da
    const-string v0, "AUDIO_FORMAT_AAC_ERLC"

    return-object v0

    :sswitch_dd
    const-string v0, "AUDIO_FORMAT_AAC_SCALABLE"

    return-object v0

    :sswitch_e0
    const-string v0, "AUDIO_FORMAT_AAC_HE_V1"

    return-object v0

    :sswitch_e3
    const-string v0, "AUDIO_FORMAT_AAC_LTP"

    return-object v0

    :sswitch_e6
    const-string v0, "AUDIO_FORMAT_AAC_SSR"

    return-object v0

    :sswitch_e9
    const-string v0, "AUDIO_FORMAT_AAC_LC"

    return-object v0

    :sswitch_ec
    const-string v0, "AUDIO_FORMAT_AAC_MAIN"

    return-object v0

    :sswitch_ef
    const-string v0, "AUDIO_FORMAT_AAC"

    return-object v0

    :sswitch_f2
    const-string v0, "AUDIO_FORMAT_AMR_WB"

    return-object v0

    :sswitch_f5
    const-string v0, "AUDIO_FORMAT_AMR_NB"

    return-object v0

    :sswitch_f8
    const-string v0, "AUDIO_FORMAT_MP3"

    return-object v0

    :sswitch_fb
    const-string v0, "AUDIO_FORMAT_PCM_24_BIT_PACKED"

    return-object v0

    :sswitch_fe
    const-string v0, "AUDIO_FORMAT_PCM_FLOAT"

    return-object v0

    :sswitch_101
    const-string v0, "AUDIO_FORMAT_PCM_8_24_BIT"

    return-object v0

    :sswitch_104
    const-string v0, "AUDIO_FORMAT_PCM_32_BIT"

    return-object v0

    :sswitch_107
    const-string v0, "AUDIO_FORMAT_PCM_8_BIT"

    return-object v0

    :sswitch_10a
    const-string v0, "AUDIO_FORMAT_PCM_16_BIT"

    return-object v0

    :sswitch_10d
    const-string v0, "AUDIO_FORMAT_DEFAULT"

    return-object v0

    :sswitch_110
    const-string v0, "AUDIO_FORMAT_INVALID"

    return-object v0

    nop

    :sswitch_data_114
    .sparse-switch
        -0x1 -> :sswitch_110
        0x0 -> :sswitch_10d
        0x1 -> :sswitch_10a
        0x2 -> :sswitch_107
        0x3 -> :sswitch_104
        0x4 -> :sswitch_101
        0x5 -> :sswitch_fe
        0x6 -> :sswitch_fb
        0x1000000 -> :sswitch_f8
        0x2000000 -> :sswitch_f5
        0x3000000 -> :sswitch_f2
        0x4000000 -> :sswitch_ef
        0x4000001 -> :sswitch_ec
        0x4000002 -> :sswitch_e9
        0x4000004 -> :sswitch_e6
        0x4000008 -> :sswitch_e3
        0x4000010 -> :sswitch_e0
        0x4000020 -> :sswitch_dd
        0x4000040 -> :sswitch_da
        0x4000080 -> :sswitch_d7
        0x4000100 -> :sswitch_d4
        0x4000200 -> :sswitch_d1
        0x4000300 -> :sswitch_ce
        0x5000000 -> :sswitch_cb
        0x6000000 -> :sswitch_c8
        0x7000000 -> :sswitch_c5
        0x8000000 -> :sswitch_c2
        0x9000000 -> :sswitch_bf
        0xa000000 -> :sswitch_bc
        0xa000001 -> :sswitch_b9
        0xb000000 -> :sswitch_b6
        0xc000000 -> :sswitch_b3
        0xd000000 -> :sswitch_b0
        0xe000000 -> :sswitch_ad
        0x10000000 -> :sswitch_aa
        0x11000000 -> :sswitch_a7
        0x12000000 -> :sswitch_a4
        0x13000000 -> :sswitch_a1
        0x14000000 -> :sswitch_9e
        0x15000000 -> :sswitch_9b
        0x16000000 -> :sswitch_98
        0x17000000 -> :sswitch_95
        0x18000000 -> :sswitch_92
        0x19000000 -> :sswitch_8f
        0x1a000000 -> :sswitch_8c
        0x1b000000 -> :sswitch_89
        0x1c000000 -> :sswitch_86
        0x1d000000 -> :sswitch_83
        0x1e000000 -> :sswitch_80
        0x1e000001 -> :sswitch_7d
        0x1e000002 -> :sswitch_7a
        0x1e000004 -> :sswitch_77
        0x1e000008 -> :sswitch_74
        0x1e000010 -> :sswitch_71
        0x1e000020 -> :sswitch_6e
        0x1e000040 -> :sswitch_6b
        0x1e000080 -> :sswitch_68
        0x1e000100 -> :sswitch_65
        0x1e000200 -> :sswitch_62
        0x1e000300 -> :sswitch_5f
        0x1f000000 -> :sswitch_5c
        0x20000000 -> :sswitch_59
        0x21000000 -> :sswitch_56
        0x22000000 -> :sswitch_53
        0x23000000 -> :sswitch_50
        0x24000000 -> :sswitch_4d
        0x24000001 -> :sswitch_4a
        0x24000002 -> :sswitch_47
        0x24000003 -> :sswitch_44
        0x25000000 -> :sswitch_41
        0x25000002 -> :sswitch_3e
        0x25000010 -> :sswitch_3b
        0x25000100 -> :sswitch_38
        0x26000000 -> :sswitch_35
        0x27000000 -> :sswitch_32
        0x28000000 -> :sswitch_2f
        0x29000000 -> :sswitch_2c
        0x2a000000 -> :sswitch_29
        0x2b000000 -> :sswitch_26
        0x2e000000 -> :sswitch_23
        0x2f000000 -> :sswitch_20
        0x30000000 -> :sswitch_1d
    .end sparse-switch
.end method

.method public static audioSystemErrorToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x0
    const-string v0, "SUCCESS"

    return-object v0

    :pswitch_1a  #0xffffffff
    const-string v0, "ERROR"

    return-object v0

    :pswitch_1d  #0xfffffffe
    const-string v0, "BAD_VALUE"

    return-object v0

    :pswitch_20  #0xfffffffd
    const-string v0, "INVALID_OPERATION"

    return-object v0

    :pswitch_23  #0xfffffffc
    const-string v0, "PERMISSION_DENIED"

    return-object v0

    :pswitch_26  #0xfffffffb
    const-string v0, "NO_INIT"

    return-object v0

    :pswitch_29  #0xfffffffa
    const-string v0, "DEAD_OBJECT"

    return-object v0

    :pswitch_2c  #0xfffffff9
    const-string v0, "WOULD_BLOCK"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch -0x7
        :pswitch_2c  #fffffff9
        :pswitch_29  #fffffffa
        :pswitch_26  #fffffffb
        :pswitch_23  #fffffffc
        :pswitch_20  #fffffffd
        :pswitch_1d  #fffffffe
        :pswitch_1a  #ffffffff
        :pswitch_17  #00000000
    .end packed-switch
.end method

.method public static bluetoothCodecToAudioFormat(I)I
    .registers 3

    packed-switch p0, :pswitch_data_46

    :pswitch_3  #0x9, 0xa, 0xb, 0xf, 0x10, 0x11, 0x12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown BT codec 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for conversion to audio format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioSystem"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :pswitch_27  #0xc, 0xd, 0xe, 0x13
    const/high16 v0, 0x28000000

    return v0

    :pswitch_2a  #0x8
    const/high16 v0, 0x26000000

    return v0

    :pswitch_2d  #0x7
    const/high16 v0, 0x2a000000

    return v0

    :pswitch_30  #0x6
    const/high16 v0, 0x27000000

    return v0

    :pswitch_33  #0x5
    const/high16 v0, 0x2b000000

    return v0

    :pswitch_36  #0x4
    const/high16 v0, 0x23000000

    return v0

    :pswitch_39  #0x3
    const/high16 v0, 0x21000000

    return v0

    :pswitch_3c  #0x2
    const/high16 v0, 0x20000000

    return v0

    :pswitch_3f  #0x1
    const/high16 v0, 0x4000000

    return v0

    :pswitch_42  #0x0
    const/high16 v0, 0x1f000000

    return v0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_3f  #00000001
        :pswitch_3c  #00000002
        :pswitch_39  #00000003
        :pswitch_36  #00000004
        :pswitch_33  #00000005
        :pswitch_30  #00000006
        :pswitch_2d  #00000007
        :pswitch_2a  #00000008
        :pswitch_3  #00000009
        :pswitch_3  #0000000a
        :pswitch_3  #0000000b
        :pswitch_27  #0000000c
        :pswitch_27  #0000000d
        :pswitch_27  #0000000e
        :pswitch_3  #0000000f
        :pswitch_3  #00000010
        :pswitch_3  #00000011
        :pswitch_3  #00000012
        :pswitch_27  #00000013
    .end packed-switch
.end method

.method public static native canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;[Landroid/media/AudioDeviceAttributes;)Z
.end method

.method public static native checkAudioFlinger()I
.end method

.method public static native clearDevicesRoleForCapturePreset(II)I
.end method

.method public static native createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method public static deviceSetToString(Ljava/util/Set;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v0, 0x1

    if-lez v0, :cond_1f

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_a

    :cond_50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static deviceStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown state ("

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

    :pswitch_1d  #0x1
    const-string v0, "DEVICE_STATE_AVAILABLE"

    return-object v0

    :pswitch_20  #0x0
    const-string v0, "DEVICE_STATE_UNAVAILABLE"

    return-object v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1d  #00000001
    .end packed-switch
.end method

.method private static dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .registers 7

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_28

    if-eqz v1, :cond_27

    packed-switch p0, :pswitch_data_2c

    const-string v0, "AudioSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicPolicyCallbackFromNative: unknown event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :pswitch_24  #0x0
    invoke-interface {v1, p1, p2}, Landroid/media/AudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_24  #00000000
    .end packed-switch
.end method

.method private static errorCallbackFromNative(I)V
    .registers 3

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v1, :cond_b

    invoke-interface {v1, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    :cond_b
    return-void

    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1
.end method

.method public static forceUseConfigToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown config ("

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

    :pswitch_1d  #0xf
    const-string v0, "FORCE_ENCODED_SURROUND_MANUAL"

    return-object v0

    :pswitch_20  #0xe
    const-string v0, "FORCE_ENCODED_SURROUND_ALWAYS"

    return-object v0

    :pswitch_23  #0xd
    const-string v0, "FORCE_ENCODED_SURROUND_NEVER"

    return-object v0

    :pswitch_26  #0xc
    const-string v0, "FORCE_HDMI_SYSTEM_AUDIO_ENFORCED"

    return-object v0

    :pswitch_29  #0xb
    const-string v0, "FORCE_SYSTEM_ENFORCED"

    return-object v0

    :pswitch_2c  #0xa
    const-string v0, "FORCE_NO_BT_A2DP"

    return-object v0

    :pswitch_2f  #0x9
    const-string v0, "FORCE_DIGITAL_DOCK"

    return-object v0

    :pswitch_32  #0x8
    const-string v0, "FORCE_ANALOG_DOCK"

    return-object v0

    :pswitch_35  #0x7
    const-string v0, "FORCE_BT_DESK_DOCK"

    return-object v0

    :pswitch_38  #0x6
    const-string v0, "FORCE_BT_CAR_DOCK"

    return-object v0

    :pswitch_3b  #0x5
    const-string v0, "FORCE_WIRED_ACCESSORY"

    return-object v0

    :pswitch_3e  #0x4
    const-string v0, "FORCE_BT_A2DP"

    return-object v0

    :pswitch_41  #0x3
    const-string v0, "FORCE_BT_SCO"

    return-object v0

    :pswitch_44  #0x2
    const-string v0, "FORCE_HEADPHONES"

    return-object v0

    :pswitch_47  #0x1
    const-string v0, "FORCE_SPEAKER"

    return-object v0

    :pswitch_4a  #0x0
    const-string v0, "FORCE_NONE"

    return-object v0

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_4a  #00000000
        :pswitch_47  #00000001
        :pswitch_44  #00000002
        :pswitch_41  #00000003
        :pswitch_3e  #00000004
        :pswitch_3b  #00000005
        :pswitch_38  #00000006
        :pswitch_35  #00000007
        :pswitch_32  #00000008
        :pswitch_2f  #00000009
        :pswitch_2c  #0000000a
        :pswitch_29  #0000000b
        :pswitch_26  #0000000c
        :pswitch_23  #0000000d
        :pswitch_20  #0000000e
        :pswitch_1d  #0000000f
    .end packed-switch
.end method

.method public static forceUseUsageToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown usage ("

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

    :pswitch_1d  #0x7
    const-string v0, "FOR_VIBRATE_RINGING"

    return-object v0

    :pswitch_20  #0x6
    const-string v0, "FOR_ENCODED_SURROUND"

    return-object v0

    :pswitch_23  #0x5
    const-string v0, "FOR_HDMI_SYSTEM_AUDIO"

    return-object v0

    :pswitch_26  #0x4
    const-string v0, "FOR_SYSTEM"

    return-object v0

    :pswitch_29  #0x3
    const-string v0, "FOR_DOCK"

    return-object v0

    :pswitch_2c  #0x2
    const-string v0, "FOR_RECORD"

    return-object v0

    :pswitch_2f  #0x1
    const-string v0, "FOR_MEDIA"

    return-object v0

    :pswitch_32  #0x0
    const-string v0, "FOR_COMMUNICATION"

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32  #00000000
        :pswitch_2f  #00000001
        :pswitch_2c  #00000002
        :pswitch_29  #00000003
        :pswitch_26  #00000004
        :pswitch_23  #00000005
        :pswitch_20  #00000006
        :pswitch_1d  #00000007
    .end packed-switch
.end method

.method public static generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method public static native getAudioHwSyncForSession(I)I
.end method

.method public static getDefaultStreamVolume(I)I
    .registers 2

    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static getDeviceMaskFromSet(Ljava/util/Set;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "AudioSystem"

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    if-eqz v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDeviceMaskFromSet skipping multi-bit device value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_3d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    and-int/2addr v1, v4

    goto :goto_7

    :cond_48
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eq v1, v2, :cond_6d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceMaskFromSet: Invalid set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Landroid/media/AudioSystem;->deviceSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return v0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .registers 2

    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_a

    invoke-static {p0}, Landroid/media/AudioSystem;->getInputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-static {p0}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getDevicesForAttributes(Landroid/media/AudioAttributes;[Landroid/media/AudioDeviceAttributes;Z)I
.end method

.method public static getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/media/AudioDeviceAttributes;

    invoke-static {p0, v0, p1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;[Landroid/media/AudioDeviceAttributes;Z)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in getDevicesForAttributes attributes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " forVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AudioSystem"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3e
    array-length v3, v0

    const/4 v4, 0x0

    :goto_40
    if-ge v4, v3, :cond_4c

    aget-object v5, v0, v4

    if-eqz v5, :cond_49

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_4c
    return-object v2
.end method

.method public static native getDevicesForRoleAndCapturePreset(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native getDevicesForRoleAndStrategy(IILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation
.end method

.method public static getDevicesForStream(I)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    invoke-static {p0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v0

    nop

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceMaskFromSet(Ljava/util/Set;)I

    move-result v1

    return v1
.end method

.method public static native getDirectPlaybackSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
.end method

.method public static native getDirectProfilesForAttributes(Landroid/media/AudioAttributes;Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioProfile;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native getForceUse(I)I
.end method

.method public static native getHwOffloadFormatsSupportedForBluetoothMedia(ILjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public static getInputDeviceName(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_5c

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string v0, "ble_headset"

    return-object v0

    :sswitch_b
    const-string v0, "echo_reference"

    return-object v0

    :sswitch_e
    const-string v0, "hdmi_earc"

    return-object v0

    :sswitch_11
    const-string v0, "hdmi_arc"

    return-object v0

    :sswitch_14
    const-string v0, "bt_ble"

    return-object v0

    :sswitch_17
    const-string v0, "usb_headset"

    return-object v0

    :sswitch_1a
    const-string v0, "proxy"

    return-object v0

    :sswitch_1d
    const-string v0, "bus"

    return-object v0

    :sswitch_20
    const-string v0, "ip"

    return-object v0

    :sswitch_23
    const-string v0, "loopback"

    return-object v0

    :sswitch_26
    const-string v0, "bt_a2dp"

    return-object v0

    :sswitch_29
    const-string v0, "spdif"

    return-object v0

    :sswitch_2c
    const-string v0, "line"

    return-object v0

    :sswitch_2f
    const-string v0, "tv_tuner"

    return-object v0

    :sswitch_32
    const-string v0, "fm_tuner"

    return-object v0

    :sswitch_35
    const-string v0, "usb_device"

    return-object v0

    :sswitch_38
    const-string v0, "usb_accessory"

    return-object v0

    :sswitch_3b
    const-string v0, "digital_dock"

    return-object v0

    :sswitch_3e
    const-string v0, "analog_dock"

    return-object v0

    :sswitch_41
    const-string v0, "remote_submix"

    return-object v0

    :sswitch_44
    const-string v0, "back_mic"

    return-object v0

    :sswitch_47
    const-string v0, "telephony_rx"

    return-object v0

    :sswitch_4a
    const-string v0, "aux_digital"

    return-object v0

    :sswitch_4d
    const-string v0, "headset"

    return-object v0

    :sswitch_50
    const-string v0, "bt_sco_hs"

    return-object v0

    :sswitch_53
    const-string v0, "mic"

    return-object v0

    :sswitch_56
    const-string v0, "ambient"

    return-object v0

    :sswitch_59
    const-string v0, "communication"

    return-object v0

    :sswitch_data_5c
    .sparse-switch
        -0x7fffffff -> :sswitch_59
        -0x7ffffffe -> :sswitch_56
        -0x7ffffffc -> :sswitch_53
        -0x7ffffff8 -> :sswitch_50
        -0x7ffffff0 -> :sswitch_4d
        -0x7fffffe0 -> :sswitch_4a
        -0x7fffffc0 -> :sswitch_47
        -0x7fffff80 -> :sswitch_44
        -0x7fffff00 -> :sswitch_41
        -0x7ffffe00 -> :sswitch_3e
        -0x7ffffc00 -> :sswitch_3b
        -0x7ffff800 -> :sswitch_38
        -0x7ffff000 -> :sswitch_35
        -0x7fffe000 -> :sswitch_32
        -0x7fffc000 -> :sswitch_2f
        -0x7fff8000 -> :sswitch_2c
        -0x7fff0000 -> :sswitch_29
        -0x7ffe0000 -> :sswitch_26
        -0x7ffc0000 -> :sswitch_23
        -0x7ff80000 -> :sswitch_20
        -0x7ff00000 -> :sswitch_1d
        -0x7f000000 -> :sswitch_1a
        -0x7e000000 -> :sswitch_17
        -0x7c000000 -> :sswitch_14
        -0x78000000 -> :sswitch_11
        -0x77ffffff -> :sswitch_e
        -0x70000000 -> :sswitch_b
        -0x60000000 -> :sswitch_8
    .end sparse-switch
.end method

.method public static native getMasterBalance()F
.end method

.method public static native getMasterMono()Z
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static native getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
.end method

.method public static native getMicrophones(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MicrophoneInfo;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
.end method

.method public static final getNumStreamTypes()I
    .registers 1

    const/16 v0, 0xc

    return v0
.end method

.method static getOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .registers 7

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/media/AudioSystem;->native_get_offload_support(IIIII)I

    move-result v0

    return v0
.end method

.method public static getOutputDeviceName(I)Ljava/lang/String;
    .registers 3

    sparse-switch p0, :sswitch_data_7e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_1b
    const-string v0, "ble_broadcast"

    return-object v0

    :sswitch_1e
    const-string v0, "ble_speaker"

    return-object v0

    :sswitch_21
    const-string v0, "ble_headset"

    return-object v0

    :sswitch_24
    const-string v0, "echo_canceller"

    return-object v0

    :sswitch_27
    const-string v0, "hearing_aid_out"

    return-object v0

    :sswitch_2a
    const-string v0, "usb_headset"

    return-object v0

    :sswitch_2d
    const-string v0, "proxy"

    return-object v0

    :sswitch_30
    const-string v0, "bus"

    return-object v0

    :sswitch_33
    const-string v0, "ip"

    return-object v0

    :sswitch_36
    const-string v0, "speaker_safe"

    return-object v0

    :sswitch_39
    const-string v0, "aux_line"

    return-object v0

    :sswitch_3c
    const-string v0, "fm_transmitter"

    return-object v0

    :sswitch_3f
    const-string v0, "spdif"

    return-object v0

    :sswitch_42
    const-string v0, "hmdi_earc"

    return-object v0

    :sswitch_45
    const-string v0, "hmdi_arc"

    return-object v0

    :sswitch_48
    const-string v0, "line"

    return-object v0

    :sswitch_4b
    const-string v0, "telephony_tx"

    return-object v0

    :sswitch_4e
    const-string v0, "remote_submix"

    return-object v0

    :sswitch_51
    const-string v0, "usb_device"

    return-object v0

    :sswitch_54
    const-string v0, "usb_accessory"

    return-object v0

    :sswitch_57
    const-string v0, "digital_dock"

    return-object v0

    :sswitch_5a
    const-string v0, "analog_dock"

    return-object v0

    :sswitch_5d
    const-string v0, "hdmi"

    return-object v0

    :sswitch_60
    const-string v0, "bt_a2dp_spk"

    return-object v0

    :sswitch_63
    const-string v0, "bt_a2dp_hp"

    return-object v0

    :sswitch_66
    const-string v0, "bt_a2dp"

    return-object v0

    :sswitch_69
    const-string v0, "bt_sco_carkit"

    return-object v0

    :sswitch_6c
    const-string v0, "bt_sco_hs"

    return-object v0

    :sswitch_6f
    const-string v0, "bt_sco"

    return-object v0

    :sswitch_72
    const-string v0, "headphone"

    return-object v0

    :sswitch_75
    const-string v0, "headset"

    return-object v0

    :sswitch_78
    const-string v0, "speaker"

    return-object v0

    :sswitch_7b
    const-string v0, "earpiece"

    return-object v0

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_7b
        0x2 -> :sswitch_78
        0x4 -> :sswitch_75
        0x8 -> :sswitch_72
        0x10 -> :sswitch_6f
        0x20 -> :sswitch_6c
        0x40 -> :sswitch_69
        0x80 -> :sswitch_66
        0x100 -> :sswitch_63
        0x200 -> :sswitch_60
        0x400 -> :sswitch_5d
        0x800 -> :sswitch_5a
        0x1000 -> :sswitch_57
        0x2000 -> :sswitch_54
        0x4000 -> :sswitch_51
        0x8000 -> :sswitch_4e
        0x10000 -> :sswitch_4b
        0x20000 -> :sswitch_48
        0x40000 -> :sswitch_45
        0x40001 -> :sswitch_42
        0x80000 -> :sswitch_3f
        0x100000 -> :sswitch_3c
        0x200000 -> :sswitch_39
        0x400000 -> :sswitch_36
        0x800000 -> :sswitch_33
        0x1000000 -> :sswitch_30
        0x2000000 -> :sswitch_2d
        0x4000000 -> :sswitch_2a
        0x8000000 -> :sswitch_27
        0x10000000 -> :sswitch_24
        0x20000000 -> :sswitch_21
        0x20000001 -> :sswitch_1e
        0x20000002 -> :sswitch_1b
    .end sparse-switch
.end method

.method public static native getOutputLatency(I)I
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPlatformType(Landroid/content/Context;)I
    .registers 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    return v0

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getReportedSurroundFormats(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public static getSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/media/ISpatializer;
    .registers 2

    invoke-static {p0}, Landroid/media/AudioSystem;->nativeGetSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/ISpatializer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/ISpatializer;

    move-result-object v0

    return-object v0
.end method

.method public static native getStreamVolumeDB(III)F
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static native getSurroundFormats(Ljava/util/Map;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation
.end method

.method public static getValueForVibrateSetting(III)I
    .registers 5

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x3

    shl-int v0, v1, v0

    not-int v0, v0

    and-int/2addr p0, v0

    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static native getVolumeIndexForAttributes(Landroid/media/AudioAttributes;I)I
.end method

.method public static native handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static intersectionAudioDeviceTypes(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static native isCallScreeningModeSupported()Z
.end method

.method public static native isHapticPlaybackSupported()Z
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static isSingleAudioDeviceType(Ljava/util/Set;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static isSingleVolume(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_17

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    :goto_18
    return v1
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native isStreamActiveRemotely(II)Z
.end method

.method public static native isUltrasoundSupported()Z
.end method

.method public static native listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown mode ("

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

    :pswitch_1d  #0x6
    const-string v0, "MODE_COMMUNICATION_REDIRECT"

    return-object v0

    :pswitch_20  #0x5
    const-string v0, "MODE_CALL_REDIRECT"

    return-object v0

    :pswitch_23  #0x4
    const-string v0, "MODE_CALL_SCREENING"

    return-object v0

    :pswitch_26  #0x3
    const-string v0, "MODE_IN_COMMUNICATION"

    return-object v0

    :pswitch_29  #0x2
    const-string v0, "MODE_IN_CALL"

    return-object v0

    :pswitch_2c  #0x1
    const-string v0, "MODE_RINGTONE"

    return-object v0

    :pswitch_2f  #0x0
    const-string v0, "MODE_NORMAL"

    return-object v0

    :pswitch_32  #0xffffffff
    const-string v0, "MODE_CURRENT"

    return-object v0

    :pswitch_35  #0xfffffffe
    const-string v0, "MODE_INVALID"

    return-object v0

    :pswitch_data_38
    .packed-switch -0x2
        :pswitch_35  #fffffffe
        :pswitch_32  #ffffffff
        :pswitch_2f  #00000000
        :pswitch_2c  #00000001
        :pswitch_29  #00000002
        :pswitch_26  #00000003
        :pswitch_23  #00000004
        :pswitch_20  #00000005
        :pswitch_1d  #00000006
    .end packed-switch
.end method

.method public static native muteMicrophone(Z)I
.end method

.method private static native nativeGetSpatializer(Landroid/media/INativeSpatializerCallback;)Landroid/os/IBinder;
.end method

.method private static native native_getMaxChannelCount()I
.end method

.method private static native native_getMaxSampleRate()I
.end method

.method private static native native_getMinSampleRate()I
.end method

.method private static native native_get_offload_support(IIIII)I
.end method

.method private static final native native_register_dynamic_policy_callback()V
.end method

.method private static final native native_register_recording_callback()V
.end method

.method private static native native_register_routing_callback()V
.end method

.method private static native native_register_vol_range_init_req_callback()V
.end method

.method public static native newAudioPlayerId()I
.end method

.method public static native newAudioRecorderId()I
.end method

.method public static native newAudioSessionId()I
.end method

.method public static native pauseAudioTracks(II)I
.end method

.method private static populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Landroid/util/Pair<",
            "[I[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4d

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    aput v3, v0, v2

    aget v3, v0, v2

    if-nez v3, :cond_3e

    nop

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v4}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v3

    aput v3, v0, v2

    :cond_3e
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_4d
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static recordingCallbackFromNative(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;I)V
    .registers 30

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    :try_start_7
    sget-object v0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_71

    array-length v1, v14

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string v1, "None"

    goto :goto_15

    :cond_11
    aget-object v1, v14, v2

    iget-object v1, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    :goto_15
    move-object/from16 v16, v1

    array-length v1, v15

    if-nez v1, :cond_1d

    const-string v1, "None"

    goto :goto_21

    :cond_1d
    aget-object v1, v15, v2

    iget-object v1, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    :goto_21
    move-object/from16 v17, v1

    if-eqz v0, :cond_70

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v1

    invoke-static/range {v18 .. v18}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v1

    if-nez v1, :cond_54

    const/4 v1, 0x0

    const/4 v2, 0x6

    aget v2, p7, v2

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPatch;

    invoke-virtual {v4}, Landroid/media/AudioPatch;->id()I

    move-result v5

    if-ne v5, v2, :cond_4e

    const/4 v1, 0x1

    goto :goto_4f

    :cond_4e
    goto :goto_3a

    :cond_4f
    :goto_4f
    if-nez v1, :cond_54

    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    :cond_54
    const-string v13, ""

    move-object v1, v0

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-interface/range {v1 .. v13}, Landroid/media/AudioSystem$AudioRecordingCallback;->onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V

    :cond_70
    return-void

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v1
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method public static native registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static removeDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x2

    return v0

    :cond_8
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native removeDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static native removeDevicesRoleForStrategy(II)I
.end method

.method public static native removeUidDeviceAffinities(I)I
.end method

.method public static native removeUserIdDeviceAffinities(I)I
.end method

.method public static native resumeAudioTracks(II)I
.end method

.method private static routingCallbackFromNative()V
    .registers 3

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    if-nez v1, :cond_10

    const-string v0, "AudioSystem"

    const-string v2, "routing update from APM was not captured"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-interface {v1}, Landroid/media/AudioSystem$RoutingUpdateCallback;->onRoutingUpdated()V

    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static native setA11yServicesUids([I)I
.end method

.method public static native setActiveAssistantServicesUids([I)I
.end method

.method public static native setAllowedCapturePolicy(II)I
.end method

.method public static native setAssistantServicesUids([I)I
.end method

.method public static native setAudioFlingerBinder(Landroid/os/IBinder;)V
.end method

.method public static native setAudioHalPids([I)I
.end method

.method public static native setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native setCurrentImeUid(I)I
.end method

.method public static native setDeviceConnectionState(ILandroid/os/Parcel;I)I
.end method

.method public static setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I
    .registers 6

    nop

    invoke-static {p0}, Landroid/media/audio/common/AidlConversion;->api2aidl_AudioDeviceAttributes_AudioPort(Landroid/media/AudioDeviceAttributes;)Landroid/media/audio/common/AudioPort;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/audio/common/AudioPort;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    :try_start_10
    invoke-static {p1, v1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(ILandroid/os/Parcel;I)I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_18
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public static setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x2

    return v0

    :cond_8
    invoke-static {p2}, Landroid/media/AudioSystem;->populateInputDevicesTypeAndAddress(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {p0, p1, v1, v2}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static native setDevicesRoleForCapturePreset(II[I[Ljava/lang/String;)I
.end method

.method public static setDevicesRoleForStrategy(IILjava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x2

    return v0

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v3

    aput v3, v0, v2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_36
    invoke-static {p0, p1, v0, v1}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(II[I[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static native setDevicesRoleForStrategy(II[I[Ljava/lang/String;)I
.end method

.method public static setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V
    .registers 3

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {}, Landroid/media/AudioSystem;->native_register_dynamic_policy_callback()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .registers 3

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz p0, :cond_e

    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setLowRamDevice(ZJ)I
.end method

.method public static native setMasterBalance(F)I
.end method

.method public static native setMasterMono(Z)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static setPhoneState(I)I
    .registers 3

    const-string v0, "AudioSystem"

    const-string v1, "Do not use this method! Use AudioManager.setMode() instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static native setPhoneState(II)I
.end method

.method public static setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V
    .registers 3

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    invoke-static {}, Landroid/media/AudioSystem;->native_register_recording_callback()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V
    .registers 3

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sRoutingUpdateCallback:Landroid/media/AudioSystem$RoutingUpdateCallback;

    invoke-static {}, Landroid/media/AudioSystem;->native_register_routing_callback()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static native setRttEnabled(Z)I
.end method

.method private static native setStreamVolumeIndex(III)I
.end method

.method public static setStreamVolumeIndexAS(III)I
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    move-result v0

    return v0
.end method

.method public static native setSupportedSystemUsages([I)I
.end method

.method public static native setSurroundFormatEnabled(IZ)I
.end method

.method public static native setUidDeviceAffinities(I[I[Ljava/lang/String;)I
.end method

.method public static native setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
.end method

.method public static native setVibratorInfos(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Vibrator;",
            ">;)I"
        }
    .end annotation
.end method

.method public static native setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)I
.end method

.method public static setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V
    .registers 3

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sput-object p0, Landroid/media/AudioSystem;->sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;

    invoke-static {}, Landroid/media/AudioSystem;->native_register_vol_range_init_req_callback()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static native startAudioSource(Landroid/media/AudioPortConfig;Landroid/media/AudioAttributes;)I
.end method

.method public static native stopAudioSource(I)I
.end method

.method public static streamToString(I)Ljava/lang/String;
    .registers 3

    if-ltz p0, :cond_a

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_a

    aget-object v0, v0, p0

    return-object v0

    :cond_a
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_11

    const-string v0, "USE_DEFAULT_STREAM_TYPE"

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native systemReady()I
.end method

.method private static volRangeInitReqCallbackFromNative()V
    .registers 3

    const-class v0, Landroid/media/AudioSystem;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/media/AudioSystem;->sVolRangeInitReqCallback:Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_14

    if-nez v1, :cond_10

    const-string v0, "AudioSystem"

    const-string v2, "APM requested volume range initialization, but no callback found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-interface {v1}, Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;->onVolumeRangeInitializationRequested()V

    return-void

    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v1
.end method
