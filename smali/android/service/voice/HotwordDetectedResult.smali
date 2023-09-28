# classes3.dex

.class public final Landroid/service/voice/HotwordDetectedResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectedResult$Builder;,
        Landroid/service/voice/HotwordDetectedResult$Limit;,
        Landroid/service/voice/HotwordDetectedResult$ConfidenceLevel;,
        Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;
    }
.end annotation


# static fields
.field public static final AUDIO_CHANNEL_UNSET:I = -0x1

.field public static final CONFIDENCE_LEVEL_HIGH:I = 0x5

.field public static final CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final CONFIDENCE_LEVEL_LOW_MEDIUM:I = 0x2

.field public static final CONFIDENCE_LEVEL_MEDIUM:I = 0x3

.field public static final CONFIDENCE_LEVEL_MEDIUM_HIGH:I = 0x4

.field public static final CONFIDENCE_LEVEL_NONE:I = 0x0

.field public static final CONFIDENCE_LEVEL_VERY_HIGH:I = 0x6

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordDetectedResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOTWORD_OFFSET_UNSET:I = -0x1

.field private static final LIMIT_AUDIO_CHANNEL_MAX_VALUE:I = 0x3f

.field private static final LIMIT_HOTWORD_OFFSET_MAX_VALUE:I = 0x36ee80

.field private static sMaxBundleSize:I


# instance fields
.field private mAudioChannel:I

.field private final mConfidenceLevel:I

.field private final mExtras:Landroid/os/PersistableBundle;

.field private mHotwordDetectionPersonalized:Z

.field private mHotwordDurationMillis:I

.field private mHotwordOffsetMillis:I

.field private final mHotwordPhraseId:I

.field private mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private final mPersonalizedScore:I

.field private final mScore:I


# direct methods
.method static bridge synthetic -$$Nest$smdefaultConfidenceLevel()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdefaultHotwordPhraseId()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultHotwordPhraseId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smdefaultPersonalizedScore()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultPersonalizedScore()I

    move-result v0

    return v0
.end method

