# classes.dex

.class public Landroid/bluetooth/IBluetoothVolumeControl$Default;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/IBluetoothVolumeControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothVolumeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public getDevicesMatchingConnectionStates([ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public isVolumeOffsetAvailable(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public mute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public muteGroup(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setVolumeGroup(IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setVolumeOffset(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unmute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unmuteGroup(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothVolumeControlCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method