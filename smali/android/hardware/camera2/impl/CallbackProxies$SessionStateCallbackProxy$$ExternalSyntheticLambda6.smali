# classes.dex

.class public final synthetic Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

.field public final synthetic f$1:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda6;->f$0:Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy$$ExternalSyntheticLambda6;->f$1:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;->lambda$onConfigured$0$android-hardware-camera2-impl-CallbackProxies$SessionStateCallbackProxy(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
