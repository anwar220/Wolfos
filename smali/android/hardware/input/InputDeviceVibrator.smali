# classes2.dex

.class final Landroid/hardware/input/InputDeviceVibrator;
.super Landroid/os/Vibrator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputDeviceVibrator"


# instance fields
.field private final mDelegates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceId:I

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mToken:Landroid/os/Binder;

.field private final mVibratorInfo:Landroid/os/VibratorInfo;


# direct methods
.method constructor <init>(Landroid/hardware/input/InputManager;II)V
    .registers 7

    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/hardware/input/InputDeviceVibrator;->mInputManager:Landroid/hardware/input/InputManager;

    iput p2, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    new-instance v0, Landroid/os/VibratorInfo$Builder;

    invoke-direct {v0, p3}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo$Builder;->setCapabilities(J)Landroid/os/VibratorInfo$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Landroid/os/VibratorInfo$Builder;->setSupportedEffects([I)Landroid/os/VibratorInfo$Builder;

    move-result-object v0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/os/VibratorInfo$Builder;->setSupportedBraking([I)Landroid/os/VibratorInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Landroid/hardware/input/InputDeviceVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    return-void
.end method

.method public addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 7

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "InputDeviceVibrator"

    const-string v2, "Listener already registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1a
    new-instance v1, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

    invoke-direct {v1, p0, p2, p1}, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;-><init>(Landroid/hardware/input/InputDeviceVibrator;Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mInputManager:Landroid/hardware/input/InputManager;

    iget v3, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {v2, v3, v1}, Landroid/hardware/input/InputManager;->registerVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "InputDeviceVibrator"

    const-string v3, "Failed to register vibrate state listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_32
    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public cancel()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->cancelVibrate(ILandroid/os/IBinder;)V

    return-void
.end method

.method public cancel(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceVibrator;->cancel()V

    return-void
.end method

.method protected getInfo()Landroid/os/VibratorInfo;
    .registers 2

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    return-object v0
.end method

.method public hasAmplitudeControl()Z
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public hasVibrator()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isVibrating()Z
    .registers 3

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->isVibrating(I)Z

    move-result v0

    return v0
.end method

.method public removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mInputManager:Landroid/hardware/input/InputManager;

    iget v3, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    invoke-virtual {v2, v3, v1}, Landroid/hardware/input/InputManager;->unregisterVibratorStateListener(ILandroid/os/IVibratorStateListener;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "InputDeviceVibrator"

    const-string v3, "Failed to unregister vibrate state listener"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_29
    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mDelegates:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .registers 9

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceVibrator;->mDeviceId:I

    iget-object v2, p0, Landroid/hardware/input/InputDeviceVibrator;->mToken:Landroid/os/Binder;

    invoke-virtual {v0, v1, p3, v2}, Landroid/hardware/input/InputManager;->vibrate(ILandroid/os/VibrationEffect;Landroid/os/IBinder;)V

    return-void
.end method
