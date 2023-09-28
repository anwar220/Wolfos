# classes.dex

.class public final synthetic Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal$DeviceStateRequestWrapper;->lambda$notifyRequestCanceled$1$android-hardware-devicestate-DeviceStateManagerGlobal$DeviceStateRequestWrapper()V

    return-void
.end method
