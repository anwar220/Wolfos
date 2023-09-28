# classes2.dex

.class public Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;
.super Landroid/hardware/SensorManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputSensorManager"
.end annotation


# instance fields
.field final mId:I

.field final synthetic this$0:Landroid/hardware/input/InputDeviceSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/input/InputDeviceSensorManager;I)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    iput p2, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    return-void
.end method


# virtual methods
.method protected cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method protected configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method protected createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method protected destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
    .registers 2

    return-void
.end method

.method protected flushImpl(Landroid/hardware/SensorEventListener;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    move-result v0

    return v0
.end method

.method public getDefaultSensor(I)Landroid/hardware/Sensor;
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    invoke-static {v0, v1, p1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method protected getFullDynamicSensorList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getFullSensorList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->mId:I

    invoke-static {v0, v1}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initDataInjectionImpl(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
    .registers 7

    const/4 v0, 0x0

    return v0
.end method

.method protected registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .registers 3

    return-void
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
    .registers 13

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p5

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method protected requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method protected setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .registers 2

    return-void
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;->this$0:Landroid/hardware/input/InputDeviceSensorManager;

    invoke-static {v0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->-$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method
