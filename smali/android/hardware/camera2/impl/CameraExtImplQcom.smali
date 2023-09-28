# classes.dex

.class public Landroid/hardware/camera2/impl/CameraExtImplQcom;
.super Landroid/hardware/camera2/impl/CameraExtImplBase;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 7
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

    const/4 v0, 0x0

    return v0
.end method

.method public getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideCamera()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public initCamera(Landroid/hardware/Camera;I)V
    .registers 3

    return-void
.end method

.method public initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public isCustomStreamConfigurationEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .registers 7
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

    const/4 v0, 0x0

    return v0
.end method

.method public releaseCamera(Landroid/hardware/Camera;)V
    .registers 2

    return-void
.end method

.method public releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
