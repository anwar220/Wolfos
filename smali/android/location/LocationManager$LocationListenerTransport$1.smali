# classes2.dex

.class Landroid/location/LocationManager$LocationListenerTransport$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$LocationListenerTransport;->onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
        "Landroid/location/LocationListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/LocationManager$LocationListenerTransport;

.field final synthetic val$locations:Ljava/util/List;

.field final synthetic val$onCompleteCallback:Landroid/os/IRemoteCallback;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$LocationListenerTransport;Ljava/util/List;Landroid/os/IRemoteCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->this$0:Landroid/location/LocationManager$LocationListenerTransport;

    iput-object p2, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$locations:Ljava/util/List;

    iput-object p3, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$onCompleteCallback:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .registers 4

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$onCompleteCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_f
    :goto_f
    return-void
.end method

.method public operate(Landroid/location/LocationListener;)V
    .registers 3

    iget-object v0, p0, Landroid/location/LocationManager$LocationListenerTransport$1;->val$locations:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/location/LocationListener;->onLocationChanged(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Landroid/location/LocationListener;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$LocationListenerTransport$1;->operate(Landroid/location/LocationListener;)V

    return-void
.end method
