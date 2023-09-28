# classes.dex

.class public Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-class v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->TAG:Ljava/lang/String;

    :try_start_8
    const-string v0, "android.hardware.camera2.impl.BoostScreenBrightnessExtStubImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/BoostScreenBrightnessExt;

    sput-object v1, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_18} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_18} :catch_19
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_18} :catch_19

    :cond_18
    goto :goto_36

    :catch_19
    move-exception v0

    sget-object v1, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->TAG:Ljava/lang/String;

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

    :goto_36
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boostScreenBrightness(Z)V
    .registers 2

    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    if-eqz v0, :cond_9

    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/BoostScreenBrightnessExt;->boostScreenBrightness(Z)V

    :cond_9
    return-void
.end method

.method public static isExposeFrontFlash()Z
    .registers 1

    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    invoke-interface {v0}, Landroid/hardware/camera2/BoostScreenBrightnessExt;->isExposeFrontFlash()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isWhiteListValid(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/hardware/camera2/impl/BoostScreenBrightnessExtStub;->sInstance:Landroid/hardware/camera2/BoostScreenBrightnessExt;

    invoke-interface {v0, p0}, Landroid/hardware/camera2/BoostScreenBrightnessExt;->isWhiteListValid(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method
