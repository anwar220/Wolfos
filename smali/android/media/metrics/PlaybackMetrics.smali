# classes2.dex

.class public final Landroid/media/metrics/PlaybackMetrics;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/metrics/PlaybackMetrics$Builder;,
        Landroid/media/metrics/PlaybackMetrics$ContentType;,
        Landroid/media/metrics/PlaybackMetrics$DrmType;,
        Landroid/media/metrics/PlaybackMetrics$PlaybackType;,
        Landroid/media/metrics/PlaybackMetrics$StreamType;,
        Landroid/media/metrics/PlaybackMetrics$StreamSource;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_AD:I = 0x2

.field public static final CONTENT_TYPE_MAIN:I = 0x1

.field public static final CONTENT_TYPE_OTHER:I = 0x3

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/metrics/PlaybackMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRM_TYPE_CLEARKEY:I = 0x6

.field public static final DRM_TYPE_NONE:I = 0x0

.field public static final DRM_TYPE_OTHER:I = 0x1

.field public static final DRM_TYPE_PLAY_READY:I = 0x2

.field public static final DRM_TYPE_WIDEVINE_L1:I = 0x3

.field public static final DRM_TYPE_WIDEVINE_L3:I = 0x4

.field public static final DRM_TYPE_WV_L3_FALLBACK:I = 0x5

.field public static final PLAYBACK_TYPE_LIVE:I = 0x2

.field public static final PLAYBACK_TYPE_OTHER:I = 0x3

.field public static final PLAYBACK_TYPE_UNKNOWN:I = 0x0

.field public static final PLAYBACK_TYPE_VOD:I = 0x1

.field public static final STREAM_SOURCE_DEVICE:I = 0x2

.field public static final STREAM_SOURCE_MIXED:I = 0x3

.field public static final STREAM_SOURCE_NETWORK:I = 0x1

.field public static final STREAM_SOURCE_UNKNOWN:I = 0x0

.field public static final STREAM_TYPE_DASH:I = 0x3

.field public static final STREAM_TYPE_HLS:I = 0x4

.field public static final STREAM_TYPE_OTHER:I = 0x1

.field public static final STREAM_TYPE_PROGRESSIVE:I = 0x2

.field public static final STREAM_TYPE_SS:I = 0x5

.field public static final STREAM_TYPE_UNKNOWN:I


# instance fields
.field private final mAudioUnderrunCount:I

.field private final mContentType:I

