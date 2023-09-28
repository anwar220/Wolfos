# classes2.dex

.class public final Landroid/location/GnssSingleSatCorrection$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssSingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCarrierFrequencyHz:F

.field private mCombinedAttenuationDb:F

.field private mCombinedExcessPathLengthMeters:F

.field private mCombinedExcessPathLengthUncertaintyMeters:F

.field private mConstellationType:I

.field private mGnssExcessInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProbSatIsLos:F

.field private mSatId:I

.field private mSingleSatCorrectionFlags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mGnssExcessInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssSingleSatCorrection;
    .registers 13

    new-instance v11, Landroid/location/GnssSingleSatCorrection;

    iget v1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    iget v2, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mConstellationType:I

    iget v3, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSatId:I

    iget v4, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCarrierFrequencyHz:F

    iget v5, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F

    iget v6, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthMeters:F

    iget v7, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthUncertaintyMeters:F

    iget v8, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedAttenuationDb:F

    iget-object v9, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mGnssExcessInfoList:Ljava/util/List;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/location/GnssSingleSatCorrection;-><init>(IIIFFFFFLjava/util/List;Landroid/location/GnssSingleSatCorrection-IA;)V

    return-object v11
.end method

.method public clearCombinedAttenuationDb()Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedAttenuationDb:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public clearExcessPathLengthMeters()Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthMeters:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public clearExcessPathLengthUncertaintyMeters()Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthUncertaintyMeters:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public clearProbabilityLineOfSight()Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public setCarrierFrequencyHz(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "carrierFrequencyHz"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCarrierFrequencyHz:F

    return-object p0
.end method

.method public setCombinedAttenuationDb(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "combinedAttenuationDb"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedAttenuationDb:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public setConstellationType(I)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mConstellationType:I

    return-object p0
.end method

.method public setExcessPathLengthMeters(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "excessPathLengthMeters"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthMeters:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public setExcessPathLengthUncertaintyMeters(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff  # Float.MAX_VALUE

    const-string v2, "excessPathLengthUncertaintyMeters"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mCombinedExcessPathLengthUncertaintyMeters:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public setGnssExcessPathInfoList(Ljava/util/List;)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssExcessPathInfo;",
            ">;)",
            "Landroid/location/GnssSingleSatCorrection$Builder;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mGnssExcessInfoList:Ljava/util/List;

    return-object p0
.end method

.method public setProbabilityLineOfSight(F)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    const-string v2, "probSatIsLos should be between 0 and 1."

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mProbSatIsLos:F

    iget v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSingleSatCorrectionFlags:I

    return-object p0
.end method

.method public setReflectingPlane(Landroid/location/GnssReflectingPlane;)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setSatelliteId(I)Landroid/location/GnssSingleSatCorrection$Builder;
    .registers 3

    const-string v0, "satId should be non-negative."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    iput p1, p0, Landroid/location/GnssSingleSatCorrection$Builder;->mSatId:I

    return-object p0
.end method
