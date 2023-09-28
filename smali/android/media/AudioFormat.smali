# classes2.dex

.class public final Landroid/media/AudioFormat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$SurroundSoundEncoding;,
        Landroid/media/AudioFormat$Encoding;,
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_INVALID:I = 0x0

.field public static final CHANNEL_IN_2POINT0POINT2:I = 0x60000c

.field public static final CHANNEL_IN_2POINT1POINT2:I = 0x70000c

.field public static final CHANNEL_IN_3POINT0POINT2:I = 0x64000c

.field public static final CHANNEL_IN_3POINT1POINT2:I = 0x74000c

.field public static final CHANNEL_IN_5POINT1:I = 0x1700fc

.field public static final CHANNEL_IN_BACK:I = 0x20

.field public static final CHANNEL_IN_BACK_LEFT:I = 0x10000

.field public static final CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final CHANNEL_IN_BACK_RIGHT:I = 0x20000

.field public static final CHANNEL_IN_CENTER:I = 0x40000

.field public static final CHANNEL_IN_DEFAULT:I = 0x1

.field public static final CHANNEL_IN_FRONT:I = 0x10

.field public static final CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final CHANNEL_IN_LEFT:I = 0x4

.field public static final CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final CHANNEL_IN_LOW_FREQUENCY:I = 0x100000

.field public static final CHANNEL_IN_MONO:I = 0x10

.field public static final CHANNEL_IN_PRESSURE:I = 0x400

.field public static final CHANNEL_IN_RIGHT:I = 0x8

.field public static final CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final CHANNEL_IN_STEREO:I = 0xc

.field public static final CHANNEL_IN_TOP_LEFT:I = 0x200000

.field public static final CHANNEL_IN_TOP_RIGHT:I = 0x400000

.field public static final CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final CHANNEL_IN_X_AXIS:I = 0x800

.field public static final CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final CHANNEL_OUT_13POINT_360RA:I = 0x1cbd81c

.field public static final CHANNEL_OUT_22POINT2:I = 0x3fffffc

.field public static final CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final CHANNEL_OUT_5POINT1POINT2:I = 0x3000fc

.field public static final CHANNEL_OUT_5POINT1POINT4:I = 0xb40fc

.field public static final CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final CHANNEL_OUT_7POINT1:I = 0x3fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_OUT_7POINT1POINT2:I = 0x3018fc

.field public static final CHANNEL_OUT_7POINT1POINT4:I = 0xb58fc

.field public static final CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final CHANNEL_OUT_9POINT1POINT4:I = 0xc0b58fc

.field public static final CHANNEL_OUT_9POINT1POINT6:I = 0xc3b58fc

.field public static final CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final CHANNEL_OUT_BOTTOM_FRONT_CENTER:I = 0x800000

.field public static final CHANNEL_OUT_BOTTOM_FRONT_LEFT:I = 0x400000

.field public static final CHANNEL_OUT_BOTTOM_FRONT_RIGHT:I = 0x1000000

.field public static final CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final CHANNEL_OUT_FRONT_WIDE_LEFT:I = 0x4000000

.field public static final CHANNEL_OUT_FRONT_WIDE_RIGHT:I = 0x8000000

.field public static final CHANNEL_OUT_HAPTIC_A:I = 0x20000000

.field public static final CHANNEL_OUT_HAPTIC_B:I = 0x10000000

.field public static final CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final CHANNEL_OUT_LOW_FREQUENCY_2:I = 0x2000000

.field public static final CHANNEL_OUT_MONO:I = 0x4

.field public static final CHANNEL_OUT_QUAD:I = 0xcc

.field public static final CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final CHANNEL_OUT_STEREO:I = 0xc

.field public static final CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final CHANNEL_OUT_TOP_SIDE_LEFT:I = 0x100000

.field public static final CHANNEL_OUT_TOP_SIDE_RIGHT:I = 0x200000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENCODING_AAC_ELD:I = 0xf

.field public static final ENCODING_AAC_HE_V1:I = 0xb

.field public static final ENCODING_AAC_HE_V2:I = 0xc

.field public static final ENCODING_AAC_LC:I = 0xa

.field public static final ENCODING_AAC_XHE:I = 0x10

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_AC4:I = 0x11

