# classes2.dex

.class public final Landroid/location/GnssMeasurementCorrections$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementCorrections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAltitudeMeters:D

.field private mEnvironmentBearingDegrees:F

.field private mEnvironmentBearingIsSet:Z

.field private mEnvironmentBearingUncertaintyDegrees:F

.field private mEnvironmentBearingUncertaintyIsSet:Z

.field private mHorizontalPositionUncertaintyMeters:D

.field private mLatitudeDegrees:D

.field private mLongitudeDegrees:D

.field private mSingleSatCorrectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private mToaGpsNanosecondsOfWeek:J

.field private mVerticalPositionUncertaintyMeters:D


# direct methods
.method static bridge synthetic -$$Nest$fgetmAltitudeMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mAltitudeMeters:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmEnvironmentBearingDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingDegrees:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnvironmentBearingIsSet(Landroid/location/GnssMeasurementCorrections$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnvironmentBearingUncertaintyDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)F
    .registers 1

    iget p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyDegrees:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnvironmentBearingUncertaintyIsSet(Landroid/location/GnssMeasurementCorrections$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHorizontalPositionUncertaintyMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mHorizontalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLatitudeDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLatitudeDegrees:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLongitudeDegrees(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLongitudeDegrees:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSingleSatCorrectionList(Landroid/location/GnssMeasurementCorrections$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mSingleSatCorrectionList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmToaGpsNanosecondsOfWeek(Landroid/location/GnssMeasurementCorrections$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mToaGpsNanosecondsOfWeek:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmVerticalPositionUncertaintyMeters(Landroid/location/GnssMeasurementCorrections$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mVerticalPositionUncertaintyMeters:D

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z

    iput-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z

    return-void
.end method


# virtual methods
.method public build()Landroid/location/GnssMeasurementCorrections;
    .registers 3

    iget-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z

    iget-boolean v1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z

    xor-int/2addr v0, v1

    if-nez v0, :cond_e

    new-instance v0, Landroid/location/GnssMeasurementCorrections;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssMeasurementCorrections;-><init>(Landroid/location/GnssMeasurementCorrections$Builder;Landroid/location/GnssMeasurementCorrections-IA;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Both environment bearing and environment bearing uncertainty must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAltitudeMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mAltitudeMeters:D

    return-object p0
.end method

.method public setEnvironmentBearingDegrees(F)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3

    iput p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingDegrees:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingIsSet:Z

    return-object p0
.end method

.method public setEnvironmentBearingUncertaintyDegrees(F)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3

    iput p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyDegrees:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mEnvironmentBearingUncertaintyIsSet:Z

    return-object p0
.end method

.method public setHorizontalPositionUncertaintyMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mHorizontalPositionUncertaintyMeters:D

    return-object p0
.end method

.method public setLatitudeDegrees(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLatitudeDegrees:D

    return-object p0
.end method

.method public setLongitudeDegrees(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mLongitudeDegrees:D

    return-object p0
.end method

.method public setSingleSatelliteCorrectionList(Ljava/util/List;)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssSingleSatCorrection;",
            ">;)",
            "Landroid/location/GnssMeasurementCorrections$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mSingleSatCorrectionList:Ljava/util/List;

    return-object p0
.end method

.method public setToaGpsNanosecondsOfWeek(J)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mToaGpsNanosecondsOfWeek:J

    return-object p0
.end method

.method public setVerticalPositionUncertaintyMeters(D)Landroid/location/GnssMeasurementCorrections$Builder;
    .registers 3

    iput-wide p1, p0, Landroid/location/GnssMeasurementCorrections$Builder;->mVerticalPositionUncertaintyMeters:D

    return-object p0
.end method
