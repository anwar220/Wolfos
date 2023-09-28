# classes.dex

.class public final Landroid/hardware/devicestate/DeviceStateManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;,
        Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;
    }
.end annotation


# static fields
.field public static final INVALID_DEVICE_STATE:I = -0x1

.field public static final MAXIMUM_DEVICE_STATE:I = 0xff

.field public static final MINIMUM_DEVICE_STATE:I


# instance fields
.field private final mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    move-result-object v0

    if-eqz v0, :cond_c

    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    return-void

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get instance of global device state manager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public cancelStateRequest()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->cancelStateRequest()V

    return-void
.end method

.method public getCurrentState()I
    .registers 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getCurrentState()I

    move-result v0

    return v0
.end method

.method public getSupportedStates()[I
    .registers 2

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getSupportedStates()[I

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .registers 5

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    return-void
.end method

.method public unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method
