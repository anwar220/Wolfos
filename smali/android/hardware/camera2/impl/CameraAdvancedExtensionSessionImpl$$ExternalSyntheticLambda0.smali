# classes.dex

.class public final synthetic Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;->f$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->lambda$release$0$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl()V

    return-void
.end method