.field private final mDrmSessionId:[B

.field private final mDrmType:I

.field private final mExperimentIds:[J

.field private final mLocalBytesRead:J

.field private final mMediaDurationMillis:J

.field private final mMetricsBundle:Landroid/os/Bundle;

.field private final mNetworkBytesRead:J

.field private final mNetworkTransferDurationMillis:J

.field private final mPlaybackType:I

.field private final mPlayerName:Ljava/lang/String;

.field private final mPlayerVersion:Ljava/lang/String;

.field private final mStreamSource:I

.field private final mStreamType:I

.field private final mVideoFramesDropped:I

.field private final mVideoFramesPlayed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/metrics/PlaybackMetrics$1;

    invoke-direct {v0}, Landroid/media/metrics/PlaybackMetrics$1;-><init>()V

    sput-object v0, Landroid/media/metrics/PlaybackMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIIIIILjava/lang/String;Ljava/lang/String;[JIIIJJJ[BLandroid/os/Bundle;)V
    .registers 38

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v2, p1

    iput-wide v2, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    move/from16 v4, p3

    iput v4, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    move/from16 v5, p4

    iput v5, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    move/from16 v6, p5

    iput v6, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    move/from16 v7, p6

    iput v7, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    move/from16 v8, p7

    iput v8, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    move-object/from16 v9, p8

    iput-object v9, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    const-class v11, Landroid/annotation/NonNull;

    const/4 v12, 0x0

    invoke-static {v11, v12, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    move/from16 v11, p11

    iput v11, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    move/from16 v12, p12

    iput v12, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    move/from16 v13, p13

    iput v13, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    move-wide/from16 v14, p14

    iput-wide v14, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    move-wide/from16 v1, p16

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    move-object/from16 v3, p20

    iput-object v3, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-virtual/range {p21 .. p21}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 29

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    const-wide/16 v10, 0x80

    and-long/2addr v10, v1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_2c

    const/4 v10, 0x0

    goto :goto_30

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    :goto_30
    const-wide/16 v14, 0x100

    and-long/2addr v14, v1

    cmp-long v12, v14, v12

    if-nez v12, :cond_39

    const/4 v12, 0x0

    goto :goto_3d

    :cond_39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    :goto_3d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-wide/from16 v16, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    move-wide/from16 v18, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    move-wide/from16 v20, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    move-wide/from16 v22, v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v2, v1, [B

    move/from16 v24, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iput v5, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iput v6, v0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iput v7, v0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iput v8, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iput v9, v0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iput-object v10, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iput-object v12, v0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iput-object v13, v0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    move-wide/from16 v25, v3

    const-class v3, Landroid/annotation/NonNull;

    const/4 v4, 0x0

    invoke-static {v3, v4, v13}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v14, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iput v15, v0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iput v11, v0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    move-wide/from16 v3, v18

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    move-wide/from16 v3, v20

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    move-wide/from16 v3, v22

    iput-wide v3, v0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    iput-object v2, v0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    iput-object v1, v0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_91

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_91

    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/media/metrics/PlaybackMetrics;

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8f

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    if-ne v3, v4, :cond_8f

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_8f

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    if-ne v3, v4, :cond_8f

    iget v3, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    iget v4, v2, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    if-ne v3, v4, :cond_8f

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8f

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8f

    iget-wide v3, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    iget-wide v5, v2, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8f

    iget-object v3, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    iget-object v4, v2, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_8f

    goto :goto_90

    :cond_8f
    move v0, v1

    :goto_90
    return v0

    :cond_91
    :goto_91
    return v1
.end method

.method public getAudioUnderrunCount()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    return v0
.end method

.method public getContentType()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    return v0
.end method

.method public getDrmSessionId()[B
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    return-object v0
.end method

.method public getDrmType()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    return v0
.end method

.method public getExperimentIds()[J
    .registers 3

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public getLocalBytesRead()J
    .registers 3

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    return-wide v0
.end method

.method public getMediaDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    return-wide v0
.end method

.method public getMetricsBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNetworkBytesRead()J
    .registers 3

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    return-wide v0
.end method

.method public getNetworkTransferDurationMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    return-wide v0
.end method

.method public getPlaybackType()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    return v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamSource()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    return v0
.end method

.method public getStreamType()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    return v0
.end method

.method public getVideoFramesDropped()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    return v0
.end method

.method public getVideoFramesPlayed()I
    .registers 2

    iget v0, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    const/16 v2, 0xf

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlaybackMetrics { mediaDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", drmType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contentType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playerVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", experimentIds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFramesPlayed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoFramesDropped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioUnderrunCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", localBytesRead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkTransferDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "drmSessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const-wide/16 v0, 0x0

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz v2, :cond_9

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    :cond_9
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz v2, :cond_10

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    :cond_10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mMediaDurationMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamSource:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mStreamType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlaybackType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mContentType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerName:Ljava/lang/String;

    if-eqz v2, :cond_38

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_38
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mPlayerVersion:Ljava/lang/String;

    if-eqz v2, :cond_3f

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_3f
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mExperimentIds:[J

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesPlayed:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mVideoFramesDropped:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/media/metrics/PlaybackMetrics;->mAudioUnderrunCount:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkBytesRead:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mLocalBytesRead:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/media/metrics/PlaybackMetrics;->mNetworkTransferDurationMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mDrmSessionId:[B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics;->mMetricsBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
