# classes.dex

.class Landroid/bluetooth/BluetoothHapClient$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHapClient;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 7

    if-eqz p1, :cond_75

    iget-object v0, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothHapClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_72

    return-void

    :cond_17
    :try_start_17
    iget-object v1, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$mgetService(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/IBluetoothHapClient;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v3}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothHapClient;)Landroid/bluetooth/IBluetoothHapClientCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothHapClient$3;->this$0:Landroid/bluetooth/BluetoothHapClient;

    invoke-static {v4}, Landroid/bluetooth/BluetoothHapClient;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothHapClient;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothHapClient;->registerCallback(Landroid/bluetooth/IBluetoothHapClientCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_17 .. :try_end_3e} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3e} :catch_3f
    .catchall {:try_start_17 .. :try_end_3e} :catchall_72

    :cond_3e
    goto :goto_70

    :catch_3f
    move-exception v1

    :try_start_40
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_45
    move-exception v1

    const-string v2, "BluetoothHapClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_70
    monitor-exit v0

    goto :goto_75

    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_40 .. :try_end_74} :catchall_72

    throw v1

    :cond_75
    :goto_75
    return-void
.end method
