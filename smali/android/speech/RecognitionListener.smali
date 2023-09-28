# classes3.dex

.class public interface abstract Landroid/speech/RecognitionListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onBeginningOfSpeech()V
.end method

.method public abstract onBufferReceived([B)V
.end method

.method public onEndOfSegmentedSession()V
    .registers 1

    return-void
.end method

.method public abstract onEndOfSpeech()V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onEvent(ILandroid/os/Bundle;)V
.end method

.method public abstract onPartialResults(Landroid/os/Bundle;)V
.end method

.method public abstract onReadyForSpeech(Landroid/os/Bundle;)V
.end method

.method public abstract onResults(Landroid/os/Bundle;)V
.end method

.method public abstract onRmsChanged(F)V
.end method

.method public onSegmentResults(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method
