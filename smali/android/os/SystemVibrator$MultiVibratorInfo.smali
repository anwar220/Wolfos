# classes3.dex

.class public Landroid/os/SystemVibrator$MultiVibratorInfo;
.super Landroid/os/VibratorInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiVibratorInfo"
.end annotation


# static fields
.field private static final EPSILON:F = 1.0E-5f


# direct methods
.method public constructor <init>([Landroid/os/VibratorInfo;)V
    .registers 16

    nop

    invoke-static {p1}, Landroid/os/SystemVibrator$MultiVibratorInfo;->capabilitiesIntersection([Landroid/os/VibratorInfo;)I

    move-result v0

    int-to-long v3, v0

    invoke-static {p1}, Landroid/os/SystemVibrator$MultiVibratorInfo;->supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-static {p1}, Landroid/os/SystemVibrator$MultiVibratorInfo;->supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;

    move-result-object v6

    invoke-static {p1}, Landroid/os/SystemVibrator$MultiVibratorInfo;->supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;

    move-result-object v7

    new-instance v0, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroid/os/SystemVibrator$MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v8

    new-instance v0, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0}, Landroid/os/SystemVibrator$MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v9

    new-instance v0, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, v0}, Landroid/os/SystemVibrator$MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v10

    new-instance v0, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, v0}, Landroid/os/SystemVibrator$MultiVibratorInfo;->integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I

    move-result v11

    new-instance v0, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, v0}, Landroid/os/SystemVibrator$MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v12

    invoke-static {p1}, Landroid/os/SystemVibrator$MultiVibratorInfo;->frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v13

    const/4 v2, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfile;)V

    return-void
.end method

.method private static capabilitiesIntersection([Landroid/os/VibratorInfo;)I
    .registers 9

    const/4 v0, -0x1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    int-to-long v4, v0

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->getCapabilities()J

    move-result-wide v6

    and-long/2addr v4, v6

    long-to-int v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_11
    return v0
.end method

.method private static floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    const/high16 v2, 0x7fc00000  # Float.NaN

    if-eqz v1, :cond_16

    return v2

    :cond_16
    const/4 v1, 0x1

    :goto_17
    array-length v3, p0

    if-ge v1, v3, :cond_30

    aget-object v3, p0, v1

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2d

    return v2

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_30
    return v0
.end method

.method private static frequencyProfileIntersection([Landroid/os/VibratorInfo;)Landroid/os/VibratorInfo$FrequencyProfile;
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Landroid/os/SystemVibrator$MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v1

    new-instance v2, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/os/SystemVibrator$MultiVibratorInfo$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v2}, Landroid/os/SystemVibrator$MultiVibratorInfo;->floatPropertyIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)F

    move-result v2

    invoke-static {v0, v1}, Landroid/os/SystemVibrator$MultiVibratorInfo;->frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;

    move-result-object v3

    if-eqz v3, :cond_d7

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_22

    goto/16 :goto_d7

    :cond_22
    const/high16 v6, 0x3f800000  # 1.0f

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v1

    add-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    new-array v7, v6, [F

    const v8, 0x7f7fffff  # Float.MAX_VALUE

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([FF)V

    array-length v8, v0

    const/4 v9, 0x0

    :goto_49
    if-ge v9, v8, :cond_c7

    aget-object v10, v0, v9

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxAmplitudes()[F

    move-result-object v12

    nop

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v11}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float/2addr v13, v14

    div-float/2addr v13, v1

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    array-length v14, v7

    add-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    if-ltz v13, :cond_98

    array-length v15, v12

    if-lt v14, v15, :cond_82

    goto :goto_98

    :cond_82
    const/4 v15, 0x0

    :goto_83
    array-length v4, v7

    if-ge v15, v4, :cond_95

    aget v4, v7, v15

    add-int v16, v13, v15

    aget v5, v12, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_83

    :cond_95
    add-int/lit8 v9, v9, 0x1

    goto :goto_49

    :cond_98
    :goto_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error calculating the intersection of vibrator frequency profiles: attempted to fetch from vibrator "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/os/VibratorInfo;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " max amplitude with bad index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Vibrator"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v5, 0x0

    const/high16 v8, 0x7fc00000  # Float.NaN

    invoke-direct {v4, v2, v8, v8, v5}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

    return-object v4

    :cond_c7
    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {v4, v2, v5, v1, v7}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

    return-object v4

    :cond_d7
    :goto_d7
    new-instance v4, Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v5, 0x0

    const/high16 v6, 0x7fc00000  # Float.NaN

    invoke-direct {v4, v2, v6, v1, v5}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(FFF[F)V

    return-object v4
.end method

.method private static frequencyRangeIntersection([Landroid/os/VibratorInfo;F)Landroid/util/Range;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "F)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    :goto_24
    array-length v5, p0

    if-ge v4, v5, :cond_8b

    aget-object v5, p0, v4

    invoke-virtual {v5}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v5

    if-nez v5, :cond_34

    return-object v1

    :cond_34
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v6, v3

    if-gez v6, :cond_8a

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_51

    goto :goto_8a

    :cond_51
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    rem-float v7, v6, p1

    const v8, 0x3727c5ac  # 1.0E-5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6b

    return-object v1

    :cond_6b
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_8a
    :goto_8a
    return-object v1

    :cond_8b
    sub-float v4, v3, v2

    cmpg-float v4, v4, p1

    if-gez v4, :cond_92

    return-object v1

    :cond_92
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v1

    return-object v1
.end method

.method private static integerLimitIntersection([Landroid/os/VibratorInfo;Ljava/util/function/Function;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/VibratorInfo;",
            "Ljava/util/function/Function<",
            "Landroid/os/VibratorInfo;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_1b

    aget-object v3, p0, v2

    invoke-interface {p1, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v0, :cond_17

    if-lez v4, :cond_18

    if-ge v4, v0, :cond_18

    :cond_17
    move v0, v4

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1b
    return v0
.end method

.method static synthetic lambda$frequencyProfileIntersection$0(Landroid/os/VibratorInfo;)Ljava/lang/Float;
    .registers 2

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getFrequencyResolutionHz()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private static supportedBrakingIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .registers 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isBrakingSupportKnown()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedBraking()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_43

    :cond_2f
    const/4 v4, 0x1

    :goto_30
    array-length v5, p0

    if-ge v4, v5, :cond_3f

    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Landroid/os/VibratorInfo;->hasBrakingSupport(I)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_43

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_3f
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_46
    return-object v0
.end method

.method private static supportedEffectsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseBooleanArray;
    .registers 8

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/os/VibratorInfo;->isEffectSupportKnown()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedEffects()Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1e
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_43

    :cond_2f
    const/4 v4, 0x1

    :goto_30
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_40

    aget-object v5, p0, v4

    invoke-virtual {v5, v3}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v5

    if-eq v5, v6, :cond_3d

    goto :goto_43

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_40
    invoke-virtual {v0, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_46
    return-object v0
.end method

.method private static supportedPrimitivesAndDurationsIntersection([Landroid/os/VibratorInfo;)Landroid/util/SparseIntArray;
    .registers 8

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/os/VibratorInfo;->getSupportedPrimitives()Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 v5, 0x1

    :goto_1f
    array-length v6, p0

    if-ge v5, v6, :cond_32

    aget-object v6, p0, v5

    invoke-virtual {v6, v3}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_35

    :cond_2b
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_32
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_38
    return-object v0
.end method
