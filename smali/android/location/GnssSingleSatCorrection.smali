# classes2.dex

.class public final Landroid/location/GnssSingleSatCorrection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssSingleSatCorrection$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_COMBINED_ATTENUATION_MASK:I = 0x10

.field private static final HAS_COMBINED_EXCESS_PATH_LENGTH_MASK:I = 0x2

.field private static final HAS_COMBINED_EXCESS_PATH_LENGTH_UNC_MASK:I = 0x4

.field private static final HAS_PROB_SAT_IS_LOS_MASK:I = 0x1


# instance fields
.field private final mCarrierFrequencyHz:F

.field private final mCombinedAttenuationDb:F

.field private final mCombinedExcessPathLengthMeters:F

.field private final mCombinedExcessPathLengthUncertaintyMeters:F

.field private final mConstellationType:I

.field private final mGnssExcessPathInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mProbSatIsLos:F

.field private final mSatId:I

.field private final mSingleSatCorrectionFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssSingleSatCorrection$1;

    invoke-direct {v0}, Landroid/location/GnssSingleSatCorrection$1;-><init>()V

    sput-object v0, Landroid/location/GnssSingleSatCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIIFFFFFLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIFFFFF",
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    iput p2, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    iput p3, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    iput p4, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    iput p5, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    iput p6, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    iput p7, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    iput p8, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    iput-object p9, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(IIIFFFFFLjava/util/List;Landroid/location/GnssSingleSatCorrection-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/location/GnssSingleSatCorrection;-><init>(IIIFFFFFLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/location/GnssSingleSatCorrection;

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    move-object v0, p1

    check-cast v0, Landroid/location/GnssSingleSatCorrection;

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasValidSatelliteLineOfSight()Z

    move-result v2

    if-eqz v2, :cond_34

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    :cond_34
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLength()Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    :cond_44
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLengthUncertainty()Z

    move-result v2

    if-eqz v2, :cond_54

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    :cond_54
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasCombinedAttenuation()Z

    move-result v2

    if-eqz v2, :cond_64

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    iget v3, v0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_70

    :cond_64
    iget-object v2, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    iget-object v3, v0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    const/4 v1, 0x1

    goto :goto_71

    :cond_70
    nop

    :goto_71
    return v1

    :cond_72
    return v1
.end method

.method public getCarrierFrequencyHz()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    return v0
.end method

.method public getCombinedAttenuationDb()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    return v0
.end method

.method public getConstellationType()I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    return v0
.end method

.method public getExcessPathLengthMeters()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    return v0
.end method

.method public getExcessPathLengthUncertaintyMeters()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    return v0
.end method

.method public getGnssExcessPathInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getProbabilityLineOfSight()F
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    return v0
.end method

.method public getReflectingPlane()Landroid/location/GnssReflectingPlane;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSatelliteId()I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    return v0
.end method

.method public getSingleSatelliteCorrectionFlags()I
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    return v0
.end method

.method public hasCombinedAttenuation()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasExcessPathLength()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasExcessPathLengthUncertainty()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasReflectingPlane()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public hasValidSatelliteLineOfSight()Z
    .registers 3

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssSingleSatCorrection:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " ConstellationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " CarrierFrequencyHz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasValidSatelliteLineOfSight()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, " ProbSatIsLos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_39
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLength()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, " CombinedExcessPathLengthMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4a
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLengthUncertainty()Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, " CombinedExcessPathLengthUncertaintyMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_5b
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasCombinedAttenuation()Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, " CombinedAttenuationDb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_6c
    iget-object v1, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_83

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSingleSatCorrectionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mSatId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasValidSatelliteLineOfSight()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mProbSatIsLos:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_1f
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLength()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_2a
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasExcessPathLengthUncertainty()Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedExcessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_35
    invoke-virtual {p0}, Landroid/location/GnssSingleSatCorrection;->hasCombinedAttenuation()Z

    move-result v0

    if-eqz v0, :cond_40

    iget v0, p0, Landroid/location/GnssSingleSatCorrection;->mCombinedAttenuationDb:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_40
    iget-object v0, p0, Landroid/location/GnssSingleSatCorrection;->mGnssExcessPathInfoList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
