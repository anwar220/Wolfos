# classes.dex

.class public final synthetic Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iput-wide p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-wide v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;->f$1:J

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->lambda$onCaptureStarted$0$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler(J)V

    return-void
.end method
