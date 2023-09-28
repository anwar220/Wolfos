# classes.dex

.class public Landroid/hardware/fingerprint/FingerprintSensorProperties;
.super Landroid/hardware/biometrics/SensorProperties;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintSensorProperties$SensorType;
    }
.end annotation


# static fields
.field public static final TYPE_HOME_BUTTON:I = 0x5

.field public static final TYPE_POWER_BUTTON:I = 0x4

.field public static final TYPE_REAR:I = 0x1

.field public static final TYPE_UDFPS_OPTICAL:I = 0x3

.field public static final TYPE_UDFPS_ULTRASONIC:I = 0x2

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

    iput p4, p0, Landroid/hardware/fingerprint/FingerprintSensorProperties;->mSensorType:I

    return-void
.end method

.method public static from(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)Landroid/hardware/fingerprint/FingerprintSensorProperties;
    .registers 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->componentInfo:Ljava/util/List;

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
    new-instance v1, Landroid/hardware/fingerprint/FingerprintSensorProperties;

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    iget v3, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    iget v4, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/hardware/fingerprint/FingerprintSensorProperties;-><init>(IILjava/util/List;I)V

    return-object v1
.end method


# virtual methods
.method public getSensorType()I
    .registers 2

    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorProperties;->mSensorType:I

    return v0
.end method
