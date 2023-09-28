# classes.dex

.class public interface abstract Landroid/hardware/devicestate/DeviceStateRequest$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onRequestActivated(Landroid/hardware/devicestate/DeviceStateRequest;)V
    .registers 2

    return-void
.end method

.method public onRequestCanceled(Landroid/hardware/devicestate/DeviceStateRequest;)V
    .registers 2

    return-void
.end method

.method public onRequestSuspended(Landroid/hardware/devicestate/DeviceStateRequest;)V
    .registers 2

    return-void
.end method
