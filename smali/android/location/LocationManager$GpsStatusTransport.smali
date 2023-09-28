# classes2.dex

.class Landroid/location/LocationManager$GpsStatusTransport;
.super Landroid/location/LocationManager$GnssStatusTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GpsStatusTransport"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static volatile sGnssStatus:Landroid/location/GnssStatus;

.field static volatile sTtff:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GpsStatus$Listener;)V
    .registers 5

    new-instance v0, Landroid/location/LocationManager$GpsAdapter;

    invoke-direct {v0, p3}, Landroid/location/LocationManager$GpsAdapter;-><init>(Landroid/location/GpsStatus$Listener;)V

    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusTransport;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssStatus$Callback;)V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 2

    sput p1, Landroid/location/LocationManager$GpsStatusTransport;->sTtff:I

    invoke-super {p0, p1}, Landroid/location/LocationManager$GnssStatusTransport;->onFirstFix(I)V

    return-void
.end method

.method public onSvStatusChanged(Landroid/location/GnssStatus;)V
    .registers 2

    sput-object p1, Landroid/location/LocationManager$GpsStatusTransport;->sGnssStatus:Landroid/location/GnssStatus;

    invoke-super {p0, p1}, Landroid/location/LocationManager$GnssStatusTransport;->onSvStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method
