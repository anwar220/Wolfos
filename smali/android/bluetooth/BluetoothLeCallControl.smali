# classes.dex

.class public final Landroid/bluetooth/BluetoothLeCallControl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;,
        Landroid/bluetooth/BluetoothLeCallControl$Callback;,
        Landroid/bluetooth/BluetoothLeCallControl$TerminationReason;,
        Landroid/bluetooth/BluetoothLeCallControl$Result;
    }
.end annotation


# static fields
.field public static final CAPABILITY_HOLD_CALL:I = 0x1

.field public static final CAPABILITY_JOIN_CALLS:I = 0x2

.field private static final DBG:Z = true

.field private static final MESSAGE_TBS_SERVICE_CONNECTED:I = 0x66

.field private static final MESSAGE_TBS_SERVICE_DISCONNECTED:I = 0x67

.field private static final REG_TIMEOUT:I = 0x2710

.field public static final RESULT_ERROR_APPLICATION:I = 0x3

.field public static final RESULT_ERROR_INVALID_URI:I = 0x2

.field public static final RESULT_ERROR_UNKNOWN_CALL_ID:I = 0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothLeCallControl"

.field public static final TERMINATION_REASON_CLIENT_HANGUP:I = 0x6

.field public static final TERMINATION_REASON_FAIL:I = 0x1

.field public static final TERMINATION_REASON_INVALID_URI:I = 0x0

.field public static final TERMINATION_REASON_LINE_BUSY:I = 0x4

.field public static final TERMINATION_REASON_NETWORK_CONGESTION:I = 0x5

.field public static final TERMINATION_REASON_NO_ANSWER:I = 0x8

.field public static final TERMINATION_REASON_NO_SERVICE:I = 0x7

.field public static final TERMINATION_REASON_REMOTE_HANGUP:I = 0x2

.field public static final TERMINATION_REASON_SERVER_HANGUP:I = 0x3

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

.field private mCcid:I

