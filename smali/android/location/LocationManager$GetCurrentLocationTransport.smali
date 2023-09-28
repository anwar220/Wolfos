# classes2.dex

.class Landroid/location/LocationManager$GetCurrentLocationTransport;
.super Landroid/location/ILocationCallback$Stub;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor;
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetCurrentLocationTransport"
.end annotation


# instance fields
.field volatile mConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Landroid/os/CancellationSignal;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;",
            "Landroid/os/CancellationSignal;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/location/ILocationCallback$Stub;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    const-string v3, "illegal null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "illegal null consumer"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;

    if-eqz p3, :cond_21

    invoke-virtual {p3, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_21
    return-void
.end method


# virtual methods
.method synthetic lambda$onLocation$0$android-location-LocationManager$GetCurrentLocationTransport()Ljava/util/function/Consumer;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public onCancel()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public onLocation(Landroid/location/Location;)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/location/LocationManager$GetCurrentLocationTransport$$ExternalSyntheticLambda0;-><init>(Landroid/location/LocationManager$GetCurrentLocationTransport;)V

    new-instance v2, Landroid/location/LocationManager$GetCurrentLocationTransport$1;

    invoke-direct {v2, p0, p1}, Landroid/location/LocationManager$GetCurrentLocationTransport$1;-><init>(Landroid/location/LocationManager$GetCurrentLocationTransport;Landroid/location/Location;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/location/LocationManager$GetCurrentLocationTransport;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method
