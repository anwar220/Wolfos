# classes.dex

.class Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .registers 8

    const-string v0, "CameraExtensionForward"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_7} :catch_65

    move-object v1, v2

    nop

    if-nez v1, :cond_11

    const-string v2, "Invalid image"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Z

    move-result v2

    if-nez v2, :cond_61

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;

    move-result-object v2

    if-nez v2, :cond_47

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fputmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/media/ImageWriter;)V

    :cond_47
    :try_start_47
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_50} :catch_51

    goto :goto_60

    :catch_51
    move-exception v2

    const-string v3, "Failed to queue processed buffer!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fputmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Z)V

    :goto_60
    goto :goto_64

    :cond_61
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    :goto_64
    return-void

    :catch_65
    move-exception v2

    const-string v3, "Failed to acquire processed image!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
