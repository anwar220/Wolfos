# classes3.dex

.class public interface abstract Landroid/os/VibratorStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/os/VibratorStub;
    .registers 1

    const-class v0, Landroid/os/VibratorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorStub;

    return-object v0
.end method


# virtual methods
.method public abstract obtainOverlayVibrationEffect(Landroid/os/vibrator/StepSegment;)Landroid/os/VibrationEffect;
.end method

.method public abstract obtainStepSegment(Landroid/os/VibrationEffect;)Landroid/os/vibrator/StepSegment;
.end method

.method public abstract obtainVibrationReason(Landroid/os/vibrator/StepSegment;)Ljava/lang/String;
.end method

.method public overlayByMiui(Landroid/os/vibrator/StepSegment;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
