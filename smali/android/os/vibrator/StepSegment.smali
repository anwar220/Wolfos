# classes3.dex

.class public final Landroid/os/vibrator/StepSegment;
.super Landroid/os/vibrator/VibrationEffectSegment;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/vibrator/StepSegment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAmplitude:F

.field private final mDuration:I

.field private final mFrequencyHz:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/vibrator/StepSegment$1;

    invoke-direct {v0}, Landroid/os/vibrator/StepSegment$1;-><init>()V

    sput-object v0, Landroid/os/vibrator/StepSegment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFI)V
    .registers 4

    invoke-direct {p0}, Landroid/os/vibrator/VibrationEffectSegment;-><init>()V

    iput p1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    iput p2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iput p3, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-void
.end method


# virtual methods
.method public applyEffectStrength(I)Landroid/os/vibrator/StepSegment;
    .registers 2

    return-object p0
.end method

.method public bridge synthetic applyEffectStrength(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->applyEffectStrength(I)Landroid/os/vibrator/StepSegment;

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

    instance-of v0, p1, Landroid/os/vibrator/StepSegment;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/vibrator/StepSegment;

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    iget v3, v0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_25

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget v3, v0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_25

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    iget v3, v0, Landroid/os/vibrator/StepSegment;->mDuration:I

    if-ne v2, v3, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    nop

    :goto_26
    return v1
.end method

.method public getAmplitude()F
    .registers 2

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    return v0
.end method

.method public getDuration()J
    .registers 3

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFrequencyHz()F
    .registers 2

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    return v0
.end method

.method public hasNonZeroAmplitude()Z
    .registers 3

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

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

.method public resolve(I)Landroid/os/vibrator/StepSegment;
    .registers 6

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1f

    if-lez p1, :cond_1f

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000  # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_11

    return-object p0

    :cond_11
    new-instance v0, Landroid/os/vibrator/StepSegment;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget v3, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-direct {v0, v1, v2, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "amplitude must be between 1 and 255 inclusive (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic resolve(I)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->resolve(I)Landroid/os/vibrator/StepSegment;

    move-result-object p1

    return-object p1
.end method

.method public scale(F)Landroid/os/vibrator/StepSegment;
    .registers 6

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000  # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_b

    return-object p0

    :cond_b
    new-instance v0, Landroid/os/vibrator/StepSegment;

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-static {v1, p1}, Landroid/os/VibrationEffect;->scale(FF)F

    move-result v1

    iget v2, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    iget v3, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-direct {v0, v1, v2, v3}, Landroid/os/vibrator/StepSegment;-><init>(FFI)V

    return-object v0
.end method

.method public bridge synthetic scale(F)Landroid/os/vibrator/VibrationEffectSegment;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/os/vibrator/StepSegment;->scale(F)Landroid/os/vibrator/StepSegment;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Step{amplitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

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

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    const-string v1, "frequencyHz"

    invoke-static {v0, v1}, Landroid/os/vibrator/VibrationEffectSegment;->checkFrequencyArgument(FLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    int-to-long v0, v0

    const-string v2, "duration"

    invoke-static {v0, v1, v2}, Landroid/os/vibrator/VibrationEffectSegment;->checkDurationArgument(JLjava/lang/String;)V

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/high16 v1, -0x40800000  # -1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const-string v3, "amplitude"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    :cond_23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mAmplitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/os/vibrator/StepSegment;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
