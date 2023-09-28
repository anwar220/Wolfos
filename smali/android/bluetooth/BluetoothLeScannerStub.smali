# classes.dex

.class public interface abstract Landroid/bluetooth/BluetoothLeScannerStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/bluetooth/BluetoothLeScannerStub;
    .registers 1

    const-class v0, Landroid/bluetooth/BluetoothLeScannerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeScannerStub;

    return-object v0
.end method


# virtual methods
.method public abstract cleanupLeScanStatistics()V
.end method

.method public isLeScanAllowed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract startLeScan(Landroid/bluetooth/IBluetoothGatt;ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/WorkSource;Ljava/util/List;Landroid/os/IBinder;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothGatt;",
            "I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/WorkSource;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Landroid/os/IBinder;",
            "Landroid/content/AttributionSource;",
            "Lcom/android/modules/utils/SynchronousResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startLeScan(Landroid/bluetooth/IBluetoothGatt;Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Landroid/os/IBinder;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/IBluetoothGatt;",
            "Landroid/app/PendingIntent;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Landroid/os/IBinder;",
            "Landroid/content/AttributionSource;",
            "Lcom/android/modules/utils/SynchronousResultReceiver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startLeScanStatistics(Landroid/bluetooth/IBluetoothManager;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
.end method

.method public abstract stopLeScan(ILandroid/os/IBinder;)V
.end method

.method public abstract stopLeScan(Landroid/app/PendingIntent;Landroid/os/IBinder;Lcom/android/modules/utils/SynchronousResultReceiver;)V
.end method

.method public abstract stopLeScanStatistics(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
.end method
