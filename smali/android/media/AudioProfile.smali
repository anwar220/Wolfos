# classes2.dex

.class public Landroid/media/AudioProfile;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioProfile$EncapsulationType;
    }
.end annotation


# static fields
.field public static final AUDIO_ENCAPSULATION_TYPE_IEC61937:I = 0x1

.field public static final AUDIO_ENCAPSULATION_TYPE_NONE:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannelIndexMasks:[I

.field private final mChannelMasks:[I

.field private final mEncapsulationType:I

.field private final mFormat:I

.field private final mSamplingRates:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/AudioProfile$1;

    invoke-direct {v0}, Landroid/media/AudioProfile$1;-><init>()V

    sput-object v0, Landroid/media/AudioProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[I[I[II)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioProfile;->mFormat:I

    iput-object p2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    iput-object p3, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    iput-object p4, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    iput p5, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static hasIdenticalElements([I[I)Z
    .registers 5

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    return v2
.end method

.method static synthetic lambda$toHexString$0(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "0x%02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toHexString([I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_20

    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/media/AudioProfile$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/AudioProfile$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_20
    :goto_20
    const-string v0, ""

    return-object v0
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

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_42

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioProfile;

    iget v3, p0, Landroid/media/AudioProfile;->mFormat:I

    iget v4, v2, Landroid/media/AudioProfile;->mFormat:I

    if-ne v3, v4, :cond_40

    iget-object v3, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    iget-object v4, v2, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v3, v4}, Landroid/media/AudioProfile;->hasIdenticalElements([I[I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget v3, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    iget v4, v2, Landroid/media/AudioProfile;->mEncapsulationType:I

    if-ne v3, v4, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    :goto_41
    return v0

    :cond_42
    :goto_42
    return v1
.end method

.method public getChannelIndexMasks()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    return-object v0
.end method

.method public getChannelMasks()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    return-object v0
.end method

.method public getEncapsulationType()I
    .registers 2

    iget v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    return v0
.end method

.method public getFormat()I
    .registers 2

    iget v0, p0, Landroid/media/AudioProfile;->mFormat:I

    return v0
.end method

.method public getSampleRates()[I
    .registers 2

    iget-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    if-eqz v1, :cond_26

    array-length v1, v1

    if-lez v1, :cond_26

    const-string v1, ", sampling rates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    if-eqz v1, :cond_3c

    array-length v1, v1

    if-lez v1, :cond_3c

    const-string v1, ", channel masks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-static {v2}, Landroid/media/AudioProfile;->toHexString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    iget-object v1, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    if-eqz v1, :cond_52

    array-length v1, v1

    if-lez v1, :cond_52

    const-string v1, ", channel index masks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", encapsulation type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/AudioProfile;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/AudioProfile;->mSamplingRates:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelMasks:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/media/AudioProfile;->mChannelIndexMasks:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/media/AudioProfile;->mEncapsulationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
