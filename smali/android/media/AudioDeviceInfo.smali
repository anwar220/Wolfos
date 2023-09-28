# classes2.dex

.class public final Landroid/media/AudioDeviceInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioDeviceInfo$AudioDeviceTypeOut;,
        Landroid/media/AudioDeviceInfo$AudioDeviceTypeIn;,
        Landroid/media/AudioDeviceInfo$AudioDeviceType;
    }
.end annotation


# static fields
.field private static final EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field private static final INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

.field public static final TYPE_AUX_LINE:I = 0x13

.field public static final TYPE_BLE_BROADCAST:I = 0x1e

.field public static final TYPE_BLE_HEADSET:I = 0x1a

.field public static final TYPE_BLE_SPEAKER:I = 0x1b

.field public static final TYPE_BLUETOOTH_A2DP:I = 0x8

.field public static final TYPE_BLUETOOTH_SCO:I = 0x7

.field public static final TYPE_BUILTIN_EARPIECE:I = 0x1

.field public static final TYPE_BUILTIN_MIC:I = 0xf

.field public static final TYPE_BUILTIN_SPEAKER:I = 0x2

.field public static final TYPE_BUILTIN_SPEAKER_SAFE:I = 0x18

.field public static final TYPE_BUS:I = 0x15

.field public static final TYPE_DOCK:I = 0xd

.field public static final TYPE_ECHO_REFERENCE:I = 0x1c

.field public static final TYPE_FM:I = 0xe

.field public static final TYPE_FM_TUNER:I = 0x10

.field public static final TYPE_HDMI:I = 0x9

.field public static final TYPE_HDMI_ARC:I = 0xa

.field public static final TYPE_HDMI_EARC:I = 0x1d

.field public static final TYPE_HEARING_AID:I = 0x17

.field public static final TYPE_IP:I = 0x14

.field public static final TYPE_LINE_ANALOG:I = 0x5

.field public static final TYPE_LINE_DIGITAL:I = 0x6

.field public static final TYPE_REMOTE_SUBMIX:I = 0x19

.field public static final TYPE_TELEPHONY:I = 0x12

.field public static final TYPE_TV_TUNER:I = 0x11

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_USB_ACCESSORY:I = 0xc

.field public static final TYPE_USB_DEVICE:I = 0xb

.field public static final TYPE_USB_HEADSET:I = 0x16

.field public static final TYPE_WIRED_HEADPHONES:I = 0x4

.field public static final TYPE_WIRED_HEADSET:I = 0x3


