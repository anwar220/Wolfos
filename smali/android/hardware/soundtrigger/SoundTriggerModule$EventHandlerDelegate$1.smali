# classes2.dex

.class Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

.field final synthetic val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

.field final synthetic val$this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method constructor <init>(Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V
    .registers 5

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->this$1:Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;

    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerModule"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :pswitch_22  #0x4
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onModelUnloaded(I)V

    goto :goto_46

    :pswitch_30  #0x3
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onResourcesAvailable()V

    goto :goto_46

    :pswitch_36  #0x2
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onServiceDied()V

    goto :goto_46

    :pswitch_3c  #0x1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    nop

    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c  #00000001
        :pswitch_36  #00000002
        :pswitch_30  #00000003
        :pswitch_22  #00000004
    .end packed-switch
.end method
