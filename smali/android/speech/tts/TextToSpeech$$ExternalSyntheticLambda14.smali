# classes3.dex

.class public final synthetic Landroid/speech/tts/TextToSpeech$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Landroid/speech/tts/TextToSpeech;->lambda$getDefaultVoice$15(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;

    move-result-object p1

    return-object p1
.end method
