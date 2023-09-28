# classes.dex

.class Landroid/bluetooth/BluetoothVolumeControl$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothVolumeControl;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothVolumeControl;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 7

    const-string v0, "BluetoothVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1c

    return-void

    :cond_1c
    iget-object v0, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v0}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothVolumeControl;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothVolumeControl;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_8e

    if-nez v1, :cond_8c

    :try_start_2f
    iget-object v1, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v1}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$mgetService(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/bluetooth/IBluetoothVolumeControl;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v3}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/bluetooth/IBluetoothVolumeControlCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothVolumeControl$3;->this$0:Landroid/bluetooth/BluetoothVolumeControl;

    invoke-static {v4}, Landroid/bluetooth/BluetoothVolumeControl;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothVolumeControl;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothVolumeControl;->registerCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_56} :catch_82
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2f .. :try_end_56} :catch_57
    .catchall {:try_start_2f .. :try_end_56} :catchall_8e

    :cond_56
    goto :goto_8c

    :catch_57
    move-exception v1

    :try_start_58
    const-string v2, "BluetoothVolumeControl"

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

    goto :goto_8c

    :catch_82
    move-exception v1

    const-string v2, "BluetoothVolumeControl"

    const-string/jumbo v3, "onBluetoothServiceUp: Failed to registerVolume Control callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_8c
    :goto_8c
    monitor-exit v0

    return-void

    :catchall_8e
    move-exception v1

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_58 .. :try_end_90} :catchall_8e

    throw v1
.end method
