# classes.dex

.class public interface abstract Landroid/bluetooth/BluetoothProfile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothProfile$ServiceListener;,
        Landroid/bluetooth/BluetoothProfile$ConnectionPolicy;,
        Landroid/bluetooth/BluetoothProfile$BtProfileState;
    }
.end annotation


# static fields
.field public static final A2DP:I = 0x2

.field public static final A2DP_SINK:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AVRCP:I = 0xd

.field public static final AVRCP_CONTROLLER:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final BATTERY:I = 0x1e

.field public static final BC_PROFILE:I = 0x23

.field public static final BROADCAST:I = 0x21

.field public static final CC_SERVER:I = 0x25

.field public static final CONNECTION_POLICY_ALLOWED:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECTION_POLICY_FORBIDDEN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECTION_POLICY_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final COORDINATED_AUDIO_UNICAST:I = 0x26

.field public static final CSIP_SET_COORDINATOR:I = 0x19

.field public static final DUN:I = 0x1f

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.STATE"

.field public static final GATT:I = 0x7

.field public static final GATT_SERVER:I = 0x8

.field public static final GROUP_CLIENT:I = 0x20

.field public static final HAP_CLIENT:I = 0x1c

.field public static final HEADSET:I = 0x1

.field public static final HEADSET_CLIENT:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HEALTH:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEARING_AID:I = 0x15

.field public static final HID_DEVICE:I = 0x13

.field public static final HID_HOST:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_AUDIO:I = 0x16

.field public static final LE_AUDIO_BROADCAST:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_AUDIO_BROADCAST_ASSISTANT:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LE_CALL_CONTROL:I = 0x1b

.field public static final MAP:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MAP_CLIENT:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final MAX_PROFILE_ID:I = 0x26

.field public static final MCP_SERVER:I = 0x18

.field public static final OPP:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PAN:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PBAP:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PBAP_CLIENT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PC_PROFILE:I = 0x24

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_ON:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final SAP:I = 0xa

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final VCP:I = 0x22

.field public static final VOLUME_CONTROL:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# direct methods
.method public static getConnectionStateName(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    packed-switch p0, :pswitch_data_12

    const-string v0, "STATE_UNKNOWN"

    return-object v0

    :pswitch_6  #0x3
    const-string v0, "STATE_DISCONNECTING"

    return-object v0

    :pswitch_9  #0x2
    const-string v0, "STATE_CONNECTED"

    return-object v0

    :pswitch_c  #0x1
    const-string v0, "STATE_CONNECTING"

    return-object v0

    :pswitch_f  #0x0
    const-string v0, "STATE_DISCONNECTED"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_c  #00000001
        :pswitch_9  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method

.method public static getProfileName(I)Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    packed-switch p0, :pswitch_data_6c

    :pswitch_3  #0x3, 0xe, 0xf
    const-string v0, "UNKNOWN_PROFILE"

    return-object v0

    :pswitch_6  #0x25
    const-string v0, "CC_SERVER"

    return-object v0

    :pswitch_9  #0x24
    const-string v0, "PC_PROFILE"

    return-object v0

    :pswitch_c  #0x23
    const-string v0, "BC_PROFILE"

    return-object v0

    :pswitch_f  #0x22
    const-string v0, "VCP"

    return-object v0

    :pswitch_12  #0x21
    const-string v0, "BROADCAST"

    return-object v0

    :pswitch_15  #0x20
    const-string v0, "GROUP_CLIENT"

    return-object v0

    :pswitch_18  #0x1f
    const-string v0, "DUN"

    return-object v0

    :pswitch_1b  #0x1e
    const-string v0, "BATTERY"

    return-object v0

    :pswitch_1e  #0x1d
    const-string v0, "LE_AUDIO_BROADCAST_ASSISTANT"

    return-object v0

    :pswitch_21  #0x1c
    const-string v0, "HAP_CLIENT"

    return-object v0

    :pswitch_24  #0x1b
    const-string v0, "LE_CALL_CONTROL"

    return-object v0

    :pswitch_27  #0x1a
    const-string v0, "LE_AUDIO_BROADCAST"

    return-object v0

    :pswitch_2a  #0x19
    const-string v0, "CSIP_SET_COORDINATOR"

    return-object v0

    :pswitch_2d  #0x18
    const-string v0, "MCP_SERVER"

    return-object v0

    :pswitch_30  #0x17
    const-string v0, "VOLUME_CONTROL"

    return-object v0

    :pswitch_33  #0x16
    const-string v0, "LE_AUDIO"

    return-object v0

    :pswitch_36  #0x15
    const-string v0, "HEARING_AID"

    return-object v0

    :pswitch_39  #0x14
    const-string v0, "OPP"

    return-object v0

    :pswitch_3c  #0x13
    const-string v0, "HID_DEVICE"

    return-object v0

    :pswitch_3f  #0x12
    const-string v0, "MAP_CLIENT"

    return-object v0

    :pswitch_42  #0x11
    const-string v0, "PBAP_CLIENT"

    return-object v0

    :pswitch_45  #0x10
    const-string v0, "HEADSET_CLIENT"

    return-object v0

    :pswitch_48  #0xd
    const-string v0, "AVRCP"

    return-object v0

    :pswitch_4b  #0xc
    const-string v0, "AVRCP_CONTROLLER"

    return-object v0

    :pswitch_4e  #0xb
    const-string v0, "A2DP_SINK"

    return-object v0

    :pswitch_51  #0xa
    const-string v0, "SAP"

    return-object v0

    :pswitch_54  #0x9
    const-string v0, "MAP"

    return-object v0

    :pswitch_57  #0x8
    const-string v0, "GATT_SERVER"

    return-object v0

    :pswitch_5a  #0x7
    const-string v0, "GATT"

    return-object v0

    :pswitch_5d  #0x6
    const-string v0, "PBAP"

    return-object v0

    :pswitch_60  #0x5
    const-string v0, "PAN"

    return-object v0

    :pswitch_63  #0x4
    const-string v0, "HID_HOST"

    return-object v0

    :pswitch_66  #0x2
    const-string v0, "A2DP"

    return-object v0

    :pswitch_69  #0x1
    const-string v0, "HEADSET"

    return-object v0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_69  #00000001
        :pswitch_66  #00000002
        :pswitch_3  #00000003
        :pswitch_63  #00000004
        :pswitch_60  #00000005
        :pswitch_5d  #00000006
        :pswitch_5a  #00000007
        :pswitch_57  #00000008
        :pswitch_54  #00000009
        :pswitch_51  #0000000a
        :pswitch_4e  #0000000b
        :pswitch_4b  #0000000c
        :pswitch_48  #0000000d
        :pswitch_3  #0000000e
        :pswitch_3  #0000000f
        :pswitch_45  #00000010
        :pswitch_42  #00000011
        :pswitch_3f  #00000012
        :pswitch_3c  #00000013
        :pswitch_39  #00000014
        :pswitch_36  #00000015
        :pswitch_33  #00000016
        :pswitch_30  #00000017
        :pswitch_2d  #00000018
        :pswitch_2a  #00000019
        :pswitch_27  #0000001a
        :pswitch_24  #0000001b
        :pswitch_21  #0000001c
        :pswitch_1e  #0000001d
        :pswitch_1b  #0000001e
        :pswitch_18  #0000001f
        :pswitch_15  #00000020
        :pswitch_12  #00000021
        :pswitch_f  #00000022
        :pswitch_c  #00000023
        :pswitch_9  #00000024
        :pswitch_6  #00000025
    .end packed-switch
.end method


# virtual methods
.method public abstract getConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method
