# classes.dex

.class Landroid/bluetooth/BluetoothSyncHelper$2;
.super Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothSyncHelper;->wrap(Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;Landroid/os/Handler;)Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothSyncHelper;

.field final synthetic val$callback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSyncHelper;Landroid/os/Handler;Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;)V
    .registers 4

    iput-object p1, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->this$0:Landroid/bluetooth/BluetoothSyncHelper;

    iput-object p2, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$callback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    invoke-direct {p0}, Landroid/bluetooth/IBleBroadcastAudioScanAssistCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBleBroadcastAudioSourceAdded(Landroid/bluetooth/BluetoothDevice;BI)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$3;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBleBroadcastAudioSourceRemoved(Landroid/bluetooth/BluetoothDevice;BI)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$6;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$6;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBleBroadcastAudioSourceSelected(Landroid/bluetooth/BluetoothDevice;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BleBroadcastSourceChannel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$2;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$2;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;ILandroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBleBroadcastAudioSourceUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$4;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$4;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBleBroadcastPinUpdated(Landroid/bluetooth/BluetoothDevice;BI)V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$5;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/bluetooth/BluetoothSyncHelper$2$5;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/BluetoothDevice;BI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
    .registers 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/BluetoothSyncHelper$2$1;

    invoke-direct {v1, p0, p1}, Landroid/bluetooth/BluetoothSyncHelper$2$1;-><init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
