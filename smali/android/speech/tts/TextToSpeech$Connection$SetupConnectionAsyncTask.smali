# classes3.dex

.class Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupConnectionAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeech$Connection;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;-><init>(Landroid/speech/tts/TextToSpeech$Connection;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 10

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_ae

    return-object v1

    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmService(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmCallback(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechCallback$Stub;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/speech/tts/ITextToSpeechService;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "language"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_92

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmService(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v1

    invoke-interface {v1}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "language"

    aget-object v5, v1, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "country"

    const/4 v5, 0x1

    aget-object v6, v1, v5

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v3, v3, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "variant"

    const/4 v6, 0x2

    aget-object v7, v1, v6

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v3}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmService(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/ITextToSpeechService;

    move-result-object v3

    aget-object v4, v1, v2

    aget-object v5, v1, v5

    aget-object v6, v1, v6

    invoke-interface {v3, v4, v5, v6}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v4, v4, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v4}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmParams(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "voiceName"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_92
    const-string v1, "TextToSpeech"

    const-string v3, "Setting up the connection to TTS engine..."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_9d} :catch_9f
    .catchall {:try_start_12 .. :try_end_9d} :catchall_ae

    :try_start_9d
    monitor-exit v0

    return-object v1

    :catch_9f
    move-exception v1

    const-string v2, "TextToSpeech"

    const-string v3, "Error connecting to service, setCallback() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_ae
    move-exception v1

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_9d .. :try_end_b0} :catchall_ae

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->-$$Nest$fgetmStartLock(Landroid/speech/tts/TextToSpeech;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fgetmOnSetupConnectionAsyncTask(Landroid/speech/tts/TextToSpeech$Connection;)Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;

    move-result-object v1

    if-ne v1, p0, :cond_17

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fputmOnSetupConnectionAsyncTask(Landroid/speech/tts/TextToSpeech$Connection;Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;)V

    :cond_17
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech$Connection;->-$$Nest$fputmEstablished(Landroid/speech/tts/TextToSpeech$Connection;Z)V

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Landroid/speech/tts/TextToSpeech;->-$$Nest$mdispatchOnInit(Landroid/speech/tts/TextToSpeech;I)V

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$Connection$SetupConnectionAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
