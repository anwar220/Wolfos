# classes.dex

.class Landroid/bluetooth/BluetoothLeAudio$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothLeAudio;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothLeAudio;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .registers 7

    const-string v0, "BluetoothLeAudio"

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

    if-eqz p1, :cond_6a

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_22
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeAudio;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_67

    if-nez v1, :cond_65

    :try_start_2e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$mgetService(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    if-eqz v1, :cond_55

    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothLeAudio;)Landroid/bluetooth/IBluetoothLeAudioCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudio$3;->this$0:Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v4}, Landroid/bluetooth/BluetoothLeAudio;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeAudio;)Landroid/content/AttributionSource;

    move-result-object v4

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothLeAudio;->registerCallback(Landroid/bluetooth/IBluetoothLeAudioCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2e .. :try_end_55} :catch_5c
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_55} :catch_56
    .catchall {:try_start_2e .. :try_end_55} :catchall_67

    :cond_55
    goto :goto_65

    :catch_56
    move-exception v1

    :try_start_57
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_5c
    move-exception v1

    const-string v2, "BluetoothLeAudio"

    const-string v3, "Failed to register callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_65
    :goto_65
    monitor-exit v0

    goto :goto_6a

    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_57 .. :try_end_69} :catchall_67

    throw v1

    :cond_6a
    :goto_6a
    return-void
.end method
