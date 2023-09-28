# classes.dex

.class public final Landroid/bluetooth/BluetoothDeviceGroup;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACCESS_DENIED:I = 0x5

.field public static final ACCESS_GRANTED:I = 0x2

.field public static final ACCESS_RELEASED:I = 0x1

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.group.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ALL_DEVICES_GRANTED_ACCESS:I = 0x2

.field public static final APP_ID_MAX:I = 0xf

.field public static final APP_ID_MIN:I = 0x0

.field public static final APP_REGISTRATION_FAILED:I = 0x1

.field public static final APP_REGISTRATION_SUCCESSFUL:I = 0x0

.field private static final DBG:Z = true

.field public static final DISCOVERY_COMPLETED:I = 0x3

.field public static final DISCOVERY_NOT_STARTED_INVALID_PARAMS:I = 0x5

.field public static final DISCOVERY_STARTED_BY_APPL:I = 0x0

.field public static final DISCOVERY_STARTED_GROUP_PROP_CHANGED:I = 0x2

.field public static final DISCOVERY_STOPPED_BY_APPL:I = 0x1

.field public static final DISCOVERY_STOPPED_BY_TIMEOUT:I = 0x4

.field public static final EXCLUSIVE_ACCESS_RELEASED:I = 0x0

.field public static final EXCLUSIVE_ACCESS_RELEASED_BY_TIMEOUT:I = 0x1

.field public static final GROUP_DISCOVERY_STARTED:I = 0x0

.field public static final GROUP_DISCOVERY_STOPPED:I = 0x1

.field public static final GROUP_ID_MAX:I = 0xf

.field public static final GROUP_ID_MIN:I = 0x0

.field public static final INVALID_ACCESS_REQ_PARAMS:I = 0x6

.field public static final INVALID_APP_ID:I = 0x10

.field public static final INVALID_GROUP_ID:I = 0x10

.field public static final SOME_GRANTED_ACCESS_REASON_DISCONNECTION:I = 0x4

.field public static final SOME_GRANTED_ACCESS_REASON_TIMEOUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceGroup"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAppId:I

.field private mAppRegistered:Z

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mBluetoothGroupCallback:Landroid/bluetooth/IBluetoothGroupCallback$Stub;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mCallback:Landroid/bluetooth/BluetoothGroupCallback;

.field private mHandler:Landroid/os/Handler;

