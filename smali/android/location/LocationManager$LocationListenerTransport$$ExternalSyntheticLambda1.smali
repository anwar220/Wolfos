# classes2.dex

.class public final synthetic Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Landroid/location/LocationManager$LocationListenerTransport$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Landroid/location/LocationListener;

    invoke-static {v0, p1}, Landroid/location/LocationManager$LocationListenerTransport;->lambda$onFlushComplete$2(ILandroid/location/LocationListener;)V

    return-void
.end method
