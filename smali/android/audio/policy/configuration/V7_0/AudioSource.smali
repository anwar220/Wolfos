# classes.dex

.class public final enum Landroid/audio/policy/configuration/V7_0/AudioSource;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_CAMCORDER:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_DEFAULT:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_ECHO_REFERENCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_FM_TUNER:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_HOTWORD:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_MIC:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_REMOTE_SUBMIX:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_UNPROCESSED:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOICE_CALL:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOICE_DOWNLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOICE_PERFORMANCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOICE_RECOGNITION:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOICE_UPLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOIP_CALL:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOIP_DOWNLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

.field public static final enum AUDIO_SOURCE_VOIP_UPLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 20

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v1, "AUDIO_SOURCE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_DEFAULT:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v1, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v3, "AUDIO_SOURCE_MIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_MIC:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v3, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v5, "AUDIO_SOURCE_VOICE_UPLINK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_UPLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v5, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v7, "AUDIO_SOURCE_VOICE_DOWNLINK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_DOWNLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v7, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v9, "AUDIO_SOURCE_VOICE_CALL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_CALL:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v9, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v11, "AUDIO_SOURCE_CAMCORDER"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_CAMCORDER:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v11, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v13, "AUDIO_SOURCE_VOICE_RECOGNITION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_RECOGNITION:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v13, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v15, "AUDIO_SOURCE_VOICE_COMMUNICATION"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_COMMUNICATION:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v15, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v14, "AUDIO_SOURCE_REMOTE_SUBMIX"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_REMOTE_SUBMIX:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v14, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v12, "AUDIO_SOURCE_UNPROCESSED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_UNPROCESSED:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v12, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v10, "AUDIO_SOURCE_VOICE_PERFORMANCE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOICE_PERFORMANCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v10, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v8, "AUDIO_SOURCE_ECHO_REFERENCE"

    const/16 v6, 0xb

    const-string v4, "AUDIO_SOURCE_ECHO_REFERENCE"

    invoke-direct {v10, v8, v6, v4}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_ECHO_REFERENCE:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v6, "AUDIO_SOURCE_FM_TUNER"

    const/16 v8, 0xc

    const-string v2, "AUDIO_SOURCE_FM_TUNER"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_FM_TUNER:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v6, "AUDIO_SOURCE_HOTWORD"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "AUDIO_SOURCE_HOTWORD"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_HOTWORD:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v6, "AUDIO_SOURCE_VOIP_UPLINK"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "AUDIO_SOURCE_VOIP_UPLINK"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOIP_UPLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v2, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v6, "AUDIO_SOURCE_VOIP_DOWNLINK"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "AUDIO_SOURCE_VOIP_DOWNLINK"

    invoke-direct {v2, v6, v8, v4}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOIP_DOWNLINK:Landroid/audio/policy/configuration/V7_0/AudioSource;

    new-instance v4, Landroid/audio/policy/configuration/V7_0/AudioSource;

    const-string v6, "AUDIO_SOURCE_VOIP_CALL"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "AUDIO_SOURCE_VOIP_CALL"

    invoke-direct {v4, v6, v8, v2}, Landroid/audio/policy/configuration/V7_0/AudioSource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Landroid/audio/policy/configuration/V7_0/AudioSource;->AUDIO_SOURCE_VOIP_CALL:Landroid/audio/policy/configuration/V7_0/AudioSource;

    const/16 v2, 0x11

    new-array v2, v2, [Landroid/audio/policy/configuration/V7_0/AudioSource;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v4, v2, v0

    sput-object v2, Landroid/audio/policy/configuration/V7_0/AudioSource;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioSource;

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

    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioSource;->rawName:Ljava/lang/String;

    return-void
.end method

.method static fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioSource;
    .registers 6

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioSource;->values()[Landroid/audio/policy/configuration/V7_0/AudioSource;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioSource;->getRawName()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioSource;
    .registers 2

    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioSource;

    return-object v0
.end method

.method public static values()[Landroid/audio/policy/configuration/V7_0/AudioSource;
    .registers 1

    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioSource;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioSource;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioSource;

    return-object v0
.end method


# virtual methods
.method public getRawName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioSource;->rawName:Ljava/lang/String;

    return-object v0
.end method