.field private final mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mService:Landroid/bluetooth/IBluetoothLeCallControl;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mToken:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothLeCallControl;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCcid(Landroid/bluetooth/BluetoothLeCallControl;I)V
    .registers 2

    iput p1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Landroid/bluetooth/BluetoothLeCallControl;Landroid/bluetooth/IBluetoothLeCallControl;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoBind(Landroid/bluetooth/BluetoothLeCallControl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->doBind()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothLeCallControl;)V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->doUnbind()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    new-instance v0, Landroid/bluetooth/BluetoothLeCallControl$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothLeCallControl$1;-><init>(Landroid/bluetooth/BluetoothLeCallControl;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothLeCallControl$2;-><init>(Landroid/bluetooth/BluetoothLeCallControl;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    new-instance v1, Landroid/bluetooth/BluetoothLeCallControl$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothLeCallControl$3;-><init>(Landroid/bluetooth/BluetoothLeCallControl;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    iput-object p2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_46

    :try_start_3a
    invoke-interface {v1, v0}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception v0

    const-string v2, "BluetoothLeCallControl"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    :goto_46
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->doBind()Z

    return-void
.end method

.method private doBind()Z
    .registers 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-nez v1, :cond_1f

    :try_start_7
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    const/16 v2, 0x1b

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v1, v2, v3}, Landroid/bluetooth/IBluetoothManager;->bindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17
    .catchall {:try_start_7 .. :try_end_15} :catchall_22

    :try_start_15
    monitor-exit v0

    return v1

    :catch_17
    move-exception v1

    const-string v2, "BluetoothLeCallControl"

    const-string v3, "Unable to bind TelephoneBearerService"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1f
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private doUnbind()V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_29

    if-eqz v1, :cond_27

    const/4 v1, 0x0

    :try_start_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    const/16 v3, 0x1b

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mConnection:Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothManager;->unbindBluetoothProfileService(ILandroid/bluetooth/IBluetoothProfileServiceConnection;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_1a
    .catchall {:try_start_8 .. :try_end_15} :catchall_18

    :goto_15
    :try_start_15
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_29

    goto :goto_27

    :catchall_18
    move-exception v2

    goto :goto_23

    :catch_1a
    move-exception v2

    :try_start_1b
    const-string v3, "BluetoothLeCallControl"

    const-string v4, "Unable to unbind TelephoneBearerService"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_18

    goto :goto_15

    :goto_23
    :try_start_23
    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    nop

    throw v2

    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private getService()Landroid/bluetooth/IBluetoothLeCallControl;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mService:Landroid/bluetooth/IBluetoothLeCallControl;

    return-object v0
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

    const-string v0, "BluetoothLeCallControl"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method close()V
    .registers 5

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeCallControl;->unregisterBearer()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_b
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception v1

    const-string v2, "BluetoothLeCallControl"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->doUnbind()V

    return-void
.end method

.method public currentCallsList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeCall;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    if-nez v0, :cond_e

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    :try_start_e
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->currentCallsList(ILjava/util/List;Landroid/content/AttributionSource;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_3e

    :catch_16
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3e
    return-void
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

    const-string/jumbo v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentControlId()I
    .registers 2

    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    return v0
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

    const-string/jumbo v1, "not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public networkStateChanged(Ljava/lang/String;I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "networkStateChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", technology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_28

    return-void

    :cond_28
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    if-nez v0, :cond_34

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    :try_start_34
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->networkStateChanged(ILjava/lang/String;ILandroid/content/AttributionSource;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_64

    :catch_3c
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-void
.end method

.method public onCallAdded(Landroid/bluetooth/BluetoothLeCall;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallAdded: call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2a
    :try_start_2a
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->callAdded(ILandroid/bluetooth/BluetoothLeCall;Landroid/content/AttributionSource;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_32

    goto :goto_5a

    :catch_32
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-void
.end method

.method public onCallRemoved(Ljava/util/UUID;I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callRemoved: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    if-nez v0, :cond_29

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    :try_start_29
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v3, p2, v4}, Landroid/bluetooth/IBluetoothLeCallControl;->callRemoved(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_35} :catch_36

    goto :goto_5e

    :catch_36
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5e
    return-void
.end method

.method public onCallStateChanged(Ljava/util/UUID;I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callStateChanged: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_27

    return-void

    :cond_27
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    if-nez v0, :cond_33

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    :try_start_33
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, v3, p2, v4}, Landroid/bluetooth/IBluetoothLeCallControl;->callStateChanged(ILandroid/os/ParcelUuid;ILandroid/content/AttributionSource;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3f} :catch_40

    goto :goto_68

    :catch_40
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    return-void
.end method

.method public registerBearer(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)Z
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/bluetooth/BluetoothLeCallControl$Callback;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    const-string v3, "BluetoothLeCallControl"

    const-string/jumbo v0, "registerBearer"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_86

    iget v0, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    const/4 v4, 0x0

    if-eqz v0, :cond_14

    return v4

    :cond_14
    move-object/from16 v14, p1

    iput-object v14, v1, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v15

    if-nez v15, :cond_24

    const-string v0, "Proxy not attached to service"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_24
    iget-object v0, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    if-eqz v0, :cond_2e

    const-string v0, "Bearer can be opened only once"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2e
    iput-object v2, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    const/4 v13, 0x0

    :try_start_31
    new-instance v7, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;

    move-object/from16 v12, p6

    invoke-direct {v7, v1, v12, v2}, Landroid/bluetooth/BluetoothLeCallControl$CallbackWrapper;-><init>(Landroid/bluetooth/BluetoothLeCallControl;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeCallControl$Callback;)V

    iget-object v6, v1, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    iget-object v0, v1, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3c} :catch_59

    move-object v5, v15

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object v4, v13

    move-object v13, v0

    :try_start_49
    invoke-interface/range {v5 .. v13}, Landroid/bluetooth/IBluetoothLeCallControl;->registerBearer(Ljava/lang/String;Landroid/bluetooth/IBluetoothLeCallControlCallback;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILandroid/content/AttributionSource;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4c} :catch_57

    nop

    iget v0, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_55

    iput-object v4, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    const/4 v3, 0x0

    return v3

    :cond_55
    const/4 v0, 0x1

    return v0

    :catch_57
    move-exception v0

    goto :goto_5b

    :catch_59
    move-exception v0

    move-object v4, v13

    :goto_5b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    iput-object v4, v1, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    const/4 v3, 0x0

    return v3

    :cond_86
    move-object/from16 v14, p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "null parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestResult(II)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestResult: requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeCallControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v0, :cond_28

    return-void

    :cond_28
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v0

    if-nez v0, :cond_34

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    :try_start_34
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, v2, p1, p2, v3}, Landroid/bluetooth/IBluetoothLeCallControl;->requestResult(IIILandroid/content/AttributionSource;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_64

    :catch_3c
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-void
.end method

.method public unregisterBearer()V
    .registers 7

    const-string v0, "BluetoothLeCallControl"

    const-string/jumbo v1, "unregisterBearer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothLeCallControl;->getService()Landroid/bluetooth/IBluetoothLeCallControl;

    move-result-object v1

    if-nez v1, :cond_19

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    iget v2, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCcid:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mCallback:Landroid/bluetooth/BluetoothLeCallControl$Callback;

    :try_start_21
    iget-object v3, p0, Landroid/bluetooth/BluetoothLeCallControl;->mToken:Ljava/lang/String;

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeCallControl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v1, v3, v4}, Landroid/bluetooth/IBluetoothLeCallControl;->unregisterBearer(Ljava/lang/String;Landroid/content/AttributionSource;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_51

    :catch_29
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-void
.end method
