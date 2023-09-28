# classes2.dex

.class public final Landroid/media/metrics/TrackChangeEvent$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/metrics/TrackChangeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioSampleRate:I

.field private mBitrate:I

.field private mBuilderFieldsSet:J

.field private mChannelCount:I

.field private mCodecName:Ljava/lang/String;

.field private mContainerMimeType:Ljava/lang/String;

.field private mHeight:I

.field private mLanguage:Ljava/lang/String;

.field private mLanguageRegion:Ljava/lang/String;

.field private mMetricsBundle:Landroid/os/Bundle;

.field private mReason:I

.field private mSampleMimeType:Ljava/lang/String;

.field private mState:I

.field private mTimeSinceCreatedMillis:J

.field private final mType:I

.field private mVideoFrameRate:F

.field private mWidth:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mState:I

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mReason:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBitrate:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mTimeSinceCreatedMillis:J

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mChannelCount:I

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mAudioSampleRate:I

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mWidth:I

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mHeight:I

    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mVideoFrameRate:F

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    if-eqz p1, :cond_37

    const/4 v0, 0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2f

    goto :goto_37

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "track type must be one of TRACK_TYPE_AUDIO, TRACK_TYPE_VIDEO, TRACK_TYPE_TEXT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    :goto_37
    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mType:I

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/media/metrics/TrackChangeEvent;
    .registers 23

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v1, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v3, 0x4000

    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    new-instance v1, Landroid/media/metrics/TrackChangeEvent;

    move-object v3, v1

    iget v4, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mState:I

    iget v5, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mReason:I

    iget-object v6, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mContainerMimeType:Ljava/lang/String;

    iget-object v7, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mSampleMimeType:Ljava/lang/String;

    iget-object v8, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mCodecName:Ljava/lang/String;

    iget v9, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBitrate:I

    iget-wide v10, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mTimeSinceCreatedMillis:J

    iget v12, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mType:I

    iget-object v13, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mLanguage:Ljava/lang/String;

    iget-object v14, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mLanguageRegion:Ljava/lang/String;

    iget v15, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mChannelCount:I

    iget v2, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mAudioSampleRate:I

    move/from16 v16, v2

    iget v2, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mWidth:I

    move/from16 v17, v2

    iget v2, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mHeight:I

    move/from16 v18, v2

    iget v2, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mVideoFrameRate:F

    move/from16 v19, v2

    iget-object v2, v0, Landroid/media/metrics/TrackChangeEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    move-object/from16 v20, v2

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Landroid/media/metrics/TrackChangeEvent;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;IIIIFLandroid/os/Bundle;Landroid/media/metrics/TrackChangeEvent-IA;)V

    return-object v1
.end method

.method public setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mAudioSampleRate:I

    return-object p0
.end method

.method public setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBitrate:I

    return-object p0
.end method

.method public setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mChannelCount:I

    return-object p0
.end method

.method public setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mCodecName:Ljava/lang/String;

    return-object p0
.end method

.method public setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mContainerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mHeight:I

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mLanguageRegion:Ljava/lang/String;

    return-object p0
.end method

.method public setMetricsBundle(Landroid/os/Bundle;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mMetricsBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mSampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 7

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput-wide p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mTimeSinceCreatedMillis:J

    return-object p0
.end method

.method public setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mReason:I

    return-object p0
.end method

.method public setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mState:I

    return-object p0
.end method

.method public setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 2

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mVideoFrameRate:F

    return-object p0
.end method

.method public setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/media/metrics/TrackChangeEvent$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/media/metrics/TrackChangeEvent$Builder;->mWidth:I

    return-object p0
.end method
