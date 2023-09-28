# classes.dex

.class public abstract Landroid/hardware/camera2/impl/CameraExtImplBase;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/camera2/CameraExt;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraClosed(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public cameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public isAuxCameraClient(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "vendor.camera.aux.packagelist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraExtImplBase;->isPackageInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected isPackageInList(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f

    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v1, p2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v0, 0x1

    return v0

    :cond_2e
    goto :goto_1a

    :cond_2f
    return v0
.end method

.method public isPrivilegedApp(Ljava/lang/String;)Z
    .registers 4

    const-string/jumbo v0, "persist.vendor.camera.privapp.list"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/impl/CameraExtImplBase;->isPackageInList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
