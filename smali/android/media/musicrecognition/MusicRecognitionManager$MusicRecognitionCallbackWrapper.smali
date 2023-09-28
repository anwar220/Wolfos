# classes2.dex

.class final Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;
.super Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/MusicRecognitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MusicRecognitionCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mRecognitionRequest:Landroid/media/musicrecognition/RecognitionRequest;

.field final synthetic this$0:Landroid/media/musicrecognition/MusicRecognitionManager;


# direct methods
.method constructor <init>(Landroid/media/musicrecognition/MusicRecognitionManager;Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;Ljava/util/concurrent/Executor;)V
    .registers 5

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->this$0:Landroid/media/musicrecognition/MusicRecognitionManager;

    invoke-direct {p0}, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;-><init>()V

    iput-object p2, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mRecognitionRequest:Landroid/media/musicrecognition/RecognitionRequest;

    iput-object p3, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    iput-object p4, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method synthetic lambda$onRecognitionFailed$1$android-media-musicrecognition-MusicRecognitionManager$MusicRecognitionCallbackWrapper(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mRecognitionRequest:Landroid/media/musicrecognition/RecognitionRequest;

    invoke-interface {v0, v1, p1}, Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;->onRecognitionFailed(Landroid/media/musicrecognition/RecognitionRequest;I)V

    return-void
.end method

.method synthetic lambda$onRecognitionSucceeded$0$android-media-musicrecognition-MusicRecognitionManager$MusicRecognitionCallbackWrapper(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mRecognitionRequest:Landroid/media/musicrecognition/RecognitionRequest;

    invoke-interface {v0, v1, p1, p2}, Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;->onRecognitionSucceeded(Landroid/media/musicrecognition/RecognitionRequest;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAudioStreamClosed()V
    .registers 4

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallback:Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda2;-><init>(Landroid/media/musicrecognition/MusicRecognitionManager$RecognitionCallback;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecognitionFailed(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;-><init>(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
