# classes3.dex

.class public final enum Landroid/sysprop/HdmiProperties$cec_device_types_values;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sysprop/HdmiProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "cec_device_types_values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/sysprop/HdmiProperties$cec_device_types_values;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum AUDIO_SYSTEM:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum PLAYBACK_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum PURE_CEC_SWITCH:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum RECORDING_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum RESERVED:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum TUNER:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum TV:Landroid/sysprop/HdmiProperties$cec_device_types_values;

.field public static final enum VIDEO_PROCESSOR:Landroid/sysprop/HdmiProperties$cec_device_types_values;


# instance fields
.field private final propValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const-string v1, "TV"

    const/4 v2, 0x0

    const-string/jumbo v3, "tv"

    invoke-direct {v0, v1, v2, v3}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TV:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    new-instance v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const-string v3, "RECORDING_DEVICE"

    const/4 v4, 0x1

    const-string/jumbo v5, "recording_device"

    invoke-direct {v1, v3, v4, v5}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RECORDING_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    new-instance v3, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const-string v5, "RESERVED"

    const/4 v6, 0x2

    const-string/jumbo v7, "reserved"

    invoke-direct {v3, v5, v6, v7}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/sysprop/HdmiProperties$cec_device_types_values;->RESERVED:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    new-instance v5, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const-string v7, "TUNER"

    const/4 v8, 0x3

    const-string/jumbo v9, "tuner"

    invoke-direct {v5, v7, v8, v9}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroid/sysprop/HdmiProperties$cec_device_types_values;->TUNER:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    new-instance v7, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const-string v9, "PLAYBACK_DEVICE"

    const/4 v10, 0x4

    const-string/jumbo v11, "playback_device"

    invoke-direct {v7, v9, v10, v11}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PLAYBACK_DEVICE:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    new-instance v9, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const-string v11, "AUDIO_SYSTEM"

    const/4 v12, 0x5

    const-string v13, "audio_system"

    invoke-direct {v9, v11, v12, v13}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Landroid/sysprop/HdmiProperties$cec_device_types_values;->AUDIO_SYSTEM:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    new-instance v11, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const-string v13, "PURE_CEC_SWITCH"

    const/4 v14, 0x6

    const-string/jumbo v15, "pure_cec_switch"

    invoke-direct {v11, v13, v14, v15}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Landroid/sysprop/HdmiProperties$cec_device_types_values;->PURE_CEC_SWITCH:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    new-instance v13, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const-string v15, "VIDEO_PROCESSOR"

    const/4 v14, 0x7

    const-string/jumbo v12, "video_processor"

    invoke-direct {v13, v15, v14, v12}, Landroid/sysprop/HdmiProperties$cec_device_types_values;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Landroid/sysprop/HdmiProperties$cec_device_types_values;->VIDEO_PROCESSOR:Landroid/sysprop/HdmiProperties$cec_device_types_values;

    const/16 v12, 0x8

    new-array v12, v12, [Landroid/sysprop/HdmiProperties$cec_device_types_values;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Landroid/sysprop/HdmiProperties$cec_device_types_values;->$VALUES:[Landroid/sysprop/HdmiProperties$cec_device_types_values;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->propValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/sysprop/HdmiProperties$cec_device_types_values;
    .registers 2

    const-class v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;

    return-object v0
.end method

.method public static values()[Landroid/sysprop/HdmiProperties$cec_device_types_values;
    .registers 1

    sget-object v0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->$VALUES:[Landroid/sysprop/HdmiProperties$cec_device_types_values;

    invoke-virtual {v0}, [Landroid/sysprop/HdmiProperties$cec_device_types_values;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/sysprop/HdmiProperties$cec_device_types_values;

    return-object v0
.end method


# virtual methods
.method public getPropValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/sysprop/HdmiProperties$cec_device_types_values;->propValue:Ljava/lang/String;

    return-object v0
.end method
