# classes2.dex

.class Landroid/location/Geocoder$GeocoderImpl;
.super Landroid/location/IGeocodeListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Geocoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GeocoderImpl"
.end annotation


# instance fields
.field private mListener:Landroid/location/Geocoder$GeocodeListener;


# direct methods
.method constructor <init>(Landroid/location/Geocoder$GeocodeListener;)V
    .registers 3

    invoke-direct {p0}, Landroid/location/IGeocodeListener$Stub;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geocoder$GeocodeListener;

    iput-object v0, p0, Landroid/location/Geocoder$GeocoderImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    return-void
.end method


# virtual methods
.method public onResults(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/Geocoder$GeocoderImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/location/Geocoder$GeocoderImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/location/Geocoder$GeocoderImpl;->mListener:Landroid/location/Geocoder$GeocodeListener;

    if-eqz p1, :cond_10

    invoke-interface {v0, p1}, Landroid/location/Geocoder$GeocodeListener;->onError(Ljava/lang/String;)V

    goto :goto_19

    :cond_10
    if-nez p2, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_16
    invoke-interface {v0, p2}, Landroid/location/Geocoder$GeocodeListener;->onGeocode(Ljava/util/List;)V

    :goto_19
    return-void
.end method
