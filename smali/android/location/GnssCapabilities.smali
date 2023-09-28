# classes2.dex

.class public final Landroid/location/GnssCapabilities;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssCapabilities$Builder;,
        Landroid/location/GnssCapabilities$SubHalPowerCapabilityFlags;,
        Landroid/location/GnssCapabilities$SubHalMeasurementCorrectionsCapabilityFlags;,
        Landroid/location/GnssCapabilities$TopHalCapabilityFlags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUB_HAL_MEASUREMENT_CORRECTIONS_CAPABILITY_EXCESS_PATH_LENGTH:I = 0x2

.field public static final SUB_HAL_MEASUREMENT_CORRECTIONS_CAPABILITY_LOS_SATS:I = 0x1

.field public static final SUB_HAL_MEASUREMENT_CORRECTIONS_CAPABILITY_REFLECTING_PLANE:I = 0x4

.field public static final SUB_HAL_POWER_CAPABILITY_MULTIBAND_ACQUISITION:I = 0x10

.field public static final SUB_HAL_POWER_CAPABILITY_MULTIBAND_TRACKING:I = 0x4

.field public static final SUB_HAL_POWER_CAPABILITY_OTHER_MODES:I = 0x20

.field public static final SUB_HAL_POWER_CAPABILITY_SINGLEBAND_ACQUISITION:I = 0x8

.field public static final SUB_HAL_POWER_CAPABILITY_SINGLEBAND_TRACKING:I = 0x2

.field public static final SUB_HAL_POWER_CAPABILITY_TOTAL:I = 0x1

.field public static final TOP_HAL_CAPABILITY_ANTENNA_INFO:I = 0x800

.field public static final TOP_HAL_CAPABILITY_CORRELATION_VECTOR:I = 0x1000

.field public static final TOP_HAL_CAPABILITY_GEOFENCING:I = 0x20

.field public static final TOP_HAL_CAPABILITY_LOW_POWER_MODE:I = 0x100

.field public static final TOP_HAL_CAPABILITY_MEASUREMENTS:I = 0x40

.field public static final TOP_HAL_CAPABILITY_MEASUREMENT_CORRECTIONS:I = 0x400

.field public static final TOP_HAL_CAPABILITY_MEASUREMENT_CORRECTIONS_FOR_DRIVING:I = 0x4000

.field public static final TOP_HAL_CAPABILITY_MSA:I = 0x4

.field public static final TOP_HAL_CAPABILITY_MSB:I = 0x2

.field public static final TOP_HAL_CAPABILITY_NAV_MESSAGES:I = 0x80

.field public static final TOP_HAL_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field public static final TOP_HAL_CAPABILITY_SATELLITE_BLOCKLIST:I = 0x200

.field public static final TOP_HAL_CAPABILITY_SATELLITE_PVT:I = 0x2000

.field public static final TOP_HAL_CAPABILITY_SCHEDULING:I = 0x1

.field public static final TOP_HAL_CAPABILITY_SINGLE_SHOT:I = 0x8


# instance fields
.field private final mMeasurementCorrectionsFlags:I

.field private final mPowerFlags:I

