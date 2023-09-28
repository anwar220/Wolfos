# classes2.dex

.class public Landroid/hardware/input/InputDeviceSensorManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;,
        Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_SENSOR_ACCURACY_CHANGED:I = 0x1

.field private static final MSG_SENSOR_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "InputDeviceSensorManager"


# instance fields
.field private mInputManager:Landroid/hardware/input/InputManager;

.field private final mInputSensorEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputSensorLock:Ljava/lang/Object;

.field private mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

.field private final mSensorHandler:Landroid/os/Handler;

.field private final mSensorThread:Landroid/os/HandlerThread;

.field private final mSensors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetFullSensorListForDevice(Landroid/hardware/input/InputDeviceSensorManager;I)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->getFullSensorListForDevice(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetSensorForInputDevice(Landroid/hardware/input/InputDeviceSensorManager;II)Landroid/hardware/Sensor;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monInputSensorAccuracyChanged(Landroid/hardware/input/InputDeviceSensorManager;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorAccuracyChanged(III)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monInputSensorChanged(Landroid/hardware/input/InputDeviceSensorManager;IIIJ[F)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/hardware/input/InputDeviceSensorManager;->onInputSensorChanged(IIIJ[F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/hardware/input/InputDeviceSensorManager;->registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munregisterListenerInternal(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smsensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/hardware/input/InputManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SensorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Landroid/hardware/input/InputDeviceSensorManager;->initializeSensors()V

    return-void
.end method

.method private findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getListener()Landroid/hardware/SensorEventListener;

    move-result-object v1

    if-ne v1, p1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/high16 v0, -0x80000000

    return v0
.end method

.method private flush(Landroid/hardware/SensorEventListener;)Z
    .registers 10

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_c

    monitor-exit v0

    return v2

    :cond_c
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    iget-object v6, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Landroid/hardware/input/InputManager;->flushSensor(II)Z

    move-result v6

    if-nez v6, :cond_3a

    monitor-exit v0

    return v2

    :cond_3a
    goto :goto_1c

    :cond_3b
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private getFullSensorListForDevice(I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getId()I

    move-result v6

    if-ne v6, p1, :cond_3d

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    goto :goto_28

    :cond_3e
    goto :goto_12

    :cond_3f
    monitor-exit v1

    return-object v0

    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_41

    throw v2
.end method

.method private getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;
    .registers 7

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v3, p2, :cond_23

    return-object v2

    :cond_23
    goto :goto_10

    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSensorForInputDevice(II)Landroid/hardware/Sensor;
    .registers 9

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    if-ne v5, p1, :cond_3d

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v5, p2, :cond_3d

    monitor-exit v0

    return-object v4

    :cond_3d
    goto :goto_23

    :cond_3e
    goto :goto_d

    :cond_3f
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private initializeSensors()V
    .registers 5

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    aget v3, v1, v2

    invoke-direct {p0, v3}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private onInputSensorAccuracyChanged(III)V
    .registers 8

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorAccuracyChanged(III)V

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private onInputSensorChanged(IIIJ[F)V
    .registers 15

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager;->getInputDeviceSensorLocked(II)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x0

    :goto_8
    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_42

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v3, p1, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-static {v3, v1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->-$$Nest$mgetSensorEvent(Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;Landroid/hardware/Sensor;)Landroid/hardware/SensorEvent;

    move-result-object v4

    if-nez v4, :cond_2d

    const-string v5, "InputDeviceSensorManager"

    const-string v6, "Failed to get SensorEvent."

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2d
    iput-object v1, v4, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iput p3, v4, Landroid/hardware/SensorEvent;->accuracy:I

    iput-wide p4, v4, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, v4, Landroid/hardware/SensorEvent;->values:[F

    iget-object v6, v4, Landroid/hardware/SensorEvent;->values:[F

    array-length v6, v6

    const/4 v7, 0x0

    invoke-static {p6, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3, v4}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->sendSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v1
.end method

.method private populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V
    .registers 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_16

    new-instance v2, Landroid/hardware/Sensor;

    aget-object v3, p2, v1

    invoke-direct {v2, v3}, Landroid/hardware/Sensor;-><init>(Landroid/hardware/input/InputSensorInfo;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private registerListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_b

    const-string v1, "InputDeviceSensorManager"

    const-string v2, "listener is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    if-nez p2, :cond_15

    const-string v1, "InputDeviceSensorManager"

    const-string v2, "sensor is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_15
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    const-string v1, "InputDeviceSensorManager"

    const-string v2, "Trigger Sensors should use the requestTriggerSensor."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_24
    if-ltz p4, :cond_de

    if-gez p3, :cond_2a

    goto/16 :goto_de

    :cond_2a
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v1

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/hardware/input/InputDeviceSensorManager;->getSensorForInputDevice(II)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3b
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getId()I

    move-result v2

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v4

    if-nez v4, :cond_63

    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The device doesn\'t have the sensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_63
    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    invoke-virtual {v4, v2, v5, p3, p4}, Landroid/hardware/input/InputManager;->enableSensor(IIII)Z

    move-result v4

    if-nez v4, :cond_89

    const-string v4, "InputDeviceSensorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t enable the sensor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_89
    monitor-exit v1

    goto :goto_8e

    :catchall_8b
    move-exception v0

    monitor-exit v1
    :try_end_8d
    .catchall {:try_start_3b .. :try_end_8d} :catchall_8b

    throw v0

    :cond_8e
    :goto_8e
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_91
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-nez v2, :cond_ae

    new-instance v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;-><init>(Landroid/hardware/input/InputDeviceSensorManager;Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener-IA;)V

    iput-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v3, v2}, Landroid/hardware/input/InputManager;->registerSensorListener(Landroid/hardware/input/IInputSensorEventListener;)Z

    move-result v2

    if-nez v2, :cond_ae

    const-string v2, "InputDeviceSensorManager"

    const-string v3, "Failed registering the sensor listener"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return v0

    :cond_ae
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v0

    if-gez v0, :cond_cd

    new-instance v8, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    if-nez p5, :cond_bc

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensorHandler:Landroid/os/Handler;

    move-object v7, v2

    goto :goto_bd

    :cond_bc
    move-object v7, p5

    :goto_bd
    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;-><init>(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V

    move-object v2, v8

    iget-object v3, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_d8

    :cond_cd
    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v2, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    :goto_d8
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_db
    move-exception v0

    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_91 .. :try_end_dd} :catchall_db

    throw v0

    :cond_de
    :goto_de
    const-string v1, "InputDeviceSensorManager"

    const-string v2, "maxBatchReportLatencyUs and delayUs should be non-negative"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static sensorEquals(Landroid/hardware/Sensor;Landroid/hardware/Sensor;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v0, v1, :cond_16

    invoke-virtual {p0}, Landroid/hardware/Sensor;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getId()I

    move-result v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private unregisterListenerInternal(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .registers 16

    if-eqz p1, :cond_ae

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5
    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->findSensorEventListenerLocked(Landroid/hardware/SensorEventListener;)I

    move-result v1

    if-ltz v1, :cond_a2

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)V

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2a
    nop

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    if-eqz v2, :cond_41

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    invoke-virtual {v2, v4}, Landroid/hardware/input/InputManager;->unregisterSensorListener(Landroid/hardware/input/IInputSensorEventListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputServiceSensorListener:Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListener;

    :cond_41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getId()I

    move-result v5

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_5b
    iget-object v9, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_98

    iget-object v9, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;

    invoke-virtual {v9, v5, v6}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorEventListenerDelegate;->hasSensorRegistered(II)Z

    move-result v10

    if-eqz v10, :cond_95

    const/4 v7, 0x1

    const-string v10, "InputDeviceSensorManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "device "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " still uses sensor "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_98

    :cond_95
    add-int/lit8 v8, v8, 0x1

    goto :goto_5b

    :cond_98
    :goto_98
    if-nez v7, :cond_9f

    iget-object v8, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v8, v5, v6}, Landroid/hardware/input/InputManager;->disableSensor(II)V

    :cond_9f
    goto :goto_45

    :cond_a0
    monitor-exit v0

    return-void

    :cond_a2
    const-string v2, "InputDeviceSensorManager"

    const-string v3, "Listener is not registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_5 .. :try_end_ad} :catchall_ab

    throw v1

    :cond_ae
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateInputDeviceSensorInfoLocked(I)V
    .registers 4

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/InputDevice;->hasSensor()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getSensorList(I)[Landroid/hardware/input/InputSensorInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/hardware/input/InputDeviceSensorManager;->populateSensorsForInputDeviceLocked(I[Landroid/hardware/input/InputSensorInfo;)V

    :cond_15
    return-void
.end method


# virtual methods
.method getSensorManager(I)Landroid/hardware/SensorManager;
    .registers 3

    new-instance v0, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputDeviceSensorManager$InputSensorManager;-><init>(Landroid/hardware/input/InputDeviceSensorManager;I)V

    return-object v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    goto :goto_31

    :cond_13
    const-string v1, "InputDeviceSensorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received \'device added\' notification for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but it is already in the list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    monitor-exit v0

    return-void

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public onInputDeviceChanged(I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceSensorManager;->updateInputDeviceSensorInfoLocked(I)V

    monitor-exit v0

    return-void

    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onInputDeviceRemoved(I)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/input/InputDeviceSensorManager;->mInputSensorLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceSensorManager;->mSensors:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
