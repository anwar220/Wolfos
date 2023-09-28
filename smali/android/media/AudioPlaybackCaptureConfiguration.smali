# classes2.dex

.class public final Landroid/media/AudioPlaybackCaptureConfiguration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPlaybackCaptureConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final mAudioMixingRule:Landroid/media/audiopolicy/AudioMixingRule;

.field private final mProjection:Landroid/media/projection/MediaProjection;


# direct methods
.method private constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/projection/MediaProjection;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mAudioMixingRule:Landroid/media/audiopolicy/AudioMixingRule;

    iput-object p2, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mProjection:Landroid/media/projection/MediaProjection;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/projection/MediaProjection;Landroid/media/AudioPlaybackCaptureConfiguration-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/AudioPlaybackCaptureConfiguration;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/projection/MediaProjection;)V

    return-void
.end method

.method private getIntPredicates(ILjava/util/function/ToIntFunction;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/ToIntFunction<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;)[I"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mAudioMixingRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getExcludeUids$3(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)I
    .registers 2

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getIntProp()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getExcludeUsages$2(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)I
    .registers 2

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getIntPredicates$4(ILandroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getRule()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic lambda$getMatchingUids$1(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)I
    .registers 2

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getIntProp()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMatchingUsages$0(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)I
    .registers 2

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0
.end method


# virtual methods
.method createAudioMix(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix;
    .registers 4

    new-instance v0, Landroid/media/audiopolicy/AudioMix$Builder;

    iget-object v1, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mAudioMixingRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-direct {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v0

    return-object v0
.end method

.method public getExcludeUids()[I
    .registers 3

    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda4;-><init>()V

    const v1, 0x8004

    invoke-direct {p0, v1, v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getIntPredicates(ILjava/util/function/ToIntFunction;)[I

    move-result-object v0

    return-object v0
.end method

.method public getExcludeUsages()[I
    .registers 3

    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda2;-><init>()V

    const v1, 0x8001

    invoke-direct {p0, v1, v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getIntPredicates(ILjava/util/function/ToIntFunction;)[I

    move-result-object v0

    return-object v0
.end method

.method public getMatchingUids()[I
    .registers 3

    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getIntPredicates(ILjava/util/function/ToIntFunction;)[I

    move-result-object v0

    return-object v0
.end method

.method public getMatchingUsages()[I
    .registers 3

    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda3;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getIntPredicates(ILjava/util/function/ToIntFunction;)[I

    move-result-object v0

    return-object v0
.end method

.method public getMediaProjection()Landroid/media/projection/MediaProjection;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method
