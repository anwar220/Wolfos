# classes2.dex

.class public final synthetic Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/location/LocationManager$LocationListenerTransport;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManager$LocationListenerTransport;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;->f$0:Landroid/location/LocationManager$LocationListenerTransport;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;->f$0:Landroid/location/LocationManager$LocationListenerTransport;

    invoke-virtual {v0}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$onLocationChanged$0$android-location-LocationManager$LocationListenerTransport()Landroid/location/LocationListener;

    move-result-object v0

    return-object v0
.end method
