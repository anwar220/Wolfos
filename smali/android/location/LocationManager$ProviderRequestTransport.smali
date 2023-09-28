# classes2.dex

.class Landroid/location/LocationManager$ProviderRequestTransport;
.super Landroid/location/provider/IProviderRequestListener$Stub;

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderRequestTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/provider/IProviderRequestListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/provider/ProviderRequest$ChangedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private volatile mListener:Landroid/location/provider/ProviderRequest$ChangedListener;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/location/provider/ProviderRequest$ChangedListener;)V
    .registers 7

    invoke-direct {p0}, Landroid/location/provider/IProviderRequestListener$Stub;-><init>()V

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

    if-eqz p2, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "invalid null callback"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mListener:Landroid/location/provider/ProviderRequest$ChangedListener;

    return-void
.end method

.method static synthetic lambda$onProviderRequestChanged$0(Ljava/lang/String;Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest$ChangedListener;)V
    .registers 3

    invoke-interface {p2, p0, p1}, Landroid/location/provider/ProviderRequest$ChangedListener;->onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    return-void
.end method


# virtual methods
.method public getListener()Landroid/location/provider/ProviderRequest$ChangedListener;
    .registers 2

    iget-object v0, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mListener:Landroid/location/provider/ProviderRequest$ChangedListener;

    return-object v0
.end method

.method public bridge synthetic getListener()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Landroid/location/LocationManager$ProviderRequestTransport;->getListener()Landroid/location/provider/ProviderRequest$ChangedListener;

    move-result-object v0

    return-object v0
.end method

.method public onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    .registers 5

    iget-object v0, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$ProviderRequestTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/location/LocationManager$ProviderRequestTransport$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$ProviderRequestTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregister()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$ProviderRequestTransport;->mListener:Landroid/location/provider/ProviderRequest$ChangedListener;

    return-void
.end method
