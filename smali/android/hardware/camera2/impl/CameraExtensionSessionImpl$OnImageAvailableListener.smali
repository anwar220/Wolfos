# classes.dex

.class interface abstract Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OnImageAvailableListener"
.end annotation


# virtual methods
.method public abstract onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V
.end method

.method public abstract onImageDropped(J)V
.end method
