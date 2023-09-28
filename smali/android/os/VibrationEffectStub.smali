# classes3.dex

.class public interface abstract Landroid/os/VibrationEffectStub;
.super Ljava/lang/Object;


# direct methods
.method public static getInstance()Landroid/os/VibrationEffectStub;
    .registers 1

    const-class v0, Landroid/os/VibrationEffectStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffectStub;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/VibrationEffect;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method
