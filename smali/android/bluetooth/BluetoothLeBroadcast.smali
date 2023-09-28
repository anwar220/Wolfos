# classes.dex

.class public final Landroid/bluetooth/BluetoothLeBroadcast;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeBroadcast$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothLeBroadcast"

.field private static final VDBG:Z


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

.field private final mCallbackExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothLeBroadcast$Callback;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseGuard:Landroid/util/CloseGuard;

.field private final mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothLeAudio;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/content/AttributionSource;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/bluetooth/IBluetoothLeBroadcastCallback;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackExecutorMap(Landroid/bluetooth/BluetoothLeBroadcast;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetService(Landroid/bluetooth/BluetoothLeBroadcast;)Landroid/bluetooth/IBluetoothLeAudio;
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/bluetooth/BluetoothLeBroadcast$1;

    const-class v0, Landroid/bluetooth/IBluetoothLeAudio;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x1a

    const-string v4, "BluetoothLeAudioBroadcast"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothLeBroadcast$1;-><init>(Landroid/bluetooth/BluetoothLeBroadcast;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcast$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcast$2;-><init>(Landroid/bluetooth/BluetoothLeBroadcast;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcast$3;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcast$3;-><init>(Landroid/bluetooth/BluetoothLeBroadcast;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_4b

    :try_start_41
    invoke-interface {v1, v0}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_4b

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_4b
    :goto_4b
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v0, v2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private getService()Landroid/bluetooth/IBluetoothLeAudio;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothLeAudio;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "BluetoothLeBroadcast"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_8
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v1

    const-string v2, "BluetoothLeBroadcast"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    return-void
.end method

.method protected finalize()V
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCloseGuard:Landroid/util/CloseGuard;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    :cond_7
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->close()V

    return-void
.end method

.method public getAllBroadcastMetadata()Ljava/util/List;
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastMetadata;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v2, "BluetoothLeBroadcast"

    if-nez v0, :cond_1e

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_6a

    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6a

    :try_start_24
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v3}, Landroid/bluetooth/IBluetoothLeAudio;->getAllBroadcastMetadata(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_3b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_24 .. :try_end_3b} :catch_42
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_3b} :catch_3c

    return-object v4

    :catch_3c
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_42
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    :goto_6a
    return-object v1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LE Audio Broadcasts are not connection-oriented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaximumNumberOfBroadcasts()I
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, "BluetoothLeBroadcast"

    if-nez v0, :cond_1c

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_70

    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_70

    :try_start_22
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->getMaximumNumberOfBroadcasts(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_41
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_41} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_42

    return v2

    :catch_42
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_48
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    return v2
.end method

.method public isPlaying(I)Z
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "BluetoothLeBroadcast"

    if-nez v0, :cond_1c

    const-string v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_70

    :cond_1c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_70

    :try_start_22
    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v4

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v5, v4}, Landroid/bluetooth/IBluetoothLeAudio;->isPlaying(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_41
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_22 .. :try_end_41} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_41} :catch_42

    return v2

    :catch_42
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_48
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    :goto_70
    return v2
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "registerCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_13
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_90

    return-void

    :cond_2a
    :try_start_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v1

    if-eqz v1, :cond_47

    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v3, v4, v2}, Landroid/bluetooth/IBluetoothLeAudio;->registerLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2a .. :try_end_47} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_47} :catch_48
    .catchall {:try_start_2a .. :try_end_47} :catchall_90

    :cond_47
    goto :goto_79

    :catch_48
    move-exception v1

    :try_start_49
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catch_4e
    move-exception v1

    const-string v2, "BluetoothLeBroadcast"

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

    :cond_79
    :goto_79
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_88

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has already been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_49 .. :try_end_92} :catchall_90

    throw v1
.end method

.method public startBroadcast(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[B)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "contentMetadata cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "startBroadcasting"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v1, "BluetoothLeBroadcast"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_37

    :cond_25
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeAudio;->startBroadcast(Landroid/bluetooth/BluetoothLeAudioContentMetadata;[BLandroid/content/AttributionSource;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_37

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_37
    :goto_37
    return-void
.end method

.method public stopBroadcast(I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "disableBroadcastMode"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    if-nez v0, :cond_1f

    const-string v1, "BluetoothLeBroadcast"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_31

    :cond_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_31

    :try_start_25
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v1}, Landroid/bluetooth/IBluetoothLeAudio;->stopBroadcast(ILandroid/content/AttributionSource;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_31
    :goto_31
    return-void
.end method

.method public unregisterCallback(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "unregisterCallback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6e

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_76

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallbackExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6d

    :try_start_1f
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-static {}, Lcom/android/modules/utils/SynchronousResultReceiver;->get()Lcom/android/modules/utils/SynchronousResultReceiver;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mCallback:Landroid/bluetooth/IBluetoothLeBroadcastCallback;

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v3, v1}, Landroid/bluetooth/IBluetoothLeAudio;->unregisterLeBroadcastCallback(Landroid/bluetooth/IBluetoothLeBroadcastCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    invoke-static {}, Landroid/bluetooth/BluetoothUtils;->getSyncTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/modules/utils/SynchronousResultReceiver;->awaitResultNoInterrupt(Ljava/time/Duration;)Lcom/android/modules/utils/SynchronousResultReceiver$Result;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/modules/utils/SynchronousResultReceiver$Result;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1f .. :try_end_3c} :catch_43
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_3c} :catch_43
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3c} :catch_3d

    goto :goto_6d

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_43
    move-exception v0

    const-string v1, "BluetoothLeBroadcast"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    :try_start_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This callback has not been registered"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_76

    throw v1
.end method

.method public updateBroadcast(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "contentMetadata cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "updateBroadcast"

    invoke-static {v0}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->getService()Landroid/bluetooth/IBluetoothLeAudio;

    move-result-object v0

    if-nez v0, :cond_25

    const-string v1, "BluetoothLeBroadcast"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeBroadcast;->log(Ljava/lang/String;)V

    goto :goto_37

    :cond_25
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeBroadcast;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    :try_start_2b
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v1}, Landroid/bluetooth/IBluetoothLeAudio;->updateBroadcast(ILandroid/bluetooth/BluetoothLeAudioContentMetadata;Landroid/content/AttributionSource;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_37

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_37
    :goto_37
    return-void
.end method
