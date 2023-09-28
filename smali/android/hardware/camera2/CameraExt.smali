# classes.dex

.class public interface abstract Landroid/hardware/camera2/CameraExt;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
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
.end method

.method public abstract cameraClosed(Ljava/lang/String;)V
.end method

.method public abstract cameraOpened(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getLimitedSensorSize(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Size;
.end method

.method public abstract hideCamera()Z
.end method

.method public abstract initCamera(Landroid/hardware/Camera;I)V
.end method

.method public abstract initCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
.end method

.method public abstract isAuxCameraClient(Ljava/lang/String;)Z
.end method

.method public isCameraSoundEnforced()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isCustomStreamConfigurationEnabled()Z
.end method

.method public abstract isExposeCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
.end method

.method public abstract isInputConfigurationFormatValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
.end method

.method public abstract isInputConfigurationSizeValid(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/params/InputConfiguration;)Z
.end method

.method public abstract isPrivilegedApp(Ljava/lang/String;)Z
.end method

.method public abstract isVirtualCamera(Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
.end method

.method public abstract limitMiResolution(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
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
.end method

.method public abstract releaseCamera(Landroid/hardware/Camera;)V
.end method

.method public abstract releaseCameraDevice(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
.end method
