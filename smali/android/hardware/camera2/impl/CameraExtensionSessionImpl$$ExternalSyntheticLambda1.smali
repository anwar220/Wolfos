# classes.dex

.class public final synthetic Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;->f$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->lambda$release$0$android-hardware-camera2-impl-CameraExtensionSessionImpl()V

    return-void
.end method
