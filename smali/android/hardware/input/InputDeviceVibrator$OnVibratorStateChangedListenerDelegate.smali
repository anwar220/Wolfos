# classes2.dex

.class Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;
.super Landroid/os/IVibratorStateListener$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnVibratorStateChangedListenerDelegate"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

.field final synthetic this$0:Landroid/hardware/input/InputDeviceVibrator;


# direct methods
.method constructor <init>(Landroid/hardware/input/InputDeviceVibrator;Landroid/os/Vibrator$OnVibratorStateChangedListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->this$0:Landroid/hardware/input/InputDeviceVibrator;

    invoke-direct {p0}, Landroid/os/IVibratorStateListener$Stub;-><init>()V

    iput-object p3, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    return-void
.end method


# virtual methods
.method synthetic lambda$onVibrating$0$android-hardware-input-InputDeviceVibrator$OnVibratorStateChangedListenerDelegate(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->mListener:Landroid/os/Vibrator$OnVibratorStateChangedListener;

    invoke-interface {v0, p1}, Landroid/os/Vibrator$OnVibratorStateChangedListener;->onVibratorStateChanged(Z)V

    return-void
.end method

.method public onVibrating(Z)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/input/InputDeviceVibrator$OnVibratorStateChangedListenerDelegate;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
