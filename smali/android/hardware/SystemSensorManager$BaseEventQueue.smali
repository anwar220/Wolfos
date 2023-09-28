# classes.dex

.class abstract Landroid/hardware/SystemSensorManager$BaseEventQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseEventQueue"
.end annotation


# static fields
.field protected static final OPERATING_MODE_DATA_INJECTION:I = 0x1

.field protected static final OPERATING_MODE_NORMAL:I


# instance fields
.field private final mActiveSensors:Landroid/util/SparseBooleanArray;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected final mManager:Landroid/hardware/SystemSensorManager;

.field private mNativeSensorEventQueue:J

.field protected final mSensorAccuracies:Landroid/util/SparseIntArray;

.field protected final mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorAccuracies:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mSensorDiscontinuityCounts:Landroid/util/SparseIntArray;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-nez p4, :cond_22

    const-string p4, ""

    :cond_22
    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmNativeInstance(Landroid/hardware/SystemSensorManager;)J

    move-result-wide v1

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmContext(Landroid/hardware/SystemSensorManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v8}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-string v1, "BaseEventQueue.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    iput-object p2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    return-void
.end method

.method private disableSensor(Landroid/hardware/Sensor;)I
    .registers 6

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_19

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDisableSensor(JI)I

    move-result v0

    return v0

    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private dispose(Z)V
    .registers 7

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_e
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeDestroySensorEventQueue(J)V

    iput-wide v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    :cond_1b
    return-void
.end method

.method private enableSensor(Landroid/hardware/Sensor;II)I
    .registers 8

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_64

    if-eqz p1, :cond_5e

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager;->-$$Nest$misSensorInCappedSet(Landroid/hardware/SystemSensorManager;I)Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x1388

    if-ge p2, v0, :cond_53

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmIsPackageDebuggable(Landroid/hardware/SystemSensorManager;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v0}, Landroid/hardware/SystemSensorManager;->-$$Nest$mhasHighSamplingRateSensorsPermission(Landroid/hardware/SystemSensorManager;)Z

    move-result v0

    if-nez v0, :cond_53

    const-wide/32 v0, 0x81c4045

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_53

    :cond_34
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use the sampling rate of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " microseconds, app needs to declare the normal permission HIGH_SAMPLING_RATE_SENSORS."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    :goto_53
    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    invoke-static {v0, v1, v2, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeEnableSensor(JIII)I

    move-result v0

    return v0

    :cond_5e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static native nativeDestroySensorEventQueue(J)V
.end method

.method private static native nativeDisableSensor(JI)I
.end method

.method private static native nativeEnableSensor(JIII)I
.end method

.method private static native nativeFlushSensor(J)I
.end method

.method private static native nativeInitBaseEventQueue(JLjava/lang/ref/WeakReference;Landroid/os/MessageQueue;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/SystemSensorManager$BaseEventQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeInjectSensorData(JI[FIJ)I
.end method


# virtual methods
.method public addSensor(Landroid/hardware/Sensor;II)Z
    .registers 8

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->addSensorEvent(Landroid/hardware/Sensor;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz p3, :cond_27

    if-lez p3, :cond_2b

    invoke-direct {p0, p1, p2, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->enableSensor(Landroid/hardware/Sensor;II)I

    move-result v1

    if-eqz v1, :cond_2b

    :cond_27
    invoke-virtual {p0, p1, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensor(Landroid/hardware/Sensor;Z)Z

    return v2

    :cond_2b
    return v3
.end method

.method protected abstract addSensorEvent(Landroid/hardware/Sensor;)V
.end method

.method protected dispatchAdditionalInfoEvent(III[F[I)V
    .registers 6

    return-void
.end method

.method protected abstract dispatchFlushCompleteEvent(I)V
.end method

.method protected abstract dispatchSensorEvent(I[FIJ)V
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flush()I
    .registers 5

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    invoke-static {v0, v1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeFlushSensor(J)I

    move-result v0

    return v0

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public hasSensors()Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->indexOfValue(Z)I

    move-result v0

    if-ltz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method protected injectSensorDataBase(I[FIJ)I
    .registers 13

    iget-wide v0, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mNativeSensorEventQueue:J

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->nativeInjectSensorData(JI[FIJ)I

    move-result v0

    return v0
.end method

.method public removeAllSensors()Z
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-ne v1, v2, :cond_36

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mManager:Landroid/hardware/SystemSensorManager;

    invoke-static {v2}, Landroid/hardware/SystemSensorManager;->-$$Nest$fgetmHandleToSensor(Landroid/hardware/SystemSensorManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    if-eqz v2, :cond_36

    invoke-direct {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    iget-object v3, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, v2}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
    return v2
.end method

.method public removeSensor(Landroid/hardware/Sensor;Z)Z
    .registers 7

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    if-eqz p2, :cond_12

    invoke-direct {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->disableSensor(Landroid/hardware/Sensor;)I

    :cond_12
    iget-object v1, p0, Landroid/hardware/SystemSensorManager$BaseEventQueue;->mActiveSensors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0, p1}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->removeSensorEvent(Landroid/hardware/Sensor;)V

    const/4 v1, 0x1

    return v1

    :cond_20
    return v2
.end method

.method protected abstract removeSensorEvent(Landroid/hardware/Sensor;)V
.end method
