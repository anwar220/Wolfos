# classes.dex

.class public final synthetic Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iput p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    iget v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;->lambda$onCaptureSequenceCompleted$3$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl$RequestCallbackHandler(I)V

    return-void
.end method