.field public static final ENCODING_AMRNB:I = 0x64

.field public static final ENCODING_AMRWB:I = 0x65

.field public static final ENCODING_DEFAULT:I = 0x1

.field public static final ENCODING_DOLBY_MAT:I = 0x13

.field public static final ENCODING_DOLBY_TRUEHD:I = 0xe

.field public static final ENCODING_DRA:I = 0x1c

.field public static final ENCODING_DTS:I = 0x7

.field public static final ENCODING_DTS_HD:I = 0x8

.field public static final ENCODING_DTS_UHD:I = 0x1b

.field public static final ENCODING_EVRC:I = 0x66

.field public static final ENCODING_EVRCB:I = 0x67

.field public static final ENCODING_EVRCNW:I = 0x69

.field public static final ENCODING_EVRCWB:I = 0x68

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_E_AC3_JOC:I = 0x12

.field public static final ENCODING_IEC61937:I = 0xd

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_LEGACY_SHORT_ARRAY_THRESHOLD:I = 0x14

.field public static final ENCODING_MP3:I = 0x9

.field public static final ENCODING_MPEGH_BL_L3:I = 0x17

.field public static final ENCODING_MPEGH_BL_L4:I = 0x18

.field public static final ENCODING_MPEGH_LC_L3:I = 0x19

.field public static final ENCODING_MPEGH_LC_L4:I = 0x1a

.field public static final ENCODING_OPUS:I = 0x14

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_24BIT_PACKED:I = 0x15

.field public static final ENCODING_PCM_32BIT:I = 0x16

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final ENCODING_PCM_FLOAT:I = 0x4

.field public static final SAMPLE_RATE_HZ_MAX:I

.field public static final SAMPLE_RATE_HZ_MIN:I

.field public static final SAMPLE_RATE_UNSPECIFIED:I

