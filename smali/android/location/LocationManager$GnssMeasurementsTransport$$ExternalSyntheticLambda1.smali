# classes2.dex

.class public final synthetic Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/location/GnssMeasurementsEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssMeasurementsEvent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda1;->f$0:Landroid/location/GnssMeasurementsEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda1;->f$0:Landroid/location/GnssMeasurementsEvent;

    check-cast p1, Landroid/location/GnssMeasurementsEvent$Callback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->lambda$onGnssMeasurementsReceived$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/GnssMeasurementsEvent$Callback;)V

    return-void
.end method
