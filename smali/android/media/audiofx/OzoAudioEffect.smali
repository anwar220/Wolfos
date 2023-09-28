# classes2.dex

.class public Landroid/media/audiofx/OzoAudioEffect;
.super Landroid/media/audiofx/AudioEffect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/OzoAudioEffect$MicBlockingCallback;,
        Landroid/media/audiofx/OzoAudioEffect$OzoParameters;
    }
.end annotation


# static fields
.field private static final OZO_EFFECT_TYPE:Ljava/util/UUID;

.field private static final OZO_EFFECT_UUID:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "OzoAudioEffect"


# instance fields
.field private final OZO_CAPTURE_AUDIO_LEVEL:I

.field private final OZO_CAPTURE_MICBLOCKING_LEVEL:I

.field private final OZO_CAPTURE_WNR_LEVEL:I

.field private final OZO_PARAM_DEVICE_UUID:I

.field private final OZO_PARAM_GENERIC:I

.field private final OZO_PARAM_MICBLOCKING_MODE:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "56d6b082-1a83-455a-84a8-9db3a35cf532"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/OzoAudioEffect;->OZO_EFFECT_TYPE:Ljava/util/UUID;

    const-string v0, "7e384a3b-7850-4a64-a097-884250d8a737"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/OzoAudioEffect;->OZO_EFFECT_UUID:Ljava/util/UUID;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/OzoAudioEffect;->OZO_EFFECT_TYPE:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/OzoAudioEffect;->OZO_EFFECT_UUID:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const v0, 0x1b207

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_PARAM_DEVICE_UUID:I

    const v0, 0x1b20f

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_CAPTURE_WNR_LEVEL:I

    const v0, 0x1b211

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_CAPTURE_AUDIO_LEVEL:I

    const v0, 0x1b212

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_PARAM_MICBLOCKING_MODE:I

    const v0, 0x1b213

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_CAPTURE_MICBLOCKING_LEVEL:I

    const v0, 0x1b214

    iput v0, p0, Landroid/media/audiofx/OzoAudioEffect;->OZO_PARAM_GENERIC:I

    return-void
.end method

.method public static create(I)Landroid/media/audiofx/OzoAudioEffect;
    .registers 6

    const-string v0, "OzoAudioEffect"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Landroid/media/audiofx/OzoAudioEffect;

    invoke-direct {v2, p0}, Landroid/media/audiofx/OzoAudioEffect;-><init>(I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_8} :catch_18
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_8} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_8} :catch_a

    move-object v1, v2

    :goto_9
    goto :goto_30

    :catch_a
    move-exception v2

    const-string v3, "not enough memory"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :catch_11
    move-exception v2

    const-string v3, "not enough resources"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_18
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not implemented on this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :goto_30
    return-object v1
.end method


# virtual methods
.method public disableFocus()I
    .registers 3

    const-string v0, "focus"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableNs()I
    .registers 3

    const-string v0, "ns"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableWnr()I
    .registers 3

    const-string v0, "wnr"

    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableFocus()I
    .registers 3

    const-string v0, "focus"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableMicBlocking()I
    .registers 4

    const v0, 0x1b212

    :try_start_3
    const-string v1, "on"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setParameter(I[B)I

    move-result v0
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_f} :catch_10

    return v0

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to enable mic blocking detection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OzoAudioEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public enableNs(Z)I
    .registers 4

    const-string v0, "on"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    const-string v0, "smart"

    :cond_7
    const-string v1, "ns"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public enableWnr()I
    .registers 3

    const-string v0, "wnr"

    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAudioLevel()[I
    .registers 5

    const/16 v0, 0x8

    new-array v0, v0, [B

    const v1, 0x1b211

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->getParameter(I[B)I

    move-result v1

    const/4 v2, 0x2

    if-ltz v1, :cond_20

    new-array v1, v2, [I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v3

    aput v3, v1, v2

    return-object v1

    :cond_20
    new-array v1, v2, [I

    fill-array-data v1, :array_26

    return-object v1

    :array_26
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public getDevice()Ljava/lang/String;
    .registers 3

    const/16 v0, 0x24

    new-array v0, v0, [B

    const v1, 0x1b207

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->getParameter(I[B)I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public getMicBlocking(Landroid/media/audiofx/OzoAudioEffect$MicBlockingCallback;)V
    .registers 8

    const/16 v0, 0x44

    new-array v0, v0, [B

    const v1, 0x1b213

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->getParameter(I[B)I

    move-result v1

    if-ltz v1, :cond_28

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    :goto_14
    if-ge v2, v1, :cond_28

    invoke-static {v0, v3}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v4

    add-int/lit8 v5, v3, 0x4

    invoke-static {v0, v5}, Landroid/media/audiofx/OzoAudioEffect;->byteArrayToInt([BI)I

    move-result v5

    invoke-interface {p1, v4, v5}, Landroid/media/audiofx/OzoAudioEffect$MicBlockingCallback;->onMicBlocking(II)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x8

    goto :goto_14

    :cond_28
    return-void
.end method

.method public getWnrLevel()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const v1, 0x1b20f

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->getParameter(I[B)I

    move-result v1

    if-ltz v1, :cond_10

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    return v1

    :cond_10
    const/4 v1, -0x4

    return v1
.end method

.method public setDevice(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const v1, 0x1b207

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setParameter(I[B)I

    move-result v1
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return v1

    :catch_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set device ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OzoAudioEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method

.method public setFocusAzimuth(D)I
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-azimuth"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFocusElevation(D)I
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-elevation"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFocusGain(D)I
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zoom"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFocusHeight(D)I
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-height"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setFocusWidth(D)I
    .registers 5

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus-width"

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/OzoAudioEffect;->setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setOzoParameter(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1b214

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/OzoAudioEffect;->setParameter(I[B)I

    move-result v1
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_24} :catch_25

    return v1

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set Ozo parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OzoAudioEffect"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x4

    return v1
.end method
