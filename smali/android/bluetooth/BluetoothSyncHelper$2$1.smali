# classes.dex

.class Landroid/bluetooth/BluetoothSyncHelper$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothSyncHelper$2;->onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

.field final synthetic val$scanres:Landroid/bluetooth/le/ScanResult;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSyncHelper$2;Landroid/bluetooth/le/ScanResult;)V
    .registers 3

    iput-object p1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$1;->this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

    iput-object p2, p0, Landroid/bluetooth/BluetoothSyncHelper$2$1;->val$scanres:Landroid/bluetooth/le/ScanResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onBleBroadcastSourceFound for scanres:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$1;->val$scanres:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothSyncHelper;->-$$Nest$smlog(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothSyncHelper$2$1;->this$1:Landroid/bluetooth/BluetoothSyncHelper$2;

    iget-object v0, v0, Landroid/bluetooth/BluetoothSyncHelper$2;->val$callback:Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;

    iget-object v1, p0, Landroid/bluetooth/BluetoothSyncHelper$2$1;->val$scanres:Landroid/bluetooth/le/ScanResult;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BleBroadcastAudioScanAssistCallback;->onBleBroadcastSourceFound(Landroid/bluetooth/le/ScanResult;)V

    return-void
.end method
