# classes.dex

.class public final synthetic Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda4;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureCompleted$4$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler()V

    return-void
.end method