.field private final mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothDeviceGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppId(Landroid/bluetooth/BluetoothDeviceGroup;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Landroid/bluetooth/BluetoothDeviceGroup;)Landroid/bluetooth/BluetoothGroupCallback;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mCallback:Landroid/bluetooth/BluetoothGroupCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAppId(Landroid/bluetooth/BluetoothDeviceGroup;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAppRegistered(Landroid/bluetooth/BluetoothDeviceGroup;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOrQueueCallback(Landroid/bluetooth/BluetoothDeviceGroup;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceGroup;->runOrQueueCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    new-instance v0, Landroid/bluetooth/BluetoothDeviceGroup$1;

    const-class v1, Landroid/bluetooth/IBluetoothDeviceGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x20

    const-string v5, "BluetoothDeviceGroup"

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothDeviceGroup$1;-><init>(Landroid/bluetooth/BluetoothDeviceGroup;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    new-instance v1, Landroid/bluetooth/BluetoothDeviceGroup$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothDeviceGroup$2;-><init>(Landroid/bluetooth/BluetoothDeviceGroup;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v2, Landroid/bluetooth/BluetoothDeviceGroup$3;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothDeviceGroup$3;-><init>(Landroid/bluetooth/BluetoothDeviceGroup;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mBluetoothGroupCallback:Landroid/bluetooth/IBluetoothGroupCallback$Stub;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_4b

    :try_start_3f
    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_4b

    :catch_43
    move-exception v1

    const-string v2, "BluetoothDeviceGroup"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4b
    :goto_4b
    return-void
.end method

.method private getService()Landroid/bluetooth/IBluetoothDeviceGroup;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothDeviceGroup;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "BluetoothDeviceGroup"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runOrQueueCallback(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_11

    :try_start_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    :goto_7
    goto :goto_14

    :catch_8
    move-exception v0

    const-string v1, "BluetoothDeviceGroup"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_11
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_14
    return-void
.end method


# virtual methods
.method close()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-eqz v0, :cond_33

    :try_start_9
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothDeviceGroup;->unregisterGroupClientApp(ILandroid/content/AttributionSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_33

    :catch_11
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack:"

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

    const-string v3, "BluetoothDeviceGroup"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect : device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_23

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v3, "Proxy is not attached to Profile Service. Can\'t connect."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2f
    :try_start_2f
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->connect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_57

    :catch_37
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

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

    :goto_57
    const/4 v1, 0x1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect : device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_23

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v3, "Proxy is not attached to Profile Service. Can\'t disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2f
    :try_start_2f
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->disconnect(ILandroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_57

    :catch_37
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

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

    :goto_57
    const/4 v1, 0x1

    return v1
.end method

.method public finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->close()V

    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDiscoveredGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/DeviceGroup;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDeviceGroup;->getDiscoveredGroups(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDiscoveredGroups(Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/bluetooth/DeviceGroup;",
            ">;"
        }
    .end annotation

    const-string v0, "getDiscoveredGroups()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_12

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_12
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string v3, "Proxy is not attached to Profile Service. Can\'t fetch Groups."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1e
    :try_start_1e
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->getDiscoveredGroups(ZLandroid/content/AttributionSource;)Ljava/util/List;

    move-result-object v1
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_25

    return-object v1

    :catch_25
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    return-object v1
.end method

.method public getExclusiveAccessStatus(ILjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExclusiveAccessStatus() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_23

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v3, "Proxy is not attached to Profile Service. Can\'t get exclusive access status."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2f
    :try_start_2f
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, p2, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->getExclusiveAccessStatus(IILjava/util/List;Landroid/content/AttributionSource;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_57

    :catch_37
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

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

    :goto_57
    const/4 v1, 0x1

    return v1
.end method

.method public getGroup(I)Landroid/bluetooth/DeviceGroup;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothDeviceGroup;->getGroup(IZ)Landroid/bluetooth/DeviceGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(IZ)Landroid/bluetooth/DeviceGroup;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGroup() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_23

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v3, "Proxy is not attached to Profile Service. Can\'t fetch Group."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2f
    :try_start_2f
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->getDeviceGroup(IZLandroid/content/AttributionSource;)Landroid/bluetooth/DeviceGroup;

    move-result-object v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_36

    return-object v1

    :catch_36
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    return-object v1
.end method

.method public getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/bluetooth/BluetoothDeviceGroup;->getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Z)I

    move-result v0

    return v0
.end method

.method public getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Z)I
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRemoteDeviceGroupId() : device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/16 v1, 0x10

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_24

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_24
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v3, "Proxy is not attached to Profile Service.Can\'t get group id for device."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    :try_start_30
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->getRemoteDeviceGroupId(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;ZLandroid/content/AttributionSource;)I

    move-result v1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_36} :catch_37

    return v1

    :catch_37
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    return v1
.end method

.method public isGroupDiscoveryInProgress(I)Z
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isGroupDiscoveryInProgress() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_23

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v3, "Proxy is not attached to Profile Service.Can\'t get discovery status."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2f
    :try_start_2f
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->isGroupDiscoveryInProgress(ILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_35} :catch_36

    return v1

    :catch_36
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    return v1
.end method

.method public registerGroupClientApp(Landroid/bluetooth/BluetoothGroupCallback;Landroid/os/Handler;)Z
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerGroupClientApp() mAppRegistered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-eqz v0, :cond_26

    const-string v0, "App already registered."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_26
    iput-object p2, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mCallback:Landroid/bluetooth/BluetoothGroupCallback;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_36

    const-string v3, "Proxy not attached to Profile Service. Can\'t register App."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_36
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    :try_start_39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v5, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mBluetoothGroupCallback:Landroid/bluetooth/IBluetoothGroupCallback$Stub;

    iget-object v6, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v4, v5, v6}, Landroid/bluetooth/IBluetoothDeviceGroup;->registerGroupClientApp(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGroupCallback;Landroid/content/AttributionSource;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_49} :catch_4a

    goto :goto_6a

    :catch_4a
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

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

    :goto_6a
    return v1
.end method

.method public setExclusiveAccess(ILjava/util/List;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;I)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setExclusiveAccess() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", access value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_2e

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_3a

    const-string v3, "Proxy is not attached to Profile Service. Can\'t proceed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3a
    :try_start_3a
    iget v4, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v8, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v3, v0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-interface/range {v3 .. v8}, Landroid/bluetooth/IBluetoothDeviceGroup;->setExclusiveAccess(IILjava/util/List;ILandroid/content/AttributionSource;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_45} :catch_46

    goto :goto_66

    :catch_46
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

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

    :goto_66
    const/4 v1, 0x1

    return v1
.end method

.method public startGroupDiscovery(I)Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGroupDiscovery() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_24

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_24
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v3, "Proxy is not attached to Profile Service. Can\'t start group discovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    :try_start_30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iget v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v3, p1, v4}, Landroid/bluetooth/IBluetoothDeviceGroup;->startGroupDiscovery(IILandroid/content/AttributionSource;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_5c

    :catch_3c
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

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

    :goto_5c
    const/4 v1, 0x1

    return v1
.end method

.method public stopGroupDiscovery(I)Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopGroupDiscovery() : groupId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceGroup;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppRegistered:Z

    const/4 v1, 0x0

    const-string v2, "BluetoothDeviceGroup"

    if-nez v0, :cond_24

    const-string v0, "App not registered for Group operations. Register App using registerGroupClientApp"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_24
    invoke-direct {p0}, Landroid/bluetooth/BluetoothDeviceGroup;->getService()Landroid/bluetooth/IBluetoothDeviceGroup;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v3, "Proxy is not attached to Profile Service. Can\'t Stop group discovery"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_30
    :try_start_30
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAppId:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceGroup;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v1, p1, v3}, Landroid/bluetooth/IBluetoothDeviceGroup;->stopGroupDiscovery(IILandroid/content/AttributionSource;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_58

    :catch_38
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

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

    :goto_58
    const/4 v1, 0x1

    return v1
.end method
