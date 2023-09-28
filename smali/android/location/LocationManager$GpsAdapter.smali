# classes2.dex

.class Landroid/location/LocationManager$GpsAdapter;
.super Landroid/location/GnssStatus$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsAdapter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mGpsListener:Landroid/location/GpsStatus$Listener;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus$Listener;)V
    .registers 2

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    return-void
.end method

.method public onStarted()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    return-void
.end method

.method public onStopped()V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GpsAdapter;->mGpsListener:Landroid/location/GpsStatus$Listener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    return-void
.end method
