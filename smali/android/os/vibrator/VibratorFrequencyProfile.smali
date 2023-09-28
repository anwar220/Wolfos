# classes3.dex

.class public final Landroid/os/vibrator/VibratorFrequencyProfile;
.super Ljava/lang/Object;


# instance fields
.field private final mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;


# direct methods
.method public constructor <init>(Landroid/os/VibratorInfo$FrequencyProfile;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Frequency profile must have a non-empty frequency range"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    return-void
.end method


# virtual methods
.method public getMaxAmplitudeMeasurementInterval()F
    .registers 2

    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyResolutionHz()F

    move-result v0

    return v0
.end method

.method public getMaxAmplitudeMeasurements()[F
    .registers 2

    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxAmplitudes()[F

    move-result-object v0

    return-object v0
.end method

.method public getMaxFrequency()F
    .registers 2

    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinFrequency()F
    .registers 2

    iget-object v0, p0, Landroid/os/vibrator/VibratorFrequencyProfile;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
