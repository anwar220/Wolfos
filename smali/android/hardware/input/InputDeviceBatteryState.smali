# classes2.dex

.class public final Landroid/hardware/input/InputDeviceBatteryState;
.super Landroid/hardware/BatteryState;


# static fields
.field private static final NULL_BATTERY_CAPACITY:F = NaNf


# instance fields
.field private final mDeviceId:I

.field private final mHasBattery:Z

.field private final mInputManager:Landroid/hardware/input/InputManager;


# direct methods
.method constructor <init>(Landroid/hardware/input/InputManager;IZ)V
    .registers 4

    invoke-direct {p0}, Landroid/hardware/BatteryState;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/InputDeviceBatteryState;->mInputManager:Landroid/hardware/input/InputManager;

    iput p2, p0, Landroid/hardware/input/InputDeviceBatteryState;->mDeviceId:I

    iput-boolean p3, p0, Landroid/hardware/input/InputDeviceBatteryState;->mHasBattery:Z

    return-void
.end method


# virtual methods
.method public getCapacity()F
    .registers 4

    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mHasBattery:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceBatteryState;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getBatteryCapacity(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    int-to-float v1, v0

    const/high16 v2, 0x42c80000  # 100.0f

    div-float/2addr v1, v2

    return v1

    :cond_14
    const/high16 v0, 0x7fc00000  # Float.NaN

    return v0
.end method

.method public getStatus()I
    .registers 3

    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mHasBattery:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mInputManager:Landroid/hardware/input/InputManager;

    iget v1, p0, Landroid/hardware/input/InputDeviceBatteryState;->mDeviceId:I

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getBatteryStatus(I)I

    move-result v0

    return v0
.end method

.method public isPresent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceBatteryState;->mHasBattery:Z

    return v0
.end method
