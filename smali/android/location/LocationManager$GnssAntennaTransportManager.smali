# classes2.dex

.class Landroid/location/LocationManager$GnssAntennaTransportManager;
.super Lcom/android/internal/listeners/ListenerTransportManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssAntennaTransportManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/listeners/ListenerTransportManager<",
        "Landroid/location/LocationManager$GnssAntennaInfoTransport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/listeners/ListenerTransportManager;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected registerTransport(Landroid/location/LocationManager$GnssAntennaInfoTransport;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->getListener()Landroid/location/GnssAntennaInfo$Listener;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->toReceiverId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/location/ILocationManager;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic registerTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/LocationManager$GnssAntennaInfoTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssAntennaTransportManager;->registerTransport(Landroid/location/LocationManager$GnssAntennaInfoTransport;)V

    return-void
.end method

.method protected unregisterTransport(Landroid/location/LocationManager$GnssAntennaInfoTransport;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/location/LocationManager;->getService()Landroid/location/ILocationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/location/ILocationManager;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    return-void
.end method

.method protected bridge synthetic unregisterTransport(Lcom/android/internal/listeners/ListenerTransport;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/LocationManager$GnssAntennaInfoTransport;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GnssAntennaTransportManager;->unregisterTransport(Landroid/location/LocationManager$GnssAntennaInfoTransport;)V

    return-void
.end method
