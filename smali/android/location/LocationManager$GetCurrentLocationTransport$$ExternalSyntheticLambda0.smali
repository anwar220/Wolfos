# classes2.dex

.class public final synthetic Landroid/location/LocationManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/location/LocationManager$GetCurrentLocationTransport;


# direct methods
.method public synthetic constructor <init>(Landroid/location/LocationManager$GetCurrentLocationTransport;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/LocationManager$GetCurrentLocationTransport;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;->f$0:Landroid/location/LocationManager$GetCurrentLocationTransport;

    invoke-virtual {v0}, Landroid/location/LocationManager$GetCurrentLocationTransport;->lambda$onLocation$0$android-location-LocationManager$GetCurrentLocationTransport()Ljava/util/function/Consumer;

    move-result-object v0

    return-object v0
.end method
