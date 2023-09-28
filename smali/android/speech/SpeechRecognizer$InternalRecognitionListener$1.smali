# classes3.dex

.class Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer$InternalRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ac

    goto/16 :goto_ab

    :pswitch_10  #0xb
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSegmentedSession()V

    goto/16 :goto_ab

    :pswitch_1b  #0xa
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onSegmentResults(Landroid/os/Bundle;)V

    goto/16 :goto_ab

    :pswitch_2a  #0x9
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_ab

    :pswitch_3b  #0x8
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    goto :goto_ab

    :pswitch_4d  #0x7
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    goto :goto_ab

    :pswitch_5b  #0x6
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    goto :goto_ab

    :pswitch_69  #0x5
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto :goto_ab

    :pswitch_77  #0x4
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onError(I)V

    goto :goto_ab

    :pswitch_89  #0x3
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    goto :goto_ab

    :pswitch_93  #0x2
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    invoke-interface {v0, v1}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    goto :goto_ab

    :pswitch_a1  #0x1
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalRecognitionListener$1;->this$0:Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->-$$Nest$fgetmInternalListener(Landroid/speech/SpeechRecognizer$InternalRecognitionListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    nop

    :goto_ab
    return-void

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_a1  #00000001
        :pswitch_93  #00000002
        :pswitch_89  #00000003
        :pswitch_77  #00000004
        :pswitch_69  #00000005
        :pswitch_5b  #00000006
        :pswitch_4d  #00000007
        :pswitch_3b  #00000008
        :pswitch_2a  #00000009
        :pswitch_1b  #0000000a
        :pswitch_10  #0000000b
    .end packed-switch
.end method
