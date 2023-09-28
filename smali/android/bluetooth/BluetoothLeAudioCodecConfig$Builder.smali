# classes.dex

.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBitsPerSample:I

.field private mChannelCount:I

.field private mCodecPriority:I

.field private mCodecSpecific1:J

.field private mCodecSpecific2:J

.field private mCodecSpecific3:J

.field private mCodecSpecific4:J

.field private mCodecType:I

.field private mFrameDuration:I

.field private mMaxOctetsPerFrame:I

.field private mMinOctetsPerFrame:I

.field private mOctetsPerFrame:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothLeAudioCodecConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecPriority()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMinOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMaxOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecSpecific1()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecSpecific2()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecSpecific3()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecSpecific4()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .registers 24

    move-object/from16 v0, p0

    new-instance v20, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-object/from16 v1, v20

    iget v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    iget v3, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    iget v4, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    iget v5, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    iget v6, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    iget v7, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    iget v8, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    iget v9, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    iget v10, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    iget-wide v11, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    iget-wide v13, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    move-object/from16 v21, v1

    move/from16 v22, v2

    iget-wide v1, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    move-wide v15, v1

    iget-wide v1, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    move-wide/from16 v17, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;-><init>(IIIIIIIIIJJJJLandroid/bluetooth/BluetoothLeAudioCodecConfig-IA;)V

    return-object v20
.end method

.method public setBitsPerSample(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mBitsPerSample:I

    return-object p0
.end method

.method public setChannelCount(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mChannelCount:I

    return-object p0
.end method

.method public setCodecPriority(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecPriority:I

    return-object p0
.end method

.method public setCodecSpecific1(J)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific1:J

    return-object p0
.end method

.method public setCodecSpecific2(J)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific2:J

    return-object p0
.end method

.method public setCodecSpecific3(J)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific3:J

    return-object p0
.end method

.method public setCodecSpecific4(J)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecSpecific4:J

    return-object p0
.end method

.method public setCodecType(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mCodecType:I

    return-object p0
.end method

.method public setFrameDuration(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mFrameDuration:I

    return-object p0
.end method

.method public setMaxOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMaxOctetsPerFrame:I

    return-object p0
.end method

.method public setMinOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mMinOctetsPerFrame:I

    return-object p0
.end method

.method public setOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mOctetsPerFrame:I

    return-object p0
.end method

.method public setSampleRate(I)Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;->mSampleRate:I

    return-object p0
.end method
