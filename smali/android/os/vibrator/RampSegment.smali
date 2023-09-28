# classes3.dex

.class public final Landroid/os/vibrator/RampSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/RampSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:I

.field private final mEndAmplitude:F

.field private final mEndFrequencyHz:F

.field private final mStartAmplitude:F

.field private final mStartFrequencyHz:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/vibrator/RampSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/RampSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/RampSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFFI)V
    .registers 6

    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    iput p1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    iput p2, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    iput p3, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iput p4, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iput p5, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-void
.end method


# virtual methods
.method public applyEffectStrength(I)Landroid/os/vibrator/RampSegment;
    .registers 2

    return-object p0
.end method

.method public bridge synthetic applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->applyEffectStrength(I)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/os/vibrator/RampSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/RampSegment;

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_39

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_39

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_39

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_39

    iget v2, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    iget v3, v0, Landroid/os/vibrator/RampSegment;->mDuration:I

    if-ne v2, v3, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    nop

    :goto_3a
    return v1
.end method

.method public getDuration()J
    .registers 3

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getEndAmplitude()F
    .registers 2

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    return v0
.end method

.method public getEndFrequencyHz()F
    .registers 2

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    return v0
.end method

.method public getStartAmplitude()F
    .registers 2

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    return v0
.end method

.method public getStartFrequencyHz()F
    .registers 2

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    return v0
.end method

.method public hasNonZeroAmplitude()Z
    .registers 3

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_10

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isHapticFeedbackCandidate()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public resolve(I)Landroid/os/vibrator/RampSegment;
    .registers 2

    return-object p0
.end method

.method public bridge synthetic resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->resolve(I)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public scale(F)Landroid/os/vibrator/RampSegment;
    .registers 11

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v0, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v7

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1d

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-static {v1, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1d

    return-object p0

    :cond_1d
    new-instance v8, Landroid/os/vibrator/RampSegment;

    iget v4, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    iget v5, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    iget v6, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    move-object v1, v8

    move v2, v0

    move v3, v7

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v8
.end method

.method public bridge synthetic scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/vibrator/RampSegment;->scale(F)Landroid/os/vibrator/RampSegment;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ramp{startAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endAmplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .registers 5

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    const-string/jumbo v1, "startFrequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    const-string v1, "endFrequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    int-to-long v0, v0

    const-string v2, "duration"

    invoke-static {v0, v1, v2}, Landroid/os/vibrator/VibrationEffectSegment;->checkDurationArgument(JLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const-string/jumbo v3, "startAmplitude"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    const-string v3, "endAmplitude"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartAmplitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndAmplitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mStartFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mEndFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/RampSegment;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
