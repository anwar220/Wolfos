# classes3.dex

.class public final Landroid/service/voice/HotwordDetectedResult$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordDetectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioChannel:I

.field private mBuilderFieldsSet:J

.field private mConfidenceLevel:I

.field private mExtras:Landroid/os/PersistableBundle;

.field private mHotwordDetectionPersonalized:Z

.field private mHotwordDurationMillis:I

.field private mHotwordOffsetMillis:I

.field private mHotwordPhraseId:I

.field private mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private mPersonalizedScore:I

.field private mScore:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x400

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
.method public build()Landroid/service/voice/HotwordDetectedResult;
    .registers 13

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    :cond_19
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_25

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    :cond_25
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    const/4 v5, -0x1

    if-nez v4, :cond_2f

    iput v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    :cond_2f
    const-wide/16 v6, 0x8

    and-long/2addr v6, v0

    cmp-long v4, v6, v2

    const/4 v6, 0x0

    if-nez v4, :cond_39

    iput v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    :cond_39
    const-wide/16 v7, 0x10

    and-long/2addr v7, v0

    cmp-long v4, v7, v2

    if-nez v4, :cond_42

    iput v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    :cond_42
    const-wide/16 v4, 0x20

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-nez v4, :cond_4b

    iput-boolean v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    :cond_4b
    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_58

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    :cond_58
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_67

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultPersonalizedScore()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    :cond_67
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x100

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_76

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultHotwordPhraseId()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    :cond_76
    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x200

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_85

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->-$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    :cond_85
    new-instance v0, Landroid/service/voice/HotwordDetectedResult;

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget v4, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    iget v5, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    iget v6, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    iget-boolean v7, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    iget v8, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    iget v9, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    iget v10, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    iget-object v11, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroid/service/voice/HotwordDetectedResult;-><init>(ILandroid/media/MediaSyncEvent;IIIZIIILandroid/os/PersistableBundle;)V

    return-object v0
.end method

.method public setAudioChannel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mAudioChannel:I

    return-object p0
.end method

.method public setConfidenceLevel(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mConfidenceLevel:I

    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public setHotwordDetectionPersonalized(Z)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDetectionPersonalized:Z

    return-object p0
.end method

.method public setHotwordDurationMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordDurationMillis:I

    return-object p0
.end method

.method public setHotwordOffsetMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordOffsetMillis:I

    return-object p0
.end method

.method public setHotwordPhraseId(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mHotwordPhraseId:I

    return-object p0
.end method

.method public setMediaSyncEvent(Landroid/media/MediaSyncEvent;)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    return-object p0
.end method

.method public setPersonalizedScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mPersonalizedScore:I

    return-object p0
.end method

.method public setScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult$Builder;->mScore:I

    return-object p0
.end method
