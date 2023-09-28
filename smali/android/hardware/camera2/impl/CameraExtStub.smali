# classes.dex

.class public Landroid/hardware/camera2/impl/CameraExtStub;
.super Ljava/lang/Object;


# static fields
.field private static final QCOM_IMPL_CLASS_NAME:Ljava/lang/String; = "android.hardware.camera2.impl.CameraExtImplQcom"

.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_IMPL_CLASS_NAME:Ljava/lang/String; = "android.hardware.camera2.impl.CameraExtImplXiaoMi"

.field private static volatile sInstance:Landroid/hardware/camera2/CameraExt;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/hardware/camera2/impl/CameraExtStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->TAG:Ljava/lang/String;

    const-string v0, "android.hardware.camera2.impl.CameraExtImplXiaoMi"

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtStub;->initInstance(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v1, "android.hardware.camera2.impl.CameraExtImplQcom"

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtStub;->initInstance(Ljava/lang/String;)Z

    :cond_15
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_10

    sget-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/hardware/camera2/CameraExt;->addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static cameraClosed(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->cameraClosed(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static cameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->cameraOpened(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;
    .registers 3

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hideCamera()Z
    .registers 1

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0}, Landroid/hardware/camera2/CameraExt;->hideCamera()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static initCamera(Landroid/hardware/Camera;I)V
    .registers 3

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->initCamera(Landroid/hardware/Camera;I)V

    :cond_9
    return-void
.end method

.method public static initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private static initInstance(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraExt;

    sput-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    sget-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_26} :catch_27
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_26} :catch_27

    :cond_26
    goto :goto_44

    :catch_27
    move-exception v0

    sget-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    return v0
.end method

.method public static isAuxCameraClient(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->isAuxCameraClient(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isCameraSoundEnforced()Z
    .registers 1

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0}, Landroid/hardware/camera2/CameraExt;->isCameraSoundEnforced()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isCustomStreamConfigurationEnabled()Z
    .registers 1

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0}, Landroid/hardware/camera2/CameraExt;->isCustomStreamConfigurationEnabled()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 2

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 3

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 3

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isPrivilegedApp(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->isPrivilegedApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 2

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/StreamConfigurationDuration;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_10

    sget-object v1, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/hardware/camera2/CameraExt;->limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static releaseCamera(Landroid/hardware/Camera;)V
    .registers 2

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/CameraExt;->releaseCamera(Landroid/hardware/Camera;)V

    :cond_9
    return-void
.end method

.method public static releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/hardware/camera2/impl/CameraExtStub;->sInstance:Landroid/hardware/camera2/CameraExt;

    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/CameraExt;->releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V

    :cond_9
    return-void
.end method