.method static bridge synthetic -$$Nest$smdefaultScore()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultScore()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    new-instance v0, Landroid/service/voice/HotwordDetectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordDetectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/media/MediaSyncEvent;IIIZIIILandroid/os/PersistableBundle;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iput v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iput-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    iput p1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    const-class v1, Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object p2, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iput p3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    iput p4, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iput p5, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iput-boolean p6, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    iput p7, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    iput p8, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    iput p9, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    iput-object p10, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult;->onConstructed()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iput v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iput-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_19

    const/4 v2, 0x1

    :cond_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_23

    move-object v4, v0

    goto :goto_2b

    :cond_23
    sget-object v4, Landroid/media/MediaSyncEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaSyncEvent;

    :goto_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    sget-object v11, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersistableBundle;

    iput v3, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    const-class v12, Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;

    invoke-static {v12, v0, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-object v4, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iput v5, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    iput v6, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iput v7, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iput-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    iput v8, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    iput v9, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    iput v10, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    iput-object v11, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-class v12, Landroid/annotation/NonNull;

    invoke-static {v12, v0, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult;->onConstructed()V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static bitCount(J)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_c

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    shr-long/2addr p0, v1

    goto :goto_1

    :cond_c
    return v0
.end method

.method public static confidenceLevelToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1e

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8  #0x6
    const-string v0, "CONFIDENCE_LEVEL_VERY_HIGH"

    return-object v0

    :pswitch_b  #0x5
    const-string v0, "CONFIDENCE_LEVEL_HIGH"

    return-object v0

    :pswitch_e  #0x4
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM_HIGH"

    return-object v0

    :pswitch_11  #0x3
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object v0

    :pswitch_14  #0x2
    const-string v0, "CONFIDENCE_LEVEL_LOW_MEDIUM"

    return-object v0

    :pswitch_17  #0x1
    const-string v0, "CONFIDENCE_LEVEL_LOW"

    return-object v0

    :pswitch_1a  #0x0
    const-string v0, "CONFIDENCE_LEVEL_NONE"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_17  #00000001
        :pswitch_14  #00000002
        :pswitch_11  #00000003
        :pswitch_e  #00000004
        :pswitch_b  #00000005
        :pswitch_8  #00000006
    .end packed-switch
.end method

.method private static defaultConfidenceLevel()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static defaultExtras()Landroid/os/PersistableBundle;
    .registers 1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    return-object v0
.end method

.method private static defaultHotwordPhraseId()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static defaultPersonalizedScore()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method private static defaultScore()I
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getMaxBundleSize()I
    .registers 2

    sget v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    if-gez v0, :cond_11

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    :cond_11
    sget v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    return v0
.end method

.method public static getMaxHotwordPhraseId()I
    .registers 1

    const/16 v0, 0x3f

    return v0
.end method

.method public static getMaxScore()I
    .registers 1

    const/16 v0, 0xff

    return v0
.end method

.method public static getParcelableSize(Landroid/os/Parcelable;)I
    .registers 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public static getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getConfidenceLevel()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultConfidenceLevel()I

    move-result v2

    if-eq v1, v2, :cond_12

    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordOffsetMillis()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    const-wide/32 v3, 0x36ee80

    invoke-static {v3, v4}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_21
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordDurationMillis()I

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Landroid/media/AudioRecord;->getMaxSharedAudioHistoryMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getAudioChannel()I

    move-result v1

    if-eq v1, v2, :cond_3d

    const-wide/16 v1, 0x3f

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getScore()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultScore()I

    move-result v2

    if-eq v1, v2, :cond_53

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_53
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getPersonalizedScore()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultPersonalizedScore()I

    move-result v2

    if-eq v1, v2, :cond_67

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_67
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordPhraseId()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultHotwordPhraseId()I

    move-result v2

    if-eq v1, v2, :cond_7b

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxHotwordPhraseId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7b
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8c

    invoke-static {v1}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    :cond_8c
    return v0
.end method

.method static limitToString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_e

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string v0, "LIMIT_HOTWORD_OFFSET_MAX_VALUE"

    return-object v0

    :sswitch_b
    const-string v0, "LIMIT_AUDIO_CHANNEL_MAX_VALUE"

    return-object v0

    :sswitch_data_e
    .sparse-switch
        0x3f -> :sswitch_b
        0x36ee80 -> :sswitch_8
    .end sparse-switch
.end method

.method private onConstructed()V
    .registers 11

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "score"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    const-string/jumbo v3, "personalizedScore"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxHotwordPhraseId()I

    move-result v1

    const-string/jumbo v3, "hotwordPhraseId"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    int-to-long v3, v0

    invoke-static {}, Landroid/media/AudioRecord;->getMaxSharedAudioHistoryMillis()J

    move-result-wide v7

    const-wide/16 v5, 0x0

    const-string/jumbo v9, "hotwordDurationMillis"

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_42

    const v3, 0x36ee80

    const-string/jumbo v4, "hotwordOffsetMillis"

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_42
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x3f

    const-string v3, "audioChannel"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_4d
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v0

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v1

    const-string v3, "extras"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    :cond_64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/HotwordDetectedResult;

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    if-ne v3, v4, :cond_5a

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    if-ne v3, v4, :cond_5a

    iget-boolean v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    iget-boolean v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    if-ne v3, v4, :cond_5a

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v1

    :goto_5b
    return v0

    :cond_5c
    :goto_5c
    return v1
.end method

.method public getAudioChannel()I
    .registers 2

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    return v0
.end method

.method public getConfidenceLevel()I
    .registers 2

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getHotwordDurationMillis()I
    .registers 2

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    return v0
.end method

.method public getHotwordOffsetMillis()I
    .registers 2

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    return v0
.end method

.method public getHotwordPhraseId()I
    .registers 2

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    return v0
.end method

.method public getMediaSyncEvent()Landroid/media/MediaSyncEvent;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    return-object v0
.end method

.method public getPersonalizedScore()I
    .registers 2

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    return v0
.end method

.method public getScore()I
    .registers 2

    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public isHotwordDetectionPersonalized()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordDetectedResult { confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaSyncEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordOffsetMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordDetectionPersonalized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", personalizedScore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordPhraseId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    :cond_7
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    if-eqz v1, :cond_1c

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_1c
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
