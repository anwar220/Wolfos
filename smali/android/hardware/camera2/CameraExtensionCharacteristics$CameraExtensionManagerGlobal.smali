# classes.dex

.class final Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraExtensionManagerGlobal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;
    }
.end annotation


# static fields
.field private static final GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

.field private static final PROXY_PACKAGE_NAME:Ljava/lang/String; = "com.android.cameraextensions"

.field private static final PROXY_SERVICE_NAME:Ljava/lang/String; = "com.android.cameraextensions.CameraExtensionsProxyService"

.field private static final TAG:Ljava/lang/String; = "CameraExtensionManagerGlobal"


# instance fields
.field private final PROXY_SERVICE_DELAY_MS:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

.field private final mLock:Ljava/lang/Object;

.field private mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

.field private mSupportsAdvancedExtensions:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmInitFuture(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProxy(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnection(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Landroid/content/ServiceConnection;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProxy(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSupportsAdvancedExtensions(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mSupportsAdvancedExtensions:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->PROXY_SERVICE_DELAY_MS:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mSupportsAdvancedExtensions:Z

    return-void
.end method

.method private connectToProxyLocked(Landroid/content/Context;)V
    .registers 10

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_84

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.cameraextensions"

    const-string v2, "com.android.cameraextensions.CameraExtensionsProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ro.vendor.camera.extensions.package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ro.vendor.camera.extensions.service"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, "CameraExtensionManagerGlobal"

    if-nez v3, :cond_5b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choosing the vendor camera extensions proxy package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choosing the vendor camera extensions proxy service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5b
    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture-IA;)V

    iput-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)V

    iput-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    const v3, 0x40000049  # 2.0000174f

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    :try_start_74
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;
    :try_end_7d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_74 .. :try_end_7d} :catch_7e

    goto :goto_84

    :catch_7e
    move-exception v3

    const-string v5, "Timed out while initializing proxy service!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    return-void
.end method

.method public static get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    return-object v0
.end method


# virtual methods
.method public areAdvancedExtensionsSupported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mSupportsAdvancedExtensions:Z

    return v0
.end method

.method public initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_d
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_d
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_d

    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_d
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public registerClient(Landroid/content/Context;)J
    .registers 8

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->connectToProxyLocked(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1e

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1c

    :try_start_c
    invoke-interface {v1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->registerClient()J

    move-result-wide v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_12
    .catchall {:try_start_c .. :try_end_10} :catchall_1e

    :try_start_10
    monitor-exit v0

    return-wide v1

    :catch_12
    move-exception v1

    const-string v4, "CameraExtensionManagerGlobal"

    const-string v5, "Failed to initialize extension! Extension service does  not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-wide v2

    :cond_1c
    monitor-exit v0

    return-wide v2

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public releaseSession()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v1, :cond_13

    :try_start_7
    invoke-interface {v1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->releaseSession()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_15

    goto :goto_13

    :catch_b
    move-exception v1

    :try_start_c
    const-string v2, "CameraExtensionManagerGlobal"

    const-string v3, "Failed to release session! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1
.end method

.method public unregisterClient(J)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_15

    if-eqz v1, :cond_13

    :try_start_7
    invoke-interface {v1, p1, p2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->unregisterClient(J)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_15

    goto :goto_13

    :catch_b
    move-exception v1

    :try_start_c
    const-string v2, "CameraExtensionManagerGlobal"

    const-string v3, "Failed to de-initialize extension! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1
.end method
