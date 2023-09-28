# classes2.dex

.class Landroid/location/LocationManager$GnssMeasurementsTransport;
.super Landroid/location/IGnssMeasurementsListener$Stub;

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssMeasurementsTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssMeasurementsListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/GnssMeasurementsEvent$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAttributionTag:Ljava/lang/String;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mListener:Landroid/location/GnssMeasurementsEvent$Callback;

.field private final mPackageName:Ljava/lang/String;

.field private final mRequest:Landroid/location/GnssMeasurementRequest;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssMeasurementRequest;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 9

    invoke-direct {p0}, Landroid/location/IGnssMeasurementsListener$Stub;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p4, :cond_13

    move v2, v0

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    const-string v3, "invalid null callback"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    const-string v1, "invalid null request"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mAttributionTag:Ljava/lang/String;

    iput-object p3, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mRequest:Landroid/location/GnssMeasurementRequest;

    iput-object p4, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mListener:Landroid/location/GnssMeasurementsEvent$Callback;

    return-void
.end method

.method static synthetic lambda$onGnssMeasurementsReceived$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementsEvent$Callback;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method static synthetic lambda$onStatusChanged$1(ILandroid/location/GnssMeasurementsEvent$Callback;)V
    .registers 2

    invoke-virtual {p1, p0}, Landroid/location/GnssMeasurementsEvent$Callback;->onStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public getAttributionTag()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Landroid/location/GnssMeasurementsEvent$Callback;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mListener:Landroid/location/GnssMeasurementsEvent$Callback;

    return-object v0
.end method

.method public bridge synthetic getListener()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/location/LocationManager$GnssMeasurementsTransport;->getListener()Landroid/location/GnssMeasurementsEvent$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Landroid/location/GnssMeasurementRequest;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mRequest:Landroid/location/GnssMeasurementRequest;

    return-object v0
.end method

.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda1;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStatusChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssMeasurementsTransport$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssMeasurementsTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssMeasurementsTransport;->mListener:Landroid/location/GnssMeasurementsEvent$Callback;

    return-void
.end method
