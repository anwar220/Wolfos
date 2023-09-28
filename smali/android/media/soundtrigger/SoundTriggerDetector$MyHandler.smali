# classes2.dex

.class Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/soundtrigger/SoundTriggerDetector;


# direct methods
.method constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V
    .registers 2

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for NULL callback."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_5e

    :pswitch_32  #0x5
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onRecognitionResumed()V

    goto :goto_5e

    :pswitch_3c  #0x4
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onRecognitionPaused()V

    goto :goto_5e

    :pswitch_46  #0x3
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onError()V

    goto :goto_5e

    :pswitch_50  #0x2
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;

    invoke-virtual {v0, v1}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onDetected(Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;)V

    nop

    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_50  #00000002
        :pswitch_46  #00000003
        :pswitch_3c  #00000004
        :pswitch_32  #00000005
    .end packed-switch
.end method
