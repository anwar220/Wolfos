# classes.dex

.class public abstract Landroid/bluetooth/BluetoothGroupCallback;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(ILandroid/bluetooth/BluetoothDevice;)V
    .registers 3

    return-void
.end method

.method public onExclusiveAccessAvailable(ILandroid/bluetooth/BluetoothDevice;)V
    .registers 3

    return-void
.end method

.method public onExclusiveAccessChanged(IIILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onExclusiveAccessStatusFetched(II)V
    .registers 3

    return-void
.end method

.method public onGroupClientAppRegistered(II)V
    .registers 3

    return-void
.end method

.method public onGroupDeviceFound(ILandroid/bluetooth/BluetoothDevice;)V
    .registers 3

    return-void
.end method

.method public onGroupDiscoveryStatusChanged(III)V
    .registers 4

    return-void
.end method

.method public onNewGroupFound(ILandroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)V
    .registers 4

    return-void
.end method
