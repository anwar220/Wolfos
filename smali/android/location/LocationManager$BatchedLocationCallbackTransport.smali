# classes2.dex

.class Landroid/location/LocationManager$BatchedLocationCallbackTransport;
.super Landroid/location/LocationManager$LocationListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BatchedLocationCallbackTransport"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Landroid/location/BatchedLocationCallback;Landroid/os/Handler;)V
    .registers 5

    new-instance v0, Landroid/location/LocationManager$BatchedLocationCallbackWrapper;

    invoke-direct {v0, p1}, Landroid/location/LocationManager$BatchedLocationCallbackWrapper;-><init>(Landroid/location/BatchedLocationCallback;)V

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0, v1}, Landroid/location/LocationManager$LocationListenerTransport;-><init>(Landroid/location/LocationListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method
