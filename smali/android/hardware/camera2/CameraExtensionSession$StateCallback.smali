# classes.dex

.class public abstract Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V
    .registers 2

    return-void
.end method

.method public abstract onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V
.end method

.method public abstract onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V
.end method
