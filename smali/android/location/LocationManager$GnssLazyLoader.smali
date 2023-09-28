# classes2.dex

.class Landroid/location/LocationManager$GnssLazyLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssLazyLoader"
.end annotation


# static fields
.field static final sGnssAntennaInfoListeners:Landroid/location/LocationManager$GnssAntennaTransportManager;

.field static final sGnssMeasurementsListeners:Landroid/location/LocationManager$GnssMeasurementsTransportManager;

.field static final sGnssNavigationListeners:Landroid/location/LocationManager$GnssNavigationTransportManager;

.field static final sGnssNmeaListeners:Landroid/location/LocationManager$GnssNmeaTransportManager;

.field static final sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/LocationManager$GnssStatusTransportManager;

    invoke-direct {v0}, Landroid/location/LocationManager$GnssStatusTransportManager;-><init>()V

    sput-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssStatusListeners:Landroid/location/LocationManager$GnssStatusTransportManager;

    new-instance v0, Landroid/location/LocationManager$GnssNmeaTransportManager;

    invoke-direct {v0}, Landroid/location/LocationManager$GnssNmeaTransportManager;-><init>()V

    sput-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNmeaListeners:Landroid/location/LocationManager$GnssNmeaTransportManager;

    new-instance v0, Landroid/location/LocationManager$GnssMeasurementsTransportManager;

    invoke-direct {v0}, Landroid/location/LocationManager$GnssMeasurementsTransportManager;-><init>()V

    sput-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssMeasurementsListeners:Landroid/location/LocationManager$GnssMeasurementsTransportManager;

    new-instance v0, Landroid/location/LocationManager$GnssAntennaTransportManager;

    invoke-direct {v0}, Landroid/location/LocationManager$GnssAntennaTransportManager;-><init>()V

    sput-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssAntennaInfoListeners:Landroid/location/LocationManager$GnssAntennaTransportManager;

    new-instance v0, Landroid/location/LocationManager$GnssNavigationTransportManager;

    invoke-direct {v0}, Landroid/location/LocationManager$GnssNavigationTransportManager;-><init>()V

    sput-object v0, Landroid/location/LocationManager$GnssLazyLoader;->sGnssNavigationListeners:Landroid/location/LocationManager$GnssNavigationTransportManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
