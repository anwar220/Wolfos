# classes.dex

.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SequenceDrainListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    return-void
.end method


# virtual methods
.method public onDrained()V
    .registers 3

    invoke-static {}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmIdString(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "onSequenceDrained"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSession"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmStateCallback(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmSkipUnconfigure(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_39

    return-void

    :cond_39
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-$$Nest$fgetmAbortDrainer(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->beginDrain()V

    return-void
.end method
