# classes3.dex

.class public final Landroid/service/voice/VoiceInteractionSession$CommandRequest;
.super Landroid/service/voice/VoiceInteractionSession$Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandRequest"
.end annotation


# instance fields
.field final mCommand:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Ljava/lang/String;ILcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;Landroid/os/Bundle;)V

    iput-object p5, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mCommand:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCommand="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mCommand:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCommand()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mCommand:Ljava/lang/String;

    return-object v0
.end method

.method sendCommandResult(ZLandroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_5

    :try_start_2
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->finishRequest()V

    :cond_5
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractorCallback;->deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

.method public sendIntermediateResult(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->sendCommandResult(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/service/voice/VoiceInteractionSession$CommandRequest;->sendCommandResult(ZLandroid/os/Bundle;)V

    return-void
.end method
