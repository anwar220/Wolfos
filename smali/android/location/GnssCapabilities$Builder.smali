# classes2.dex

.class public final Landroid/location/GnssCapabilities$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMeasurementCorrectionsFlags:I

.field private mPowerFlags:I

.field private mTopFlags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    return-void
.end method

.method public constructor <init>(Landroid/location/GnssCapabilities;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmTopFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmMeasurementCorrectionsFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    invoke-static {p1}, Landroid/location/GnssCapabilities;->-$$Nest$fgetmPowerFlags(Landroid/location/GnssCapabilities;)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    return-void
.end method

.method private static setFlag(IIZ)I
    .registers 4

    if-eqz p2, :cond_5

    or-int v0, p0, p1

    return v0

    :cond_5
    not-int v0, p1

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public build()Landroid/location/GnssCapabilities;
    .registers 6

    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    iget v2, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    iget v3, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/location/GnssCapabilities;-><init>(IIILandroid/location/GnssCapabilities-IA;)V

    return-object v0
.end method

.method public setHasAntennaInfo(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x800

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasGeofencing(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasLowPowerMode(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x100

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasMeasurementCorrections(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x400

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasMeasurementCorrectionsExcessPathLength(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    return-object p0
.end method

.method public setHasMeasurementCorrectionsForDriving(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x4000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasMeasurementCorrectionsLosSats(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    return-object p0
.end method

.method public setHasMeasurementCorrectionsReflectingPlane(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mMeasurementCorrectionsFlags:I

    return-object p0
.end method

.method public setHasMeasurementCorrelationVectors(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x1000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasMeasurements(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasMsa(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasMsb(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasNavigationMessages(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x80

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasOnDemandTime(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasPowerMultibandAcquisition(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    return-object p0
.end method

.method public setHasPowerMultibandTracking(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    return-object p0
.end method

.method public setHasPowerOtherModes(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x20

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    return-object p0
.end method

.method public setHasPowerSinglebandAcquisition(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    return-object p0
.end method

.method public setHasPowerSinglebandTracking(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    return-object p0
.end method

.method public setHasPowerTotal(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mPowerFlags:I

    return-object p0
.end method

.method public setHasSatelliteBlocklist(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x200

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasSatellitePvt(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x2000

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasScheduling(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method

.method public setHasSingleShot(Z)Landroid/location/GnssCapabilities$Builder;
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1}, Landroid/location/GnssCapabilities$Builder;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Landroid/location/GnssCapabilities$Builder;->mTopFlags:I

    return-object p0
.end method