.field private final mTopFlags:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmMeasurementCorrectionsFlags(Landroid/location/GnssCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPowerFlags(Landroid/location/GnssCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopFlags(Landroid/location/GnssCapabilities;)I
    .registers 1

    iget p0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssCapabilities$1;

    invoke-direct {v0}, Landroid/location/GnssCapabilities$1;-><init>()V

    sput-object v0, Landroid/location/GnssCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    iput p2, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    iput p3, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    return-void
.end method

.method synthetic constructor <init>(IIILandroid/location/GnssCapabilities-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-void
.end method

.method public static empty()Landroid/location/GnssCapabilities;
    .registers 2

    new-instance v0, Landroid/location/GnssCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/location/GnssCapabilities;-><init>(III)V

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
    instance-of v1, p1, Landroid/location/GnssCapabilities;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/location/GnssCapabilities;

    iget v3, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    iget v4, v1, Landroid/location/GnssCapabilities;->mTopFlags:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    iget v4, v1, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    iget v4, v1, Landroid/location/GnssCapabilities;->mPowerFlags:I

    if-ne v3, v4, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public hasAntennaInfo()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasGeofencing()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasGnssAntennaInfo()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasAntennaInfo()Z

    move-result v0

    return v0
.end method

.method public hasLowPowerMode()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMeasurementCorrections()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMeasurementCorrectionsExcessPathLength()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMeasurementCorrectionsForDriving()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMeasurementCorrectionsLosSats()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasMeasurementCorrectionsReflectingPane()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsReflectingPlane()Z

    move-result v0

    return v0
.end method

.method public hasMeasurementCorrectionsReflectingPlane()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMeasurementCorrelationVectors()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMeasurements()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMsa()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasMsb()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasNavMessages()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasNavigationMessages()Z

    move-result v0

    return v0
.end method

.method public hasNavigationMessages()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasOnDemandTime()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPowerMultibandAcquisition()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPowerMultibandTracking()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPowerOtherModes()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPowerSinglebandAcquisition()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPowerSinglebandTracking()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasPowerTotal()Z
    .registers 3

    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasSatelliteBlacklist()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSatelliteBlocklist()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasSatellitePvt()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hasScheduling()Z
    .registers 3

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public hasSingleShot()Z
    .registers 2

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasScheduling()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMsb()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMsa()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasSingleShot()Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasOnDemandTime()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasGeofencing()Z

    move-result v1

    if-eqz v1, :cond_4c

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrections()Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasNavigationMessages()Z

    move-result v1

    if-eqz v1, :cond_62

    const-string v1, "NAVIGATION_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasLowPowerMode()Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "LOW_POWER_MODE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasSatelliteBlocklist()Z

    move-result v1

    if-eqz v1, :cond_78

    const-string v1, "SATELLITE_BLOCKLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_78
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasSatellitePvt()Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "SATELLITE_PVT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_83
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrections()Z

    move-result v1

    if-eqz v1, :cond_8e

    const-string v1, "MEASUREMENT_CORRECTIONS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8e
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasAntennaInfo()Z

    move-result v1

    if-eqz v1, :cond_99

    const-string v1, "ANTENNA_INFO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrelationVectors()Z

    move-result v1

    if-eqz v1, :cond_a4

    const-string v1, "MEASUREMENT_CORRELATION_VECTORS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a4
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsForDriving()Z

    move-result v1

    if-eqz v1, :cond_af

    const-string v1, "MEASUREMENT_CORRECTIONS_FOR_DRIVING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_af
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsLosSats()Z

    move-result v1

    if-eqz v1, :cond_ba

    const-string v1, "LOS_SATS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ba
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsExcessPathLength()Z

    move-result v1

    if-eqz v1, :cond_c5

    const-string v1, "EXCESS_PATH_LENGTH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c5
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasMeasurementCorrectionsReflectingPlane()Z

    move-result v1

    if-eqz v1, :cond_d0

    const-string v1, "REFLECTING_PLANE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d0
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerTotal()Z

    move-result v1

    if-eqz v1, :cond_db

    const-string v1, "TOTAL_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_db
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerSinglebandTracking()Z

    move-result v1

    if-eqz v1, :cond_e6

    const-string v1, "SINGLEBAND_TRACKING_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e6
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerMultibandTracking()Z

    move-result v1

    if-eqz v1, :cond_f1

    const-string v1, "MULTIBAND_TRACKING_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f1
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerSinglebandAcquisition()Z

    move-result v1

    if-eqz v1, :cond_fc

    const-string v1, "SINGLEBAND_ACQUISITION_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fc
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerMultibandAcquisition()Z

    move-result v1

    if-eqz v1, :cond_107

    const-string v1, "MULTIBAND_ACQUISITION_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_107
    invoke-virtual {p0}, Landroid/location/GnssCapabilities;->hasPowerOtherModes()Z

    move-result v1

    if-eqz v1, :cond_112

    const-string v1, "OTHER_MODES_POWER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_122

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_127

    :cond_122
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_127
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withSubHalMeasurementCorrectionsFlags(I)Landroid/location/GnssCapabilities;
    .registers 5

    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    iget v2, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    invoke-direct {v0, v1, p1, v2}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-object v0
.end method

.method public withSubHalPowerFlags(I)Landroid/location/GnssCapabilities;
    .registers 5

    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    iget v2, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    invoke-direct {v0, v1, v2, p1}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-object v0
.end method

.method public withTopHalFlags(I)Landroid/location/GnssCapabilities;
    .registers 5

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Landroid/location/GnssCapabilities;

    iget v1, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    iget v2, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    invoke-direct {v0, p1, v1, v2}, Landroid/location/GnssCapabilities;-><init>(III)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/location/GnssCapabilities;->mTopFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssCapabilities;->mMeasurementCorrectionsFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssCapabilities;->mPowerFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
