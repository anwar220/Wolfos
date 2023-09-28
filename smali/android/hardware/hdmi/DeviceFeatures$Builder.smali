# classes2.dex

.class public final Landroid/hardware/hdmi/DeviceFeatures$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/DeviceFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mArcRxSupport:I

.field private mArcTxSupport:I

.field private mDeckControlSupport:I

.field private mOsdStringSupport:I

.field private mRecordTvScreenSupport:I

.field private mSetAudioRateSupport:I

.field private mSetAudioVolumeLevelSupport:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmArcRxSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmArcTxSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeckControlSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOsdStringSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordTvScreenSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetAudioRateSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetAudioVolumeLevelSupport(Landroid/hardware/hdmi/DeviceFeatures$Builder;)I
    .registers 1

    iget p0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    return p0
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/hdmi/DeviceFeatures;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getRecordTvScreenSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetOsdStringSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getDeckControlSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioRateSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getArcTxSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getArcRxSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/DeviceFeatures;Landroid/hardware/hdmi/DeviceFeatures$Builder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/hdmi/DeviceFeatures$Builder;-><init>(Landroid/hardware/hdmi/DeviceFeatures;)V

    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/hdmi/DeviceFeatures;
    .registers 3

    new-instance v0, Landroid/hardware/hdmi/DeviceFeatures;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/hdmi/DeviceFeatures;-><init>(Landroid/hardware/hdmi/DeviceFeatures$Builder;Landroid/hardware/hdmi/DeviceFeatures-IA;)V

    return-object v0
.end method

.method public setArcRxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    return-object p0
.end method

.method public setArcTxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    return-object p0
.end method

.method public setDeckControlSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    return-object p0
.end method

.method public setRecordTvScreenSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    return-object p0
.end method

.method public setSetAudioRateSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    return-object p0
.end method

.method public setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    return-object p0
.end method

.method public setSetOsdStringSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 2

    iput p1, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    return-object p0
.end method

.method public update(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/DeviceFeatures$Builder;
    .registers 4

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getRecordTvScreenSupport()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mRecordTvScreenSupport:I

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetOsdStringSupport()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mOsdStringSupport:I

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getDeckControlSupport()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mDeckControlSupport:I

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioRateSupport()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioRateSupport:I

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getArcTxSupport()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcTxSupport:I

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getArcRxSupport()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mArcRxSupport:I

    iget v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    invoke-virtual {p1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/hdmi/DeviceFeatures;->-$$Nest$smupdateFeatureSupportStatus(II)I

    move-result v0

    iput v0, p0, Landroid/hardware/hdmi/DeviceFeatures$Builder;->mSetAudioVolumeLevelSupport:I

    return-object p0
.end method
