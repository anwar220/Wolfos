# classes2.dex

.class public final synthetic Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

.field public final synthetic f$1:Landroid/media/MediaMetadata;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

    iput-object p2, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaMetadata;

    iput-object p3, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;->f$0:Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;

    iget-object v1, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;->f$1:Landroid/media/MediaMetadata;

    iget-object v2, p0, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper$$ExternalSyntheticLambda1;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/media/musicrecognition/MusicRecognitionManager$MusicRecognitionCallbackWrapper;->lambda$onRecognitionSucceeded$0$android-media-musicrecognition-MusicRecognitionManager$MusicRecognitionCallbackWrapper(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V

    return-void
.end method
