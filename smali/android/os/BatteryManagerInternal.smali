# classes3.dex

.class public abstract Landroid/os/BatteryManagerInternal;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBatteryChargeCounter()I
.end method

.method public abstract getBatteryFullCharge()I
.end method

.method public abstract getBatteryLevel()I
.end method

.method public abstract getBatteryLevelLow()Z
.end method

.method public abstract getInvalidCharger()I
.end method

.method public abstract getPlugType()I
.end method

.method public abstract isPowered(I)Z
.end method

.method public abstract resetBattery(Z)V
.end method

.method public abstract setBatteryLevel(IZ)V
.end method

.method public abstract setChargerAcOnline(ZZ)V
.end method

.method public abstract suspendBatteryInput()V
.end method

.method public abstract unplugBattery(Z)V
.end method
