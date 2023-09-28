# classes2.dex

.class public final Landroid/media/metrics/PlaybackMetrics$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/PlaybackMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioUnderrunCount:I

.field private mContentType:I

.field private mDrmSessionId:[B

.field private mDrmType:I

.field private mExperimentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalBytesRead:J

.field private mMediaDurationMillis:J

.field private mMetricsBundle:Landroid/os/Bundle;

.field private mNetworkBytesRead:J

.field private mNetworkTransferDurationMillis:J

.field private mPlaybackType:I

.field private mPlayerName:Ljava/lang/String;

.field private mPlayerVersion:Ljava/lang/String;

.field private mStreamSource:I

.field private mStreamType:I

.field private mVideoFramesDropped:I

.field private mVideoFramesPlayed:I


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    iput v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    const/4 v3, -0x1

    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    iput v3, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    iput-wide v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    new-array v0, v2, [B

    iput-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-void
.end method

.method private idsToLongArray()[J
    .registers 5

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    iget-object v2, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_22
    return-object v0
.end method


# virtual methods
.method public addExperimentId(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 5

    iget-object v0, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mExperimentIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/media/metrics/PlaybackMetrics;
    .registers 28

    move-object/from16 v0, p0

    new-instance v23, Landroid/media/metrics/PlaybackMetrics;

    move-object/from16 v1, v23

    iget-wide v2, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    iget v4, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    iget v5, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    iget v6, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    iget v7, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    iget v8, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    iget-object v9, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerName:Ljava/lang/String;

    iget-object v10, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerVersion:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Landroid/media/metrics/PlaybackMetrics$Builder;->idsToLongArray()[J

    move-result-object v11

    iget v12, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    iget v13, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    iget v14, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    move-object/from16 v24, v1

    move-wide/from16 v25, v2

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    move-wide v15, v1

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    move-wide/from16 v19, v1

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    move-object/from16 v22, v1

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-direct/range {v1 .. v22}, Landroid/media/metrics/PlaybackMetrics;-><init>(JIIIIILjava/lang/String;Ljava/lang/String;[JIIIJJJ[BLandroid/os/Bundle;)V

    move-object/from16 v1, v23

    return-object v1
.end method

.method public setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mAudioUnderrunCount:I

    return-object p0
.end method

.method public setContentType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mContentType:I

    return-object p0
.end method

.method public setDrmSessionId([B)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmSessionId:[B

    return-object p0
.end method

.method public setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mDrmType:I

    return-object p0
.end method

.method public setLocalBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mLocalBytesRead:J

    return-object p0
.end method

.method public setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMediaDurationMillis:J

    return-object p0
.end method

.method public setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkBytesRead:J

    return-object p0
.end method

.method public setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mNetworkTransferDurationMillis:J

    return-object p0
.end method

.method public setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlaybackType:I

    return-object p0
.end method

.method public setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerName:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mPlayerVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamSource:I

    return-object p0
.end method

.method public setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mStreamType:I

    return-object p0
.end method

.method public setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesDropped:I

    return-object p0
.end method

.method public setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;
    .registers 2

    iput p1, p0, Landroid/media/metrics/PlaybackMetrics$Builder;->mVideoFramesPlayed:I

    return-object p0
.end method
