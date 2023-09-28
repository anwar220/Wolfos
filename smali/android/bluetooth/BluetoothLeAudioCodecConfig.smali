# classes.dex

.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$FrameDuration;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$ChannelCount;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$BitsPerSample;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$SampleRate;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$CodecPriority;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$SourceCodecType;
    }
.end annotation


# static fields
.field public static final BITS_PER_SAMPLE_16:I = 0x1

.field public static final BITS_PER_SAMPLE_24:I = 0x2

.field public static final BITS_PER_SAMPLE_32:I = 0x8

.field public static final BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final CHANNEL_COUNT_1:I = 0x1

.field public static final CHANNEL_COUNT_2:I = 0x2

.field public static final CHANNEL_COUNT_NONE:I = 0x0

.field public static final CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final FRAME_DURATION_10000:I = 0x2

.field public static final FRAME_DURATION_15000:I = 0x10000

.field public static final FRAME_DURATION_7500:I = 0x1

.field public static final FRAME_DURATION_NONE:I = 0x0

.field public static final SAMPLE_RATE_16000:I = 0x4

.field public static final SAMPLE_RATE_24000:I = 0x10

.field public static final SAMPLE_RATE_32000:I = 0x20

.field public static final SAMPLE_RATE_44100:I = 0x40

.field public static final SAMPLE_RATE_48000:I = 0x80

.field public static final SAMPLE_RATE_8000:I = 0x1

.field public static final SAMPLE_RATE_96000:I = 0x200

.field public static final SAMPLE_RATE_NONE:I = 0x0

.field public static final SOURCE_CODEC_TYPE_APTX_ADAPTIVE_LE:I = 0x1

.field public static final SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final SOURCE_CODEC_TYPE_LC3:I


# instance fields
.field private final mBitsPerSample:I

.field private final mChannelCount:I

.field private final mCodecPriority:I

.field private final mCodecSpecific1:J

.field private final mCodecSpecific2:J

.field private final mCodecSpecific3:J

.field private final mCodecSpecific4:J

.field private final mCodecType:I

.field private final mFrameDuration:I

.field private final mMaxOctetsPerFrame:I

.field private final mMinOctetsPerFrame:I

.field private final mOctetsPerFrame:I

.field private final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIIIIIIIJJJJ)V
    .registers 34

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    move/from16 v2, p2

    iput v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    move/from16 v3, p3

    iput v3, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    move/from16 v4, p4

    iput v4, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    move/from16 v5, p5

    iput v5, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    move/from16 v6, p6

    iput v6, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    move/from16 v7, p7

    iput v7, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    move/from16 v8, p8

    iput v8, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    move/from16 v9, p9

    iput v9, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIJJJJLandroid/bluetooth/BluetoothLeAudioCodecConfig-IA;)V
    .registers 19

    invoke-direct/range {p0 .. p17}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;-><init>(IIIIIIIIIJJJJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_74

    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecPriority()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    if-ne v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    if-ne v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    if-ne v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMinOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    if-ne v2, v3, :cond_72

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMaxOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    if-ne v2, v3, :cond_72

    iget-wide v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_72

    iget-wide v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_72

    iget-wide v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_72

    iget-wide v2, v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_72

    const/4 v1, 0x1

    goto :goto_73

    :cond_72
    nop

    :goto_73
    return v1

    :cond_74
    return v1
.end method

.method public getBitsPerSample()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    return v0
.end method

.method public getCodecName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    sparse-switch v0, :sswitch_data_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_21
    const-string v0, "INVALID CODEC"

    return-object v0

    :sswitch_24
    const-string v0, "APTX_ADAPTIVE_LEA"

    return-object v0

    :sswitch_27
    const-string v0, "LC3"

    return-object v0

    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_27
        0x1 -> :sswitch_24
        0xf4240 -> :sswitch_21
    .end sparse-switch
.end method

.method public getCodecPriority()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public getCodecSpecific1()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public getCodecSpecific2()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public getCodecSpecific3()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public getCodecSpecific4()J
    .registers 3

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public getCodecType()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    return v0
.end method

.method public getFrameDuration()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    return v0
.end method

.method public getMaxOctetsPerFrame()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    return v0
.end method

.method public getMinOctetsPerFrame()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    return v0
.end method

.method public getOctetsPerFrame()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{codecName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecPriority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBitsPerSample:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mChannelCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFrameDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMinOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMaxOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecSpecific1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecSpecific2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecSpecific3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecSpecific4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific3:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecSpecific4:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
