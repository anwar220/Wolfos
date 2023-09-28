# classes2.dex

.class Landroid/media/musicrecognition/MusicRecognitionService$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/musicrecognition/MusicRecognitionService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/musicrecognition/MusicRecognitionService$1;->onAudioStreamStarted(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/musicrecognition/MusicRecognitionService$1;

.field final synthetic val$callback:Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;


# direct methods
.method constructor <init>(Landroid/media/musicrecognition/MusicRecognitionService$1;Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$1;->this$1:Landroid/media/musicrecognition/MusicRecognitionService$1;

    iput-object p2, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$1;->val$callback:Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecognitionFailed(I)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$1;->val$callback:Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;

    invoke-interface {v0, p1}, Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;->onRecognitionFailed(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionService$1$1;->val$callback:Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;

    invoke-interface {v0, p1, p2}, Landroid/media/musicrecognition/IMusicRecognitionServiceCallback;->onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
