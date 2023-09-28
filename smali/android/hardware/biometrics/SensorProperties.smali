# classes.dex

.class public Landroid/hardware/biometrics/SensorProperties;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/SensorProperties$ComponentInfo;,
        Landroid/hardware/biometrics/SensorProperties$Strength;
    }
.end annotation


# static fields
.field public static final STRENGTH_CONVENIENCE:I = 0x0

.field public static final STRENGTH_STRONG:I = 0x2

.field public static final STRENGTH_WEAK:I = 0x1


# instance fields
.field private final mComponentInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties$ComponentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorId:I

.field private final mSensorStrength:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties$ComponentInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/biometrics/SensorProperties;->mSensorId:I

    iput p2, p0, Landroid/hardware/biometrics/SensorProperties;->mSensorStrength:I

    iput-object p3, p0, Landroid/hardware/biometrics/SensorProperties;->mComponentInfo:Ljava/util/List;

    return-void
.end method

.method public static from(Landroid/hardware/biometrics/SensorPropertiesInternal;)Landroid/hardware/biometrics/SensorProperties;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/biometrics/SensorPropertiesInternal;->componentInfo:Ljava/util/List;

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
    new-instance v1, Landroid/hardware/biometrics/SensorProperties;

    iget v2, p0, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorId:I

    iget v3, p0, Landroid/hardware/biometrics/SensorPropertiesInternal;->sensorStrength:I

    invoke-direct {v1, v2, v3, v0}, Landroid/hardware/biometrics/SensorProperties;-><init>(IILjava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public getComponentInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorProperties$ComponentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties;->mComponentInfo:Ljava/util/List;

    return-object v0
.end method

.method public getSensorId()I
    .registers 2

    iget v0, p0, Landroid/hardware/biometrics/SensorProperties;->mSensorId:I

    return v0
.end method

.method public getSensorStrength()I
    .registers 2

    iget v0, p0, Landroid/hardware/biometrics/SensorProperties;->mSensorStrength:I

    return v0
.end method
