# classes3.dex

.class Landroid/service/media/CameraPrewarmService$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/CameraPrewarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/media/CameraPrewarmService;


# direct methods
.method constructor <init>(Landroid/service/media/CameraPrewarmService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/media/CameraPrewarmService$1;->this$0:Landroid/service/media/CameraPrewarmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_10

    :pswitch_9  #0x1
    iget-object v0, p0, Landroid/service/media/CameraPrewarmService$1;->this$0:Landroid/service/media/CameraPrewarmService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/service/media/CameraPrewarmService;->-$$Nest$fputmCameraIntentFired(Landroid/service/media/CameraPrewarmService;Z)V

    nop

    :goto_10
    return-void

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_9  #00000001
    .end packed-switch
.end method
