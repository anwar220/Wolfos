# classes.dex

.class public abstract Landroid/bluetooth/BluetoothProfileConnector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;


# instance fields
.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mCloseGuard:Landroid/util/CloseGuard;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mProfileId:I

.field private final mProfileName:Ljava/lang/String;

.field private final mProfileProxy:Landroid/bluetooth/BluetoothProfile;

.field private volatile mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mServiceName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProfileId(Landroid/bluetooth/BluetoothProfileConnector;)I
    .registers 1

    iget p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileProxy(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceListener(Landroid/bluetooth/BluetoothProfileConnector;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .registers 1

    iget-object p0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoBind(Landroid/bluetooth/BluetoothProfileConnector;)Z
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doBind()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoUnbind(Landroid/bluetooth/BluetoothProfileConnector;)V
    .registers 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogDebug(Landroid/bluetooth/BluetoothProfileConnector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x3

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothProfileConnector;->USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothProfile;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    new-instance v0, Landroid/bluetooth/BluetoothProfileConnector$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProfileConnector$1;-><init>(Landroid/bluetooth/BluetoothProfileConnector;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v0, Landroid/bluetooth/BluetoothProfileConnector$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothProfileConnector$2;-><init>(Landroid/bluetooth/BluetoothProfileConnector;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    iput p2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileId:I

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileProxy:Landroid/bluetooth/BluetoothProfile;

    iput-object p3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    iput-object p4, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method private doBind()Z
    .registers 8

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    if-nez v1, :cond_69

    const-string v1, "Binding service..."

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v2, "doUnbind"

    invoke-virtual {v1, v2}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_6c

    const/4 v1, 0x0

    :try_start_14
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/bluetooth/BluetoothProfileConnector;->resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v3, :cond_38

    iget-object v4, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    sget-object v6, Landroid/bluetooth/BluetoothProfileConnector;->USER_HANDLE_CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5, v1, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_38

    :cond_37
    goto :goto_69

    :cond_38
    :goto_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_4e} :catch_50
    .catchall {:try_start_14 .. :try_end_4e} :catchall_6c

    :try_start_4e
    monitor-exit v0

    return v1

    :catch_50
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind service. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :cond_69
    :goto_69
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method private doUnbind()V
    .registers 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    const-string v1, "Unbinding service..."

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothProfileConnector;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v1}, Landroid/util/CloseGuard;->close()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3e

    const/4 v1, 0x0

    :try_start_12
    iget-object v2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothProfileConnector;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_19} :catch_1e
    .catchall {:try_start_12 .. :try_end_19} :catchall_1c

    :try_start_19
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_3e

    :goto_1b
    goto :goto_3c

    :catchall_1c
    move-exception v2

    goto :goto_38

    :catch_1e
    move-exception v2

    :try_start_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unbind service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1f .. :try_end_35} :catchall_1c

    :try_start_35
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    goto :goto_1b

    :goto_38
    iput-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    nop

    throw v2

    :cond_3c
    :goto_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private logDebug(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mProfileName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resolveSystemService(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .registers 11

    nop

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v1, 0x0

    return-object v1

    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_28

    goto :goto_3a

    :cond_28
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_3d

    move-object v1, v4

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6a
    return-object v1
.end method


# virtual methods
.method connect(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .registers 7

    iput-object p1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_27

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_27

    :cond_1f
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Need BLUETOOTH permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    :goto_27
    if-eqz v0, :cond_46

    :try_start_29
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    goto :goto_46

    :catch_2f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register state change callback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    :cond_46
    :goto_46
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doBind()Z

    return-void
.end method

.method disconnect()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    :try_start_d
    iget-object v1, p0, Landroid/bluetooth/BluetoothProfileConnector;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unregister state change callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/BluetoothProfileConnector;->logError(Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    return-void
.end method

.method public finalize()V
    .registers 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-direct {p0}, Landroid/bluetooth/BluetoothProfileConnector;->doUnbind()V

    return-void
.end method

.method getService()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothProfileConnector;->mService:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getServiceInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
