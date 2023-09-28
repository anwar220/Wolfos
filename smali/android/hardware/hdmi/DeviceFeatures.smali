# classes2.dex

.class public Landroid/hardware/hdmi/DeviceFeatures;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/DeviceFeatures$Builder;,
        Landroid/hardware/hdmi/DeviceFeatures$FeatureSupportStatus;
    }
.end annotation


# static fields
.field public static final ALL_FEATURES_SUPPORT_UNKNOWN:Landroid/hardware/hdmi/DeviceFeatures;

.field public static final FEATURE_NOT_SUPPORTED:I = 0x0

.field public static final FEATURE_SUPPORTED:I = 0x1

.field public static final FEATURE_SUPPORT_UNKNOWN:I = 0x2

.field public static final NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;


# instance fields
.field private final mArcRxSupport:I

.field private final mArcTxSupport:I

.field private final mDeckControlSupport:I

.field private final mRecordTvScreenSupport:I

.field private final mSetAudioRateSupport:I

.field private final mSetAudioVolumeLevelSupport:I

.field private final mSetOsdStringSupport:I


# direct methods
.method static bridge synthetic -$$Nest$smupdateFeatureSupportStatus(II)I
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/hdmi/DeviceFeatures;->updateFeatureSupportStatus(II)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(ILandroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    sput-object v0, Landroid/hardware/hdmi/DeviceFeatures;->ALL_FEATURES_SUPPORT_UNKNOWN:Landroid/hardware/hdmi/DeviceFeatures;

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(ILandroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V

    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v0

    sput-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/hdmi/DeviceFeatures$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmRecordTvScreenSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmOsdStringSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmDeckControlSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmSetAudioRateSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmArcTxSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmArcRxSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    invoke-static {p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->-$$Nest$fgetmSetAudioVolumeLevelSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/DeviceFeatures$Builder;Landroid/hardware/hdmi/DeviceFeatures-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/DeviceFeatures;-><init>(Landroid/hardware/hdmi/DeviceFeatures$Builder;)V

    return-void
.end method

.method private static bitToFeatureSupportStatus(Z)I
    .registers 1

    return p0
.end method

.method private static featureSupportStatusToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const-string v0, "?"

    return-object v0

    :pswitch_6  #0x1
    const-string v0, "Y"

    return-object v0

    :pswitch_9  #0x0
    const-string v0, "N"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public static fromOperand([B)Landroid/hardware/hdmi/DeviceFeatures;
    .registers 7

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(ILandroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V

    array-length v1, p0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_7b

    const/4 v1, 0x0

    aget-byte v3, p0, v1

    shr-int/lit8 v4, v3, 0x6

    and-int/2addr v4, v2

    if-ne v4, v2, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v1

    :goto_16
    invoke-static {v4}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setRecordTvScreenSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_25

    move v5, v2

    goto :goto_26

    :cond_25
    move v5, v1

    :goto_26
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetOsdStringSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_35

    move v5, v2

    goto :goto_36

    :cond_35
    move v5, v1

    :goto_36
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setDeckControlSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_45

    move v5, v2

    goto :goto_46

    :cond_45
    move v5, v1

    :goto_46
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioRateSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x2

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_55

    move v5, v2

    goto :goto_56

    :cond_55
    move v5, v1

    :goto_56
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcTxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    shr-int/lit8 v5, v3, 0x1

    and-int/2addr v5, v2

    if-ne v5, v2, :cond_65

    move v5, v2

    goto :goto_66

    :cond_65
    move v5, v1

    :goto_66
    invoke-static {v5}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcRxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    move-result-object v4

    and-int/lit8 v5, v3, 0x1

    if-ne v5, v2, :cond_73

    goto :goto_74

    :cond_73
    move v2, v1

    :goto_74
    invoke-static {v2}, Landroid/hardware/hdmi/DeviceFeatures;->bitToFeatureSupportStatus(Z)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    :cond_7b
    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v1

    return-object v1
.end method

.method private static updateFeatureSupportStatus(II)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    return p0

    :cond_4
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/hardware/hdmi/DeviceFeatures;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/hardware/hdmi/DeviceFeatures;

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    if-ne v2, v3, :cond_34

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    iget v3, v0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    if-ne v2, v3, :cond_34

    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public getArcRxSupport()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    return v0
.end method

.method public getArcTxSupport()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    return v0
.end method

.method public getDeckControlSupport()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    return v0
.end method

.method public getRecordTvScreenSupport()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    return v0
.end method

.method public getSetAudioRateSupport()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    return v0
.end method

.method public getSetAudioVolumeLevelSupport()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    return v0
.end method

.method public getSetOsdStringSupport()I
    .registers 2

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 3

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(Landroid/hardware/hdmi/DeviceFeatures;Landroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V

    return-object v0
.end method

.method public toOperand()[B
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    or-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    :cond_9
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    if-ne v1, v2, :cond_f

    const/16 v0, 0x20

    :cond_f
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    if-ne v1, v2, :cond_15

    const/16 v0, 0x10

    :cond_15
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    if-ne v1, v2, :cond_1b

    const/16 v0, 0x8

    :cond_1b
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    if-ne v1, v2, :cond_20

    const/4 v0, 0x4

    :cond_20
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    if-ne v1, v2, :cond_25

    const/4 v0, 0x2

    :cond_25
    iget v1, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    if-ne v1, v2, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    new-array v1, v2, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device features: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "record_tv_screen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/hdmi/DeviceFeatures;->mRecordTvScreenSupport:I

    invoke-static {v2}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "set_osd_string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetOsdStringSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deck_control: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mDeckControlSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "set_audio_rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioRateSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "arc_tx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcTxSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "arc_rx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mArcRxSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "set_audio_volume_level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/hardware/hdmi/DeviceFeatures;->mSetAudioVolumeLevelSupport:I

    invoke-static {v3}, Landroid/hardware/hdmi/DeviceFeatures;->featureSupportStatusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
