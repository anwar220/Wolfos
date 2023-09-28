# classes.dex

.class public final enum Landroid/audio/policy/configuration/V7_0/AudioGainMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/audio/policy/configuration/V7_0/AudioGainMode;

.field public static final enum AUDIO_GAIN_MODE_CHANNELS:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

.field public static final enum AUDIO_GAIN_MODE_JOINT:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

.field public static final enum AUDIO_GAIN_MODE_RAMP:Landroid/audio/policy/configuration/V7_0/AudioGainMode;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    const-string v1, "AUDIO_GAIN_MODE_JOINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->AUDIO_GAIN_MODE_JOINT:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    new-instance v1, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    const-string v3, "AUDIO_GAIN_MODE_CHANNELS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->AUDIO_GAIN_MODE_CHANNELS:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    new-instance v3, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    const-string v5, "AUDIO_GAIN_MODE_RAMP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->AUDIO_GAIN_MODE_RAMP:Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioGainMode;

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

    iput-object p3, p0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->rawName:Ljava/lang/String;

    return-void
.end method

.method static fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioGainMode;
    .registers 6

    invoke-static {}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->values()[Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->getRawName()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioGainMode;
    .registers 2

    const-class v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    return-object v0
.end method

.method public static values()[Landroid/audio/policy/configuration/V7_0/AudioGainMode;
    .registers 1

    sget-object v0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->$VALUES:[Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    invoke-virtual {v0}, [Landroid/audio/policy/configuration/V7_0/AudioGainMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    return-object v0
.end method


# virtual methods
.method public getRawName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->rawName:Ljava/lang/String;

    return-object v0
.end method
