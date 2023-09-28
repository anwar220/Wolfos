# classes.dex

.class public final Landroid/bluetooth/BluetoothVcp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final A2DP:I = 0x1

.field public static final ACTION_CONNECTION_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.vcp.profile.action.CONNECTION_MODE_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.vcp.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_MUTE_CHANGED:Ljava/lang/String; = "android.bluetooth.vcp.profile.action.MUTE_CHANGED"

.field public static final ACTION_VOLUME_CHANGED:Ljava/lang/String; = "android.bluetooth.vcp.profile.action.VOLUME_CHANGED"

.field public static final CALL_STREAM:I = 0x0

.field private static final DBG:Z = true

.field public static final EXTRA_MODE:Ljava/lang/String; = "android.bluetooth.vcp.profile.extra.MODE"

.field public static final EXTRA_MUTE:Ljava/lang/String; = "android.bluetooth.vcp.profile.extra.MUTE"

.field public static final EXTRA_VOLUME:Ljava/lang/String; = "android.bluetooth.vcp.profile.extra.VOLUME"

.field public static final HFP:I = 0x2

.field public static final LE_MEDIA:I = 0x10

.field public static final LE_VOICE:I = 0x2000

.field public static final MEDIA_STREAM:I = 0x1

.field public static final MODE_BROADCAST:I = 0x2

.field public static final MODE_NONE:I = 0x0

.field public static final MODE_UNICAST:I = 0x1

.field public static final MODE_UNICAST_BROADCAST:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothVcp"

.field private static final VDBG:Z = true


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAttributionSource:Landroid/content/AttributionSource;

.field private final mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/bluetooth/BluetoothProfileConnector<",
            "Landroid/bluetooth/IBluetoothVcp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroid/bluetooth/BluetoothVcp$1;

    const-class v0, Landroid/bluetooth/IBluetoothVcp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0x22

    const-string v4, "BluetoothVcp"

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/bluetooth/BluetoothVcp$1;-><init>(Landroid/bluetooth/BluetoothVcp;Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothVcp;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, p1, p2}, Landroid/bluetooth/BluetoothProfileConnector;->connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    return-void
.end method

.method private getService()Landroid/bluetooth/IBluetoothVcp;
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothVcp;

    return-object v0
.end method

.method private isEnabled()Z
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

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

    const-string v0, "BluetoothVcp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method close()V
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothVcp;->mProfileConnector:Landroid/bluetooth/BluetoothProfileConnector;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileConnector;->disconnect()V

    return-void
.end method

.method public finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothVcp;->close()V

    return-void
.end method

.method public getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAbsoluteVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    nop

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    const-string v1, "BluetoothVcp"

    const/4 v2, -0x1

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :try_start_32
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->getAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_39

    return v1

    :catch_39
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5a
    if-nez v0, :cond_61

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return v2
.end method

.method public getActiveProfile(I)I
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveProfile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    nop

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    const-string v1, "BluetoothVcp"

    const/4 v2, -0x1

    if-eqz v0, :cond_54

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_54

    :try_start_2c
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->getActiveProfile(ILandroid/content/AttributionSource;)I

    move-result v1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_32} :catch_33

    return v1

    :catch_33
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_54
    if-nez v0, :cond_5b

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    return v2
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

    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionMode(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    nop

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    const-string v1, "BluetoothVcp"

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :try_start_32
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->getConnectionMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_39

    return v1

    :catch_39
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5a
    if-nez v0, :cond_61

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    nop

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    const-string v1, "BluetoothVcp"

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :try_start_32
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_39

    return v1

    :catch_39
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5a
    if-nez v0, :cond_61

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return v2
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

    const-string v0, "getDevicesMatchingStates()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public isMute(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    nop

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    const-string v1, "BluetoothVcp"

    const/4 v2, 0x0

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :try_start_32
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, v3}, Landroid/bluetooth/IBluetoothVcp;->isMute(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v1
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_38} :catch_39

    return v1

    :catch_39
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5a
    if-nez v0, :cond_61

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return v2
.end method

.method public setAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAbsoluteVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    nop

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    const-string v1, "BluetoothVcp"

    if-eqz v0, :cond_59

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_59

    :try_start_32
    iget-object v2, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v2}, Landroid/bluetooth/IBluetoothVcp;->setAbsoluteVolume(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_37} :catch_38

    return-void

    :catch_38
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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_59
    if-nez v0, :cond_60

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    return-void
.end method

.method public setActiveProfile(Landroid/bluetooth/BluetoothDevice;II)Z
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setActiveProfile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    nop

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    const-string v1, "BluetoothVcp"

    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_5b

    :try_start_33
    iget-object v3, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, p3, v3}, Landroid/bluetooth/IBluetoothVcp;->setActiveProfile(Landroid/bluetooth/BluetoothDevice;IILandroid/content/AttributionSource;)Z

    move-result v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_39} :catch_3a

    return v1

    :catch_3a
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

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5b
    if-nez v0, :cond_62

    const-string v3, "Proxy not attached to service"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    return v2
.end method

.method public setMute(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") enableMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothVcp;->log(Ljava/lang/String;)V

    nop

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->getService()Landroid/bluetooth/IBluetoothVcp;

    move-result-object v0

    const-string v1, "BluetoothVcp"

    if-eqz v0, :cond_5d

    invoke-direct {p0}, Landroid/bluetooth/BluetoothVcp;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-static {p1}, Landroid/bluetooth/BluetoothVcp;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_5d

    :try_start_36
    iget-object v2, p0, Landroid/bluetooth/BluetoothVcp;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-interface {v0, p1, p2, v2}, Landroid/bluetooth/IBluetoothVcp;->setMute(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
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

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5d
    if-nez v0, :cond_64

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-void
.end method
