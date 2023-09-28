# classes2.dex

.class Landroid/location/LocationManager$LocationListenerTransport;
.super Landroid/location/ILocationListener$Stub;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerTransport"
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mListener:Landroid/location/LocationListener;


# direct methods
.method constructor <init>(Landroid/location/LocationListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    invoke-virtual {p0, p2}, Landroid/location/LocationManager$LocationListenerTransport;->setExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic lambda$onFlushComplete$2(ILandroid/location/LocationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/location/LocationListener;->onFlushComplete(I)V

    return-void
.end method

.method static synthetic lambda$onProviderEnabledChanged$4(ZLjava/lang/String;Landroid/location/LocationListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_6

    invoke-interface {p2, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    goto :goto_9

    :cond_6
    invoke-interface {p2, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    :goto_9
    return-void
.end method


# virtual methods
.method isRegistered()Z
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method synthetic lambda$onFlushComplete$1$android-location-LocationManager$LocationListenerTransport()Landroid/location/LocationListener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method synthetic lambda$onLocationChanged$0$android-location-LocationManager$LocationListenerTransport()Landroid/location/LocationListener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method synthetic lambda$onProviderEnabledChanged$3$android-location-LocationManager$LocationListenerTransport()Landroid/location/LocationListener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method public onFlushComplete(I)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda0;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;",
            "Landroid/os/IRemoteCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda2;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/location/LocationManager$LocationListenerTransport$1;-><init>(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/List;Landroid/os/IRemoteCallback;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onProviderEnabledChanged(Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda3;-><init>(Landroid/location/LocationManager$LocationListenerTransport;)V

    new-instance v2, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;

    invoke-direct {v2, p2, p1}, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;-><init>(ZLjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$LocationListenerTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method setExecutor(Ljava/util/concurrent/Executor;)V
    .registers 4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "invalid null executor"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method unregister()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport;->mListener:Landroid/location/LocationListener;

    return-void
.end method
