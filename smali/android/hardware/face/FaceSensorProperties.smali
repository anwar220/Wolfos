# classes.dex

.class public Landroid/hardware/face/FaceSensorProperties;
.super Landroid/hardware/biometrics/SensorProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/FaceSensorProperties$SensorType;
    }
.end annotation


# static fields
.field public static final TYPE_IR:I = 0x2

.field public static final TYPE_RGB:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field final mSensorType:I


# direct methods
.method public constructor <init>(IILjava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties$ComponentInfo;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/SensorProperties;-><init>(IILjava/util/List;)V

    iput p4, p0, Landroid/hardware/face/FaceSensorProperties;->mSensorType:I

    return-void
.end method

.method public static from(Landroid/hardware/face/FaceSensorPropertiesInternal;)Landroid/hardware/face/FaceSensorProperties;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->componentInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/ComponentInfoInternal;

    invoke-static {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->from(Landroid/hardware/biometrics/ComponentInfoInternal;)Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    new-instance v1, Landroid/hardware/face/FaceSensorProperties;

    iget v2, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorId:I

    iget v3, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    iget v4, p0, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorType:I

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/hardware/face/FaceSensorProperties;-><init>(IILjava/util/List;I)V

    return-object v1
.end method


# virtual methods
.method public getSensorType()I
    .registers 2

    iget v0, p0, Landroid/hardware/face/FaceSensorProperties;->mSensorType:I

    return v0
.end method