.field public static final SURROUND_SOUND_ENCODING:[I


# instance fields
.field private final mChannelCount:I

.field private final mChannelIndexMask:I

.field private final mChannelMask:I

.field private final mEncoding:I

.field private final mFrameSizeInBytes:I

.field private final mPropertySetMask:I

.field private final mSampleRate:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmChannelIndexMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannelMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEncoding(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPropertySetMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSampleRate(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MIN:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    new-instance v0, Landroid/media/AudioFormat$1;

    invoke-direct {v0}, Landroid/media/AudioFormat$1;-><init>()V

    sput-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    return-void

    nop

    :array_1a
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xe
        0x11
        0x12
        0x13
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(IIII)V
    .registers 11

    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(IIIII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iput v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_15

    move v2, p3

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    iput v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_1e

    move v2, p4

    goto :goto_1f

    :cond_1e
    move v2, v1

    :goto_1f
    iput v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_27

    move v1, p5

    goto :goto_28

    :cond_27
    nop

    :goto_28
    iput v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    if-nez v2, :cond_3e

    move v2, v1

    goto :goto_43

    :cond_3e
    if-eq v2, v1, :cond_43

    if-eqz v1, :cond_43

    const/4 v2, 0x0

    :cond_43
    :goto_43
    iput v2, p0, Landroid/media/AudioFormat;->mChannelCount:I

    const/4 v3, 0x1

    :try_start_46
    invoke-static {v0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v0
    :try_end_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4a} :catch_4d

    mul-int v3, v0, v2

    goto :goto_4e

    :catch_4d
    move-exception v0

    :goto_4e
    if-eqz v3, :cond_52

    move v0, v3

    goto :goto_53

    :cond_52
    const/4 v0, 0x1

    :goto_53
    iput v0, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroid/media/AudioFormat-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioFormat-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static channelCountFromInChannelMask(I)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static channelCountFromOutChannelMask(I)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static convertChannelOutMaskToNativeMask(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static convertNativeChannelMaskToOutMask(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static filterPublicFormats([I)[I
    .registers 5

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_21

    aget v3, v0, v2

    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eq v1, v2, :cond_1c

    aget v3, v0, v2

    aput v3, v0, v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_21
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2
.end method

.method public static getBytesPerSample(I)I
    .registers 4

    sparse-switch p0, :sswitch_data_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    const/16 v0, 0x17

    return v0

    :sswitch_1f
    const/16 v0, 0x3d

    return v0

    :sswitch_22
    const/16 v0, 0x20

    return v0

    :sswitch_25
    const/4 v0, 0x3

    return v0

    :sswitch_27
    const/4 v0, 0x4

    return v0

    :sswitch_29
    const/4 v0, 0x1

    return v0

    :sswitch_2b
    const/4 v0, 0x2

    return v0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_29
        0x4 -> :sswitch_27
        0xd -> :sswitch_2b
        0x15 -> :sswitch_25
        0x16 -> :sswitch_27
        0x64 -> :sswitch_22
        0x65 -> :sswitch_1f
        0x66 -> :sswitch_1c
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static inChannelMaskFromOutChannelMask(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12  #0x2
    const/16 v0, 0xc

    return v0

    :pswitch_15  #0x1
    const/16 v0, 0x10

    return v0

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_15  #00000001
        :pswitch_12  #00000002
    .end packed-switch
.end method

.method public static isEncodingLinearFrames(I)Z
    .registers 4

    packed-switch p0, :pswitch_data_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c
    const/4 v0, 0x0

    return v0

    :pswitch_1e  #0x1, 0x2, 0x3, 0x4, 0xd, 0x15, 0x16
    const/4 v0, 0x1

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e  #00000001
        :pswitch_1e  #00000002
        :pswitch_1e  #00000003
        :pswitch_1e  #00000004
        :pswitch_1c  #00000005
        :pswitch_1c  #00000006
        :pswitch_1c  #00000007
        :pswitch_1c  #00000008
        :pswitch_1c  #00000009
        :pswitch_1c  #0000000a
        :pswitch_1c  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_1e  #0000000d
        :pswitch_1c  #0000000e
        :pswitch_1c  #0000000f
        :pswitch_1c  #00000010
        :pswitch_1c  #00000011
        :pswitch_1c  #00000012
        :pswitch_1c  #00000013
        :pswitch_1c  #00000014
        :pswitch_1e  #00000015
        :pswitch_1e  #00000016
        :pswitch_1c  #00000017
        :pswitch_1c  #00000018
        :pswitch_1c  #00000019
        :pswitch_1c  #0000001a
        :pswitch_1c  #0000001b
        :pswitch_1c  #0000001c
    .end packed-switch
.end method

.method public static isEncodingLinearPcm(I)Z
    .registers 4

    sparse-switch p0, :sswitch_data_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    const/4 v0, 0x0

    return v0

    :sswitch_1e
    const/4 v0, 0x1

    return v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0x5 -> :sswitch_1c
        0x6 -> :sswitch_1c
        0x7 -> :sswitch_1c
        0x8 -> :sswitch_1c
        0x9 -> :sswitch_1c
        0xa -> :sswitch_1c
        0xb -> :sswitch_1c
        0xc -> :sswitch_1c
        0xd -> :sswitch_1c
        0xe -> :sswitch_1c
        0xf -> :sswitch_1c
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_1c
        0x12 -> :sswitch_1c
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_1c
        0x15 -> :sswitch_1e
        0x16 -> :sswitch_1e
        0x17 -> :sswitch_1c
        0x18 -> :sswitch_1c
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_1c
        0x1b -> :sswitch_1c
        0x1c -> :sswitch_1c
        0x64 -> :sswitch_1c
        0x65 -> :sswitch_1c
        0x66 -> :sswitch_1c
        0x67 -> :sswitch_1c
        0x68 -> :sswitch_1c
        0x69 -> :sswitch_1c
    .end sparse-switch
.end method

.method public static isPublicEncoding(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5  #0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xe, 0xf, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x2
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
        :pswitch_5  #0000000f
        :pswitch_5  #00000010
        :pswitch_5  #00000011
        :pswitch_5  #00000012
        :pswitch_5  #00000013
        :pswitch_5  #00000014
        :pswitch_5  #00000015
        :pswitch_5  #00000016
        :pswitch_5  #00000017
        :pswitch_5  #00000018
        :pswitch_5  #00000019
        :pswitch_5  #0000001a
        :pswitch_5  #0000001b
        :pswitch_5  #0000001c
    .end packed-switch
.end method

.method public static isValidEncoding(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_5
        0xf -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x12 -> :sswitch_5
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x18 -> :sswitch_5
        0x19 -> :sswitch_5
        0x1a -> :sswitch_5
        0x1b -> :sswitch_5
        0x1c -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
    .end sparse-switch
.end method

.method public static toDisplayName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_34

    :pswitch_3  #0x9, 0xb, 0xc, 0xd, 0xf, 0x10, 0x14, 0x15, 0x16
    const-string v0, "Unknown surround sound format"

    return-object v0

    :pswitch_6  #0x1c
    const-string v0, "DRA"

    return-object v0

    :pswitch_9  #0x1b
    const-string v0, "DTS UHD"

    return-object v0

    :pswitch_c  #0x1a
    const-string v0, "MPEG-H 3D Audio low complexity profile level 4"

    return-object v0

    :pswitch_f  #0x19
    const-string v0, "MPEG-H 3D Audio low complexity profile level 3"

    return-object v0

    :pswitch_12  #0x18
    const-string v0, "MPEG-H 3D Audio baseline profile level 4"

    return-object v0

    :pswitch_15  #0x17
    const-string v0, "MPEG-H 3D Audio baseline profile level 3"

    return-object v0

    :pswitch_18  #0x13
    const-string v0, "Dolby MAT"

    return-object v0

    :pswitch_1b  #0x12
    const-string v0, "Dolby Atmos in Dolby Digital Plus"

    return-object v0

    :pswitch_1e  #0x11
    const-string v0, "Dolby AC-4"

    return-object v0

    :pswitch_21  #0xe
    const-string v0, "Dolby TrueHD"

    return-object v0

    :pswitch_24  #0xa
    const-string v0, "AAC"

    return-object v0

    :pswitch_27  #0x8
    const-string v0, "DTS HD"

    return-object v0

    :pswitch_2a  #0x7
    const-string v0, "DTS"

    return-object v0

    :pswitch_2d  #0x6
    const-string v0, "Dolby Digital Plus"

    return-object v0

    :pswitch_30  #0x5
    const-string v0, "Dolby Digital"

    return-object v0

    nop

    :pswitch_data_34
    .packed-switch 0x5
        :pswitch_30  #00000005
        :pswitch_2d  #00000006
        :pswitch_2a  #00000007
        :pswitch_27  #00000008
        :pswitch_3  #00000009
        :pswitch_24  #0000000a
        :pswitch_3  #0000000b
        :pswitch_3  #0000000c
        :pswitch_3  #0000000d
        :pswitch_21  #0000000e
        :pswitch_3  #0000000f
        :pswitch_3  #00000010
        :pswitch_1e  #00000011
        :pswitch_1b  #00000012
        :pswitch_18  #00000013
        :pswitch_3  #00000014
        :pswitch_3  #00000015
        :pswitch_3  #00000016
        :pswitch_15  #00000017
        :pswitch_12  #00000018
        :pswitch_f  #00000019
        :pswitch_c  #0000001a
        :pswitch_9  #0000001b
        :pswitch_6  #0000001c
    .end packed-switch
.end method

.method public static toLogFriendlyEncoding(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_6c

    :pswitch_3  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x1c
    const-string v0, "ENCODING_DRA"

    return-object v0

    :pswitch_1a  #0x1b
    const-string v0, "ENCODING_DTS_UHD"

    return-object v0

    :pswitch_1d  #0x1a
    const-string v0, "ENCODING_MPEGH_LC_L4"

    return-object v0

    :pswitch_20  #0x19
    const-string v0, "ENCODING_MPEGH_LC_L3"

    return-object v0

    :pswitch_23  #0x18
    const-string v0, "ENCODING_MPEGH_BL_L4"

    return-object v0

    :pswitch_26  #0x17
    const-string v0, "ENCODING_MPEGH_BL_L3"

    return-object v0

    :pswitch_29  #0x16
    const-string v0, "ENCODING_PCM_32BIT"

    return-object v0

    :pswitch_2c  #0x15
    const-string v0, "ENCODING_PCM_24BIT_PACKED"

    return-object v0

    :pswitch_2f  #0x14
    const-string v0, "ENCODING_OPUS"

    return-object v0

    :pswitch_32  #0x13
    const-string v0, "ENCODING_DOLBY_MAT"

    return-object v0

    :pswitch_35  #0x12
    const-string v0, "ENCODING_E_AC3_JOC"

    return-object v0

    :pswitch_38  #0x11
    const-string v0, "ENCODING_AC4"

    return-object v0

    :pswitch_3b  #0x10
    const-string v0, "ENCODING_AAC_XHE"

    return-object v0

    :pswitch_3e  #0xf
    const-string v0, "ENCODING_AAC_ELD"

    return-object v0

    :pswitch_41  #0xe
    const-string v0, "ENCODING_DOLBY_TRUEHD"

    return-object v0

    :pswitch_44  #0xd
    const-string v0, "ENCODING_IEC61937"

    return-object v0

    :pswitch_47  #0xc
    const-string v0, "ENCODING_AAC_HE_V2"

    return-object v0

    :pswitch_4a  #0xb
    const-string v0, "ENCODING_AAC_HE_V1"

    return-object v0

    :pswitch_4d  #0xa
    const-string v0, "ENCODING_AAC_LC"

    return-object v0

    :pswitch_50  #0x9
    const-string v0, "ENCODING_MP3"

    return-object v0

    :pswitch_53  #0x8
    const-string v0, "ENCODING_DTS_HD"

    return-object v0

    :pswitch_56  #0x7
    const-string v0, "ENCODING_DTS"

    return-object v0

    :pswitch_59  #0x6
    const-string v0, "ENCODING_E_AC3"

    return-object v0

    :pswitch_5c  #0x5
    const-string v0, "ENCODING_AC3"

    return-object v0

    :pswitch_5f  #0x4
    const-string v0, "ENCODING_PCM_FLOAT"

    return-object v0

    :pswitch_62  #0x3
    const-string v0, "ENCODING_PCM_8BIT"

    return-object v0

    :pswitch_65  #0x2
    const-string v0, "ENCODING_PCM_16BIT"

    return-object v0

    :pswitch_68  #0x0
    const-string v0, "ENCODING_INVALID"

    return-object v0

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_68  #00000000
        :pswitch_3  #00000001
        :pswitch_65  #00000002
        :pswitch_62  #00000003
        :pswitch_5f  #00000004
        :pswitch_5c  #00000005
        :pswitch_59  #00000006
        :pswitch_56  #00000007
        :pswitch_53  #00000008
        :pswitch_50  #00000009
        :pswitch_4d  #0000000a
        :pswitch_4a  #0000000b
        :pswitch_47  #0000000c
        :pswitch_44  #0000000d
        :pswitch_41  #0000000e
        :pswitch_3e  #0000000f
        :pswitch_3b  #00000010
        :pswitch_38  #00000011
        :pswitch_35  #00000012
        :pswitch_32  #00000013
        :pswitch_2f  #00000014
        :pswitch_2c  #00000015
        :pswitch_29  #00000016
        :pswitch_26  #00000017
        :pswitch_23  #00000018
        :pswitch_20  #00000019
        :pswitch_1d  #0000001a
        :pswitch_1a  #0000001b
        :pswitch_17  #0000001c
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mPropertySetMask:I

    if-eq v3, v4, :cond_1c

    return v1

    :cond_1c
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_26

    iget v4, p0, Landroid/media/AudioFormat;->mEncoding:I

    iget v5, v2, Landroid/media/AudioFormat;->mEncoding:I

    if-ne v4, v5, :cond_45

    :cond_26
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_30

    iget v4, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iget v5, v2, Landroid/media/AudioFormat;->mSampleRate:I

    if-ne v4, v5, :cond_45

    :cond_30
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_3a

    iget v4, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iget v5, v2, Landroid/media/AudioFormat;->mChannelMask:I

    if-ne v4, v5, :cond_45

    :cond_3a
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_46

    iget v3, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mChannelIndexMask:I

    if-ne v3, v4, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    :cond_46
    :goto_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public getChannelCount()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mChannelCount:I

    return v0
.end method

.method public getChannelIndexMask()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method public getChannelMask()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method public getEncoding()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method public getFrameSizeInBytes()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    return v0
.end method

.method public getPropertySetMask()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioFormat;->mChannelCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v1}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%dch %dHz %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan_index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
