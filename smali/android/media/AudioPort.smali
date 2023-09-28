# classes2.dex

.class public Landroid/media/AudioPort;
.super Ljava/lang/Object;


# static fields
.field public static final ROLE_NONE:I = 0x0

.field public static final ROLE_SINK:I = 0x2

.field public static final ROLE_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPort"

.field public static final TYPE_DEVICE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SESSION:I = 0x3

.field public static final TYPE_SUBMIX:I = 0x2


# instance fields
.field private mActiveConfig:Landroid/media/AudioPortConfig;

.field private final mChannelIndexMasks:[I

.field private final mChannelMasks:[I

.field private final mDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mFormats:[I

.field private final mGains:[Landroid/media/AudioGain;

.field mHandle:Landroid/media/AudioHandle;

.field private final mName:Ljava/lang/String;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRole:I

.field private final mSamplingRates:[I


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;ILjava/lang/String;Ljava/util/List;[Landroid/media/AudioGain;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioHandle;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;[",
            "Landroid/media/AudioGain;",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    iput p2, p0, Landroid/media/AudioPort;->mRole:I

    iput-object p3, p0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/AudioPort;->mProfiles:Ljava/util/List;

    iput-object p6, p0, Landroid/media/AudioPort;->mDescriptors:Ljava/util/List;

    iput-object p5, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioProfile;

    invoke-virtual {v5}, Landroid/media/AudioProfile;->getFormat()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/media/AudioProfile;->getSampleRates()[I

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Landroid/media/AudioProfile;->getChannelMasks()[I

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Landroid/media/AudioProfile;->getChannelIndexMasks()[I

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_27

    :cond_8a
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/media/AudioPort$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/media/AudioPort$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    iput-object v4, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/media/AudioPort$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/media/AudioPort$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    iput-object v4, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/media/AudioPort$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/media/AudioPort$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    iput-object v4, p0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Landroid/media/AudioPort$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/media/AudioPort$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    iput-object v4, p0, Landroid/media/AudioPort;->mFormats:[I

    return-void
.end method

.method constructor <init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    move/from16 v3, p2

    iput v3, v0, Landroid/media/AudioPort;->mRole:I

    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    move-object/from16 v11, p4

    iput-object v11, v0, Landroid/media/AudioPort;->mSamplingRates:[I

    move-object/from16 v12, p5

    iput-object v12, v0, Landroid/media/AudioPort;->mChannelMasks:[I

    move-object/from16 v13, p6

    iput-object v13, v0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    iput-object v1, v0, Landroid/media/AudioPort;->mFormats:[I

    move-object/from16 v14, p8

    iput-object v14, v0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Landroid/media/AudioPort;->mProfiles:Ljava/util/List;

    if-eqz v1, :cond_58

    array-length v15, v1

    const/4 v5, 0x0

    move v10, v5

    :goto_31
    if-ge v10, v15, :cond_58

    aget v16, v1, v10

    iget-object v9, v0, Landroid/media/AudioPort;->mProfiles:Ljava/util/List;

    new-instance v8, Landroid/media/AudioProfile;

    const/16 v17, 0x0

    move-object v5, v8

    move/from16 v6, v16

    move-object/from16 v7, p4

    move-object/from16 v18, v8

    move-object/from16 v8, p5

    move-object v1, v9

    move-object/from16 v9, p6

    move/from16 v19, v10

    move/from16 v10, v17

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioProfile;-><init>(I[I[I[II)V

    move-object/from16 v5, v18

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v19, 0x1

    move-object/from16 v1, p7

    goto :goto_31

    :cond_58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/media/AudioPort;->mDescriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public activeConfig()Landroid/media/AudioPortConfig;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mActiveConfig:Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public audioDescriptors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPort;->mDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .registers 12

    new-instance v6, Landroid/media/AudioPortConfig;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    return-object v6
.end method

.method public channelIndexMasks()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    return-object v0
.end method

.method public channelMasks()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-eqz p1, :cond_15

    instance-of v0, p1, Landroid/media/AudioPort;

    if-nez v0, :cond_7

    goto :goto_15

    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/media/AudioPort;

    iget-object v1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public formats()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mFormats:[I

    return-object v0
.end method

.method gain(I)Landroid/media/AudioGain;
    .registers 4

    if-ltz p1, :cond_b

    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    :cond_8
    aget-object v0, v0, p1

    return-object v0

    :cond_b
    :goto_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public gains()[Landroid/media/AudioGain;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    return-object v0
.end method

.method handle()Landroid/media/AudioHandle;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioHandle;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public profiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/AudioPort;->mProfiles:Ljava/util/List;

    return-object v0
.end method

.method public role()I
    .registers 2

    iget v0, p0, Landroid/media/AudioPort;->mRole:I

    return v0
.end method

.method public samplingRates()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Landroid/media/AudioPort;->mRole:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioPort;->mRole:I

    packed-switch v1, :pswitch_data_3c

    goto :goto_15

    :pswitch_c  #0x2
    const-string v0, "SINK"

    goto :goto_15

    :pswitch_f  #0x1
    const-string v0, "SOURCE"

    goto :goto_15

    :pswitch_12  #0x0
    const-string v0, "NONE"

    nop

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{mHandle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRole: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_f  #00000001
        :pswitch_c  #00000002
    .end packed-switch
.end method