# instance fields
.field private final mPort:Landroid/media/AudioDevicePort;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x10

    const/4 v7, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x20

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x40

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x80

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x100

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x200

    invoke-virtual {v0, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x400

    const/16 v9, 0x9

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x800

    const/16 v10, 0xd

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x1000

    invoke-virtual {v0, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x2000

    const/16 v11, 0xc

    invoke-virtual {v0, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v8, 0x4000

    const/16 v12, 0xb

    invoke-virtual {v0, v8, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v8, 0x4000000

    const/16 v13, 0x16

    invoke-virtual {v0, v8, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v8, 0x10000

    const/16 v14, 0x12

    invoke-virtual {v0, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v8, 0x20000

    const/4 v15, 0x5

    invoke-virtual {v0, v8, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v8, 0x40000

    const/16 v3, 0xa

    invoke-virtual {v0, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v8, 0x40001

    const/16 v2, 0x1d

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v8, 0x80000

    const/4 v1, 0x6

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v8, 0x100000

    const/16 v2, 0xe

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x200000

    const/16 v8, 0x13

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x800000

    const/16 v8, 0x14

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x1000000

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x8000000

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x400000

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x8000

    const/16 v3, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x20000000

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x20000001

    const/16 v3, 0x1b

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x20000002

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffffffc

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffffff8

    invoke-virtual {v0, v2, v7}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffffff0

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffffe0

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffffc0

    invoke-virtual {v0, v2, v14}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffff80

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffffe00

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffffc00

    invoke-virtual {v0, v2, v10}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffff800

    invoke-virtual {v0, v2, v11}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffff000

    invoke-virtual {v0, v2, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x7e000000

    invoke-virtual {v0, v2, v13}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffe000

    invoke-virtual {v0, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffc000

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fff8000

    invoke-virtual {v0, v2, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x7fff0000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x7ffe0000

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x7ff80000

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x7ff00000

    const/16 v3, 0x15

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffff00

    const/16 v3, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x60000000

    const/16 v3, 0x1a

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x78000000

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x77ffffff

    const/16 v3, 0x1d

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x70000000

    const/16 v3, 0x1c

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x20000

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x80

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x400

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x40000

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x40001

    const/16 v3, 0x1d

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x4000

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x2000

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x800

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0xe

    const/high16 v3, 0x100000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x10000

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x13

    const/high16 v3, 0x200000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x800000

    invoke-virtual {v0, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x1000000

    const/16 v3, 0x15

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x17

    const/high16 v3, 0x8000000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x18

    const/high16 v3, 0x400000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, 0x8000

    const/16 v3, 0x19

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, 0x20000000

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x1b

    const v3, 0x20000001

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x1e

    const v3, 0x20000002

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const v2, -0x7ffffffc

    const/16 v3, 0xf

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffffff8

    invoke-virtual {v0, v7, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffffff0

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffffe0

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffffc0

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffffe00

    invoke-virtual {v0, v10, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffff800

    invoke-virtual {v0, v11, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7ffff000

    invoke-virtual {v0, v12, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x7e000000

    invoke-virtual {v0, v13, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fffe000

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x11

    const v3, -0x7fffc000

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const v2, -0x7fff8000

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v2, -0x7fff0000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, -0x7ffe0000

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, -0x7ff80000

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, -0x7ff00000

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const v1, -0x7fffff00

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, -0x60000000

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v1, -0x78000000

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const v1, -0x77ffffff

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x1c

    const/high16 v2, -0x70000000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method constructor <init>(Landroid/media/AudioDevicePort;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    return-void
.end method

.method public static convertDeviceTypeToInternalDevice(I)I
    .registers 3

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static convertDeviceTypeToInternalInputDevice(I)I
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertDeviceTypeToInternalInputDevice(ILjava/lang/String;)I
    .registers 4

    sget-object v0, Landroid/media/AudioDeviceInfo;->EXT_TO_INT_INPUT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const v1, -0x7ffffffc

    if-ne v0, v1, :cond_17

    const-string v1, "back"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const v0, -0x7fffff80

    :cond_17
    return v0
.end method

.method public static convertInternalDeviceToDeviceType(I)I
    .registers 3

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static enforceValidAudioDeviceTypeIn(I)V
    .registers 4

    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeIn(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal input device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static enforceValidAudioDeviceTypeOut(I)V
    .registers 4

    invoke-static {p0}, Landroid/media/AudioDeviceInfo;->isValidAudioDeviceTypeOut(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal output device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static isValidAudioDeviceTypeIn(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3  #0x4, 0xe, 0x13, 0x17, 0x18, 0x1b
    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x3, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xf, 0x10, 0x11, 0x12, 0x14, 0x15, 0x16, 0x19, 0x1a, 0x1c, 0x1d
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5  #00000003
        :pswitch_3  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_5  #00000007
        :pswitch_5  #00000008
        :pswitch_5  #00000009
        :pswitch_5  #0000000a
        :pswitch_5  #0000000b
        :pswitch_5  #0000000c
        :pswitch_5  #0000000d
        :pswitch_3  #0000000e
        :pswitch_5  #0000000f
        :pswitch_5  #00000010
        :pswitch_5  #00000011
        :pswitch_5  #00000012
        :pswitch_3  #00000013
        :pswitch_5  #00000014
        :pswitch_5  #00000015
        :pswitch_5  #00000016
        :pswitch_3  #00000017
        :pswitch_3  #00000018
        :pswitch_5  #00000019
        :pswitch_5  #0000001a
        :pswitch_3  #0000001b
        :pswitch_5  #0000001c
        :pswitch_5  #0000001d
    .end packed-switch
.end method

.method static isValidAudioDeviceTypeOut(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3  #0xf, 0x10, 0x11, 0x19, 0x1c
    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x1a, 0x1b, 0x1d, 0x1e
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_5  #00000007
        :pswitch_5  #00000008
        :pswitch_5  #00000009
        :pswitch_5  #0000000a
        :pswitch_5  #0000000b
        :pswitch_5  #0000000c
        :pswitch_5  #0000000d
        :pswitch_5  #0000000e
        :pswitch_3  #0000000f
        :pswitch_3  #00000010
        :pswitch_3  #00000011
        :pswitch_5  #00000012
        :pswitch_5  #00000013
        :pswitch_5  #00000014
        :pswitch_5  #00000015
        :pswitch_5  #00000016
        :pswitch_5  #00000017
        :pswitch_5  #00000018
        :pswitch_3  #00000019
        :pswitch_5  #0000001a
        :pswitch_5  #0000001b
        :pswitch_3  #0000001c
        :pswitch_5  #0000001d
        :pswitch_5  #0000001e
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/media/AudioDeviceInfo;

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->audioDescriptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAudioProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->profiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChannelCounts()[I
    .registers 8

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelMasks()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_29

    aget v5, v1, v4

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v6

    goto :goto_1f

    :cond_1b
    invoke-static {v5}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v6

    :goto_1f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_29
    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getChannelIndexMasks()[I

    move-result-object v1

    array-length v2, v1

    :goto_2e
    if-ge v3, v2, :cond_40

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_40
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    aput v4, v1, v2

    move v2, v5

    goto :goto_4b

    :cond_61
    return-object v1
.end method

.method public getChannelIndexMasks()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelIndexMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public getChannelMasks()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulationMetadataTypes()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->encapsulationMetadataTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulationModes()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->encapsulationModes()[I

    move-result-object v0

    return-object v0
.end method

.method public getEncodings()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->handle()Landroid/media/AudioHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public getInternalType()I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->type()I

    move-result v0

    return v0
.end method

.method public getPort()Landroid/media/AudioDevicePort;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    return-object v0
.end method

.method public getProductName()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    goto :goto_12

    :cond_10
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_12
    return-object v1
.end method

.method public getSampleRates()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .registers 4

    sget-object v0, Landroid/media/AudioDeviceInfo;->INT_TO_EXT_DEVICE_MAPPING:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSink()Z
    .registers 3

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isSource()Z
    .registers 3

    iget-object v0, p0, Landroid/media/AudioDeviceInfo;->mPort:Landroid/media/AudioDevicePort;

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->role()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method
