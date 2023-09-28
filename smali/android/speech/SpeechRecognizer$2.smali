# classes3.dex

.class Landroid/speech/SpeechRecognizer$2;
.super Landroid/speech/IRecognitionServiceManagerCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/SpeechRecognizer;->connectToSystemService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/SpeechRecognizer;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-direct {p0}, Landroid/speech/IRecognitionServiceManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bind to system recognition service failed with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechRecognizer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$fgetmListener(Landroid/speech/SpeechRecognizer;)Landroid/speech/SpeechRecognizer$InternalRecognitionListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/SpeechRecognizer$InternalRecognitionListener;->onError(I)V

    return-void
.end method

.method public onSuccess(Landroid/speech/IRecognitionService;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizer;->-$$Nest$fputmService(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)V

    :goto_5
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->-$$Nest$fgetmHandler(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/SpeechRecognizer$2;->this$0:Landroid/speech/SpeechRecognizer;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->-$$Nest$fgetmPendingTasks(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    :cond_27
    return-void
.end method
