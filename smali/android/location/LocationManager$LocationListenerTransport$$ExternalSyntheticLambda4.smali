# classes2.dex

.class public final synthetic Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;->f$0:Z

    iput-object p2, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .registers 4

    iget-boolean v0, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;->f$0:Z

    iget-object v1, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/location/LocationListener;

    invoke-static {v0, v1, p1}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$onProviderEnabledChanged$4(ZLjava/lang/String;Landroid/location/LocationListener;)V

    return-void
.end method
