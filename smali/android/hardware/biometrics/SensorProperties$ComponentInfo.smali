# classes.dex

.class public final Landroid/hardware/biometrics/SensorProperties$ComponentInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/SensorProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentInfo"
.end annotation


# instance fields
.field private final mComponentId:Ljava/lang/String;

.field private final mFirmwareVersion:Ljava/lang/String;

.field private final mHardwareVersion:Ljava/lang/String;

.field private final mSerialNumber:Ljava/lang/String;

.field private final mSoftwareVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mComponentId:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mHardwareVersion:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mFirmwareVersion:Ljava/lang/String;

    iput-object p4, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mSerialNumber:Ljava/lang/String;

    iput-object p5, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mSoftwareVersion:Ljava/lang/String;

    return-void
.end method

.method public static from(Landroid/hardware/biometrics/ComponentInfoInternal;)Landroid/hardware/biometrics/SensorProperties$ComponentInfo;
    .registers 8

    new-instance v6, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->componentId:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->hardwareVersion:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->firmwareVersion:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->serialNumber:Ljava/lang/String;

    iget-object v5, p0, Landroid/hardware/biometrics/ComponentInfoInternal;->softwareVersion:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public getComponentId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mComponentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mFirmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mHardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->mSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method
