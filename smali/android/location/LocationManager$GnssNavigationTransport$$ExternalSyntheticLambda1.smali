# classes2.dex

.class public final synthetic Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Landroid/location/LocationManager$GnssNavigationTransport$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Landroid/location/GnssNavigationMessage$Callback;

    invoke-static {v0, p1}, Landroid/location/LocationManager$GnssNavigationTransport;->lambda$onStatusChanged$1(ILandroid/location/GnssNavigationMessage$Callback;)V

    return-void
.end method
