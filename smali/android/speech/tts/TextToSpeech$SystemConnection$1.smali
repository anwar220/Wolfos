# classes3.dex

.class Landroid/speech/tts/TextToSpeech$SystemConnection$1;
.super Landroid/speech/tts/ITextToSpeechSessionCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech$SystemConnection;->connect(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$SystemConnection;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechSessionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/speech/tts/ITextToSpeechSession;Landroid/os/IBinder;)V
    .registers 5

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    invoke-static {v0, p1}, Landroid/speech/tts/TextToSpeech$SystemConnection;->-$$Nest$fputmSession(Landroid/speech/tts/TextToSpeech$SystemConnection;Landroid/speech/tts/ITextToSpeechSession;)V

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/speech/tts/TextToSpeech$SystemConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public onDisconnected()V
    .registers 3

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech$SystemConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "System TTS connection error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextToSpeech"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$SystemConnection$1;->this$1:Landroid/speech/tts/TextToSpeech$SystemConnection;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$SystemConnection;->this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->-$$Nest$mdispatchOnInit(Landroid/speech/tts/TextToSpeech;I)V

    return-void
.end method
