# classes.dex

.class public final Landroid/bluetooth/le/PeriodicAdvertisingManager;
.super Ljava/lang/Object;


# static fields
.field private static final SKIP_MAX:I = 0x1f3

.field private static final SKIP_MIN:I = 0x0

.field private static final SYNC_STARTING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PeriodicAdvertisingManager"

.field private static final TIMEOUT_MAX:I = 0x4000

.field private static final TIMEOUT_MIN:I = 0xa


# instance fields
.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/PeriodicAdvertisingCallback;",
            "Landroid/bluetooth/le/IPeriodicAdvertisingCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/PeriodicAdvertisingManager;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    return-void
.end method

.method private wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .registers 4

    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V

    return-object v0
.end method


# virtual methods
.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .registers 16

    const-string v0, "PeriodicAdvertisingManager"

    if-eqz p4, :cond_94

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_82

    const-string/jumbo v1, "timeout must be between 10 and 16384"

    if-ltz p2, :cond_7c

    const/16 v2, 0x1f3

    if-gt p2, v2, :cond_7c

    const/16 v2, 0xa

    if-lt p3, v2, :cond_76

    const/16 v2, 0x4000

    if-gt p3, v2, :cond_76

    :try_start_1f
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_25} :catch_5f

    nop

    if-nez p5, :cond_32

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p5, v1

    :cond_32
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v1

    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v3, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3b
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    move-object v9, v3

    iget-object v7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3b .. :try_end_56} :catch_58
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_56} :catch_58

    nop

    return-void

    :catch_58
    move-exception v3

    const-string v4, "Failed to register sync - "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_5f
    move-exception v1

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v6

    const/4 v9, 0x2

    move-object v3, p4

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v9}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    return-void

    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scanResult must contain a valid sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scanResult can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .registers 16

    const-string v0, "PeriodicAdvertisingManager"

    if-eqz p4, :cond_50

    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_49

    nop

    if-nez p5, :cond_17

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p5, v1

    :cond_17
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v1

    if-eqz v1, :cond_41

    :try_start_1d
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    move-object v9, v3

    iget-object v7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    move-object v8, v9

    invoke-interface/range {v2 .. v8}, Landroid/bluetooth/IBluetoothGatt;->transferSetInfo(Landroid/bluetooth/BluetoothDevice;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_38} :catch_3a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1d .. :try_end_38} :catch_3a

    nop

    return-void

    :catch_3a
    move-exception v3

    const-string v4, "Failed to register sync - "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback was not properly registered"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_49
    move-exception v1

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public transferSync(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 12

    const-string v0, "PeriodicAdvertisingManager"

    :try_start_2
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_2b

    nop

    :try_start_9
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    iget-object v6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothGatt;->transferSync(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_22} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_22} :catch_24

    nop

    return-void

    :catch_24
    move-exception v1

    const-string v3, "Failed to register sync - "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2b
    move-exception v1

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    move-object v0, v3

    goto :goto_3c

    :cond_4a
    if-eqz v0, :cond_50

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_50
    return-void
.end method

.method public unregisterSync(Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .registers 8

    const-string v0, "PeriodicAdvertisingManager"

    if-eqz p1, :cond_42

    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_3b

    nop

    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    if-eqz v2, :cond_33

    :try_start_15
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v2, v4, v3}, Landroid/bluetooth/IBluetoothGatt;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/le/BluetoothLeUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_15 .. :try_end_2a} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_2a} :catch_2c

    nop

    return-void

    :catch_2c
    move-exception v3

    const-string v4, "Failed to cancel sync creation - "

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback was not properly registered"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3b
    move-exception v1

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
