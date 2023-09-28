# classes.dex

.class public final synthetic Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler$$ExternalSyntheticLambda5;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;->lambda$checkAndFireBurstProcessing$5$android-hardware-camera2-impl-CameraExtensionSessionImpl$BurstRequestHandler()V

    return-void
.end method
