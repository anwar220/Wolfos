# classes3.dex

.class public final Landroid/os/VibratorInfo$FrequencyProfile;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequencyProfile"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo$FrequencyProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFrequencyRangeHz:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrequencyResolutionHz:F

.field private final mMaxAmplitudes:[F

.field private final mMinFrequencyHz:F

.field private final mResonantFrequencyHz:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F
    .registers 1

    iget p0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/VibratorInfo$FrequencyProfile$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$FrequencyProfile$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFF[F)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    iput p1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    iput p3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    const/4 v0, 0x0

    if-nez p4, :cond_e

    move v1, v0

    goto :goto_f

    :cond_e
    array-length v1, p4

    :goto_f
    new-array v1, v1, [F

    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    if-eqz p4, :cond_19

    array-length v2, p4

    invoke-static {p4, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_3e

    cmpl-float v2, p1, v3

    if-lez v2, :cond_3e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3e

    cmpl-float v2, p2, v3

    if-lez v2, :cond_3e

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3e

    cmpl-float v2, p3, v3

    if-lez v2, :cond_3e

    array-length v1, v1

    if-lez v1, :cond_3e

    move v1, v4

    goto :goto_3f

    :cond_3e
    move v1, v0

    :goto_3f
    const/4 v2, 0x0

    :goto_40
    iget-object v5, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v6, v5

    if-ge v2, v6, :cond_58

    aget v5, v5, v2

    cmpl-float v6, v5, v3

    if-ltz v6, :cond_53

    const/high16 v6, 0x3f800000  # 1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_53

    move v5, v4

    goto :goto_54

    :cond_53
    move v5, v0

    :goto_54
    and-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_58
    if-eqz v1, :cond_60

    array-length v2, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v2, p2

    goto :goto_62

    :cond_60
    const/high16 v2, 0x7fc00000  # Float.NaN

    :goto_62
    nop

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_76

    cmpl-float v3, p1, p2

    if-ltz v3, :cond_76

    cmpg-float v3, p1, v2

    if-gtz v3, :cond_76

    cmpg-float v3, p2, v2

    if-gez v3, :cond_76

    move v0, v4

    :cond_76
    and-int/2addr v0, v1

    if-eqz v0, :cond_86

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    goto :goto_87

    :cond_86
    const/4 v1, 0x0

    :goto_87
    iput-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

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
    instance-of v1, p1, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/os/VibratorInfo$FrequencyProfile;

    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_36

    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_36

    iget v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    iget v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_36

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    iget-object v4, v1, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    return v0
.end method

.method public getFrequencyRangeHz()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    return-object v0
.end method

.method public getFrequencyResolutionHz()F
    .registers 2

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    return v0
.end method

.method public getMaxAmplitude(F)F
    .registers 10

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_4d

    :cond_19
    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    sub-float v0, p1, v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    div-float v1, v0, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    iget-object v3, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    aget v4, v3, v1

    aget v3, v3, v2

    int-to-float v5, v1

    iget v6, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    mul-float/2addr v5, v6

    int-to-float v7, v2

    mul-float/2addr v7, v6

    invoke-static {v4, v3, v5, v7, v0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v3

    return v3

    :cond_4d
    :goto_4d
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxAmplitudes()[F
    .registers 3

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrequencyProfile{mFrequencyRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyRangeHz:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResonantFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxAmplitudes count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mResonantFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMinFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mFrequencyResolutionHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/os/VibratorInfo$FrequencyProfile;->mMaxAmplitudes:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    return-void
.end method
