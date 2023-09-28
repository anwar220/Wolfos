# classes.dex

.class public final Landroid/bluetooth/le/AdvertisingSet;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertisingSet"


# instance fields
.field private mAdvertiserId:I

.field private mAttributionSource:Landroid/content/AttributionSource;

.field private final mGatt:Landroid/bluetooth/IBluetoothGatt;


# direct methods
.method constructor <init>(ILandroid/bluetooth/IBluetoothManager;Landroid/content/AttributionSource;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iput-object p3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    :try_start_7
    invoke-interface {p2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_f

    nop

    return-void

    :catch_f
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public enableAdvertising(ZII)V
    .registers 12

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v6, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Landroid/bluetooth/IBluetoothGatt;->enableAdvertisingSet(IZIILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_1d} :catch_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1f

    nop

    goto :goto_28

    :catch_1f
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void
.end method

.method public getAdvertiserId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    return v0
.end method

.method public getOwnAddress()V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->getOwnAddress(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    goto :goto_24

    :catch_1b
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method setAdvertiserId(I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    return-void
.end method

.method public setAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    goto :goto_24

    :catch_1b
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public setAdvertisingParameters(Landroid/bluetooth/le/AdvertisingSetParameters;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    goto :goto_24

    :catch_1b
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public setPeriodicAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    goto :goto_24

    :catch_1b
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public setPeriodicAdvertisingEnabled(Z)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingEnable(IZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    goto :goto_24

    :catch_1b
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public setPeriodicAdvertisingParameters(Landroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    goto :goto_24

    :catch_1b
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method public setScanResponseData(Landroid/bluetooth/le/AdvertiseData;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    iget-object v3, p0, Landroid/bluetooth/le/AdvertisingSet;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, p1, v3, v0}, Landroid/bluetooth/IBluetoothGatt;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1b

    nop

    goto :goto_24

    :catch_1b
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method
