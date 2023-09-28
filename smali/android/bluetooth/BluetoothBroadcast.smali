# classes.dex

.class public final Landroid/bluetooth/BluetoothBroadcast;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_BROADCAST_AUDIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.broadcast.profile.action.BROADCAST_AUDIO_STATE_CHANGED"

.field public static final ACTION_BROADCAST_ENCRYPTION_KEY_GENERATED:Ljava/lang/String; = "android.bluetooth.broadcast.profile.action.BROADCAST_ENCRYPTION_KEY_GENERATED"

.field public static final ACTION_BROADCAST_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.broadcast.profile.action.BROADCAST_STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final STATE_DISABLED:I = 0xa

.field public static final STATE_DISABLING:I = 0xd

.field public static final STATE_ENABLED:I = 0xc

.field public static final STATE_ENABLING:I = 0xb

.field public static final STATE_NOT_PLAYING:I = 0xb

.field public static final STATE_PLAYING:I = 0xa

.field public static final STATE_STREAMING:I = 0xe

.field private static final TAG:Ljava/lang/String; = "BluetoothBroadcast"

.field private static final VDBG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothBroadcast;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/bluetooth/BluetoothBroadcast$1;

    const-class v0, Landroid/bluetooth/IBluetoothBroadcast;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x21

    const-string v4, "BluetoothBroadcast"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothBroadcast$1;-><init>(Landroid/bluetooth/BluetoothBroadcast;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    return-void
.end method

.method private getService()Landroid/bluetooth/IBluetoothBroadcast;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothBroadcast;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    const-string v0, "BluetoothBroadcast"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public GetBroadcastStatus()I
    .registers 7

    const-string v0, "BluetoothBroadcast"

    const-string v1, "GetBroadcastStatus"

    invoke-static {v1}, Landroid/bluetooth/BluetoothBroadcast;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    :try_start_d
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->getService()Landroid/bluetooth/IBluetoothBroadcast;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_20

    iget-object v4, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v1, v4}, Landroid/bluetooth/IBluetoothBroadcast;->GetBroadcastStatus(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result v0

    return v0

    :cond_20
    if-nez v3, :cond_27

    const-string v4, "Proxy not attached to service"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_27} :catch_28

    :cond_27
    return v2

    :catch_28
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public GetEncryptionKey()[B
    .registers 7

    const-string v0, "BluetoothBroadcast"

    const-string v1, "GetBroadcastEncryptionKey"

    invoke-static {v1}, Landroid/bluetooth/BluetoothBroadcast;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->getService()Landroid/bluetooth/IBluetoothBroadcast;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, v1, v4}, Landroid/bluetooth/IBluetoothBroadcast;->GetEncryptionKey(Ljava/lang/String;Landroid/content/AttributionSource;)[B

    move-result-object v0

    return-object v0

    :cond_1f
    if-nez v3, :cond_26

    const-string v4, "Proxy not attached to service"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_26} :catch_27

    :cond_26
    return-object v2

    :catch_27
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public SetBroadcastMode(Z)Z
    .registers 8

    const-string v0, "BluetoothBroadcast"

    const-string v1, "EnableBroadcast"

    invoke-static {v1}, Landroid/bluetooth/BluetoothBroadcast;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->getService()Landroid/bluetooth/IBluetoothBroadcast;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v3, p1, v1, v4}, Landroid/bluetooth/IBluetoothBroadcast;->SetBroadcast(ZLjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    :cond_1f
    if-nez v3, :cond_26

    const-string v4, "Proxy not attached to service"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_26} :catch_27

    :cond_26
    return v2

    :catch_27
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

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public SetEncryption(ZIZ)Z
    .registers 14

    const-string v0, "BluetoothBroadcast"

    const-string v1, "SetEncryption"

    invoke-static {v1}, Landroid/bluetooth/BluetoothBroadcast;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    :try_start_c
    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->getService()Landroid/bluetooth/IBluetoothBroadcast;

    move-result-object v2

    move-object v9, v2

    if-eqz v9, :cond_25

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBroadcast;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v7, p0, Landroid/bluetooth/BluetoothBroadcast;->mAttributionSource:Landroid/content/AttributionSource;

    move-object v2, v9

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Landroid/bluetooth/IBluetoothBroadcast;->SetEncryption(ZIZLjava/lang/String;Landroid/content/AttributionSource;)Z

    move-result v0

    return v0

    :cond_25
    if-nez v9, :cond_2c

    const-string v2, "Proxy not attached to service"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_2c} :catch_2d

    :cond_2c
    return v8

    :catch_2d
    move-exception v2

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

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method close()V
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothBroadcast;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    return-void
.end method

.method public finalize()V
    .registers 1

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

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

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

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
