# classes2.dex

.class public Landroid/hardware/input/InputDeviceVibratorManager;
.super Landroid/os/VibratorManager;

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "InputDeviceVibratorManager"


# instance fields
.field private final mDeviceId:I

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mToken:Landroid/os/Binder;

.field private final mVibrators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager;I)V
    .registers 4

    invoke-direct {p0}, Landroid/os/VibratorManager;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mInputManager:Landroid/hardware/input/InputManager;

    iput p2, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mToken:Landroid/os/Binder;

    invoke-direct {p0}, Landroid/hardware/input/InputDeviceVibratorManager;->initializeVibrators()V

    return-void
.end method

.method private initializeVibrators()V
    .registers 11

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget v3, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    invoke-virtual {v2, v3}, Landroid/hardware/input/InputManager;->getVibratorIds(I)[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_17
    array-length v4, v2

    if-ge v3, v4, :cond_2f

    iget-object v4, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    aget v5, v2, v3

    new-instance v6, Landroid/hardware/input/InputDeviceVibrator;

    iget-object v7, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget v8, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    aget v9, v2, v3

    invoke-direct {v6, v7, v8, v9}, Landroid/hardware/input/InputDeviceVibrator;-><init>(Landroid/hardware/input/InputManager;II)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method


# virtual methods
.method public cancel()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->cancelVibrate(ILandroid/os/IBinder;)V

    return-void
.end method

.method public cancel(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceVibratorManager;->cancel()V

    return-void
.end method

.method public getDefaultVibrator()Landroid/os/Vibrator;
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    monitor-exit v0

    return-object v1

    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1c

    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v0

    return-object v0

    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getVibrator(I)Landroid/os/Vibrator;
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    monitor-exit v0

    return-object v1

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1b

    invoke-static {}, Landroid/os/NullVibrator;->getInstance()Landroid/os/NullVibrator;

    move-result-object v0

    return-object v0

    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getVibratorIds()[I
    .registers 6

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_c
    iget-object v3, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    goto :goto_c

    :cond_21
    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 3

    iget v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    if-ne p1, v0, :cond_7

    invoke-direct {p0}, Landroid/hardware/input/InputDeviceVibratorManager;->initializeVibrators()V

    :cond_7
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    if-ne p1, v1, :cond_c

    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mVibrators:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    :cond_c
    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibratorManager;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, p3, v2}, Landroid/hardware/input/InputManager;->vibrate(ILandroid/os/CombinedVibration;Landroid/os/IBinder;)V

    return-void
.end method
