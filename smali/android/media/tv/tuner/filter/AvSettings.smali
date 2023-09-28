# classes2.dex

.class public Landroid/media/tv/tuner/filter/AvSettings;
.super Landroid/media/tv/tuner/filter/Settings;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/AvSettings$Builder;,
        Landroid/media/tv/tuner/filter/AvSettings$AudioStreamType;,
        Landroid/media/tv/tuner/filter/AvSettings$VideoStreamType;
    }
.end annotation


# static fields
.field public static final AUDIO_STREAM_TYPE_AAC:I = 0x6

.field public static final AUDIO_STREAM_TYPE_AAC_ADTS:I = 0x10

.field public static final AUDIO_STREAM_TYPE_AAC_HE_ADTS:I = 0x12

.field public static final AUDIO_STREAM_TYPE_AAC_HE_LATM:I = 0x13

.field public static final AUDIO_STREAM_TYPE_AAC_LATM:I = 0x11

.field public static final AUDIO_STREAM_TYPE_AC3:I = 0x7

.field public static final AUDIO_STREAM_TYPE_AC4:I = 0x9

.field public static final AUDIO_STREAM_TYPE_DRA:I = 0xf

.field public static final AUDIO_STREAM_TYPE_DTS:I = 0xa

.field public static final AUDIO_STREAM_TYPE_DTS_HD:I = 0xb

.field public static final AUDIO_STREAM_TYPE_EAC3:I = 0x8

.field public static final AUDIO_STREAM_TYPE_MP3:I = 0x2

.field public static final AUDIO_STREAM_TYPE_MPEG1:I = 0x3

.field public static final AUDIO_STREAM_TYPE_MPEG2:I = 0x4

.field public static final AUDIO_STREAM_TYPE_MPEGH:I = 0x5

.field public static final AUDIO_STREAM_TYPE_OPUS:I = 0xd

.field public static final AUDIO_STREAM_TYPE_PCM:I = 0x1

.field public static final AUDIO_STREAM_TYPE_UNDEFINED:I = 0x0

.field public static final AUDIO_STREAM_TYPE_VORBIS:I = 0xe

.field public static final AUDIO_STREAM_TYPE_WMA:I = 0xc

.field public static final VIDEO_STREAM_TYPE_AV1:I = 0xa

.field public static final VIDEO_STREAM_TYPE_AVC:I = 0x5

.field public static final VIDEO_STREAM_TYPE_AVS:I = 0xb

.field public static final VIDEO_STREAM_TYPE_AVS2:I = 0xc

.field public static final VIDEO_STREAM_TYPE_HEVC:I = 0x6

.field public static final VIDEO_STREAM_TYPE_MPEG1:I = 0x2

.field public static final VIDEO_STREAM_TYPE_MPEG2:I = 0x3

.field public static final VIDEO_STREAM_TYPE_MPEG4P2:I = 0x4

.field public static final VIDEO_STREAM_TYPE_RESERVED:I = 0x1

.field public static final VIDEO_STREAM_TYPE_UNDEFINED:I = 0x0

.field public static final VIDEO_STREAM_TYPE_VC1:I = 0x7

.field public static final VIDEO_STREAM_TYPE_VP8:I = 0x8

.field public static final VIDEO_STREAM_TYPE_VP9:I = 0x9


# instance fields
.field private mAudioStreamType:I

.field private final mIsPassthrough:Z

.field private final mUseSecureMemory:Z

.field private mVideoStreamType:I


# direct methods
.method private constructor <init>(IZZIIZ)V
    .registers 8

    nop

    if-eqz p2, :cond_5

    const/4 v0, 0x3

    goto :goto_6

    :cond_5
    const/4 v0, 0x4

    :goto_6
    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings;->mAudioStreamType:I

    iput v0, p0, Landroid/media/tv/tuner/filter/AvSettings;->mVideoStreamType:I

    iput-boolean p3, p0, Landroid/media/tv/tuner/filter/AvSettings;->mIsPassthrough:Z

    iput p4, p0, Landroid/media/tv/tuner/filter/AvSettings;->mAudioStreamType:I

    iput p5, p0, Landroid/media/tv/tuner/filter/AvSettings;->mVideoStreamType:I

    iput-boolean p6, p0, Landroid/media/tv/tuner/filter/AvSettings;->mUseSecureMemory:Z

    return-void
.end method

.method synthetic constructor <init>(IZZIIZLandroid/media/tv/tuner/filter/AvSettings-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/tuner/filter/AvSettings;-><init>(IZZIIZ)V

    return-void
.end method

.method public static builder(IZ)Landroid/media/tv/tuner/filter/AvSettings$Builder;
    .registers 4

    new-instance v0, Landroid/media/tv/tuner/filter/AvSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/media/tv/tuner/filter/AvSettings$Builder;-><init>(IZLandroid/media/tv/tuner/filter/AvSettings$Builder-IA;)V

    return-object v0
.end method


# virtual methods
.method public getAudioStreamType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/AvSettings;->mAudioStreamType:I

    return v0
.end method

.method public getVideoStreamType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/AvSettings;->mVideoStreamType:I

    return v0
.end method

.method public isPassthrough()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings;->mIsPassthrough:Z

    return v0
.end method

.method public useSecureMemory()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/AvSettings;->mUseSecureMemory:Z

    return v0
.end method
