# classes.dex

.class public final enum Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_DIRECT:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_FAST:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_HW_AV_SYNC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_HW_HOTWORD:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_MMAP_NOIRQ:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_RAW:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_SYNC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_VOIP_RECORD:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_INPUT_FLAG_VOIP_TX:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_COMPRESS_OFFLOAD:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_DEEP_BUFFER:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_DIRECT:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_DIRECT_PCM:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_FAST:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_GAPLESS_OFFLOAD:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_HW_AV_SYNC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_IEC958_NONAUDIO:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_INCALL_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_MMAP_NOIRQ:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_NON_BLOCKING:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_PRIMARY:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_RAW:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_SYNC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_TTS:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_VIRTUAL_DEEP_BUFFER:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

.field public static final enum AUDIO_OUTPUT_FLAG_VOIP_RX:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 29

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v1, "AUDIO_OUTPUT_FLAG_DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_DIRECT:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v1, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v3, "AUDIO_OUTPUT_FLAG_PRIMARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_PRIMARY:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v3, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v5, "AUDIO_OUTPUT_FLAG_FAST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_FAST:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v5, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v7, "AUDIO_OUTPUT_FLAG_DEEP_BUFFER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_DEEP_BUFFER:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v7, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v9, "AUDIO_OUTPUT_FLAG_COMPRESS_OFFLOAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_COMPRESS_OFFLOAD:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v9, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v11, "AUDIO_OUTPUT_FLAG_NON_BLOCKING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_NON_BLOCKING:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v11, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v13, "AUDIO_OUTPUT_FLAG_HW_AV_SYNC"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_HW_AV_SYNC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v13, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v15, "AUDIO_OUTPUT_FLAG_TTS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_TTS:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v15, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v14, "AUDIO_OUTPUT_FLAG_RAW"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_RAW:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v14, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v12, "AUDIO_OUTPUT_FLAG_SYNC"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_SYNC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v12, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v10, "AUDIO_OUTPUT_FLAG_IEC958_NONAUDIO"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_IEC958_NONAUDIO:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v10, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v8, "AUDIO_OUTPUT_FLAG_DIRECT_PCM"

    const/16 v6, 0xb

    const-string v4, "AUDIO_OUTPUT_FLAG_DIRECT_PCM"

    invoke-direct {v10, v8, v6, v4}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_DIRECT_PCM:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_OUTPUT_FLAG_MMAP_NOIRQ"

    const/16 v8, 0xc

    const-string v2, "AUDIO_OUTPUT_FLAG_MMAP_NOIRQ"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_MMAP_NOIRQ:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_OUTPUT_FLAG_VOIP_RX"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "AUDIO_OUTPUT_FLAG_VOIP_RX"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_VOIP_RX:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_OUTPUT_FLAG_INCALL_MUSIC"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "AUDIO_OUTPUT_FLAG_INCALL_MUSIC"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_INCALL_MUSIC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_OUTPUT_FLAG_GAPLESS_OFFLOAD"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "AUDIO_OUTPUT_FLAG_GAPLESS_OFFLOAD"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_GAPLESS_OFFLOAD:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_OUTPUT_FLAG_VIRTUAL_DEEP_BUFFER"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "AUDIO_OUTPUT_FLAG_VIRTUAL_DEEP_BUFFER"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_OUTPUT_FLAG_VIRTUAL_DEEP_BUFFER:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_FAST"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "AUDIO_INPUT_FLAG_FAST"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_FAST:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_HW_HOTWORD"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const-string v2, "AUDIO_INPUT_FLAG_HW_HOTWORD"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_HW_HOTWORD:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_RAW"

    const/16 v8, 0x13

    move-object/from16 v22, v4

    const-string v4, "AUDIO_INPUT_FLAG_RAW"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_RAW:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_SYNC"

    const/16 v8, 0x14

    move-object/from16 v23, v2

    const-string v2, "AUDIO_INPUT_FLAG_SYNC"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_SYNC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_MMAP_NOIRQ"

    const/16 v8, 0x15

    move-object/from16 v24, v4

    const-string v4, "AUDIO_INPUT_FLAG_MMAP_NOIRQ"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_MMAP_NOIRQ:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_VOIP_TX"

    const/16 v8, 0x16

    move-object/from16 v25, v2

    const-string v2, "AUDIO_INPUT_FLAG_VOIP_TX"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_VOIP_TX:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_HW_AV_SYNC"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const-string v4, "AUDIO_INPUT_FLAG_HW_AV_SYNC"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_HW_AV_SYNC:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_DIRECT"

    const/16 v8, 0x18

    move-object/from16 v27, v2

    const-string v2, "AUDIO_INPUT_FLAG_DIRECT"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_DIRECT:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const-string v6, "AUDIO_INPUT_FLAG_VOIP_RECORD"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const-string v4, "AUDIO_INPUT_FLAG_VOIP_RECORD"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->AUDIO_INPUT_FLAG_VOIP_RECORD:Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const/16 v4, 0x1a

    new-array v4, v4, [Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

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

    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->rawName:Ljava/lang/String;

    return-void
.end method

.method static fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;
    .registers 6

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->values()[Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->getRawName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;
    .registers 2

    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    return-object v0
.end method

.method public static values()[Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;
    .registers 1

    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    return-object v0
.end method


# virtual methods
.method public getRawName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->rawName:Ljava/lang/String;

    return-object v0
.end method
