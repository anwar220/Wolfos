# classes.dex

.class public final Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;
.super Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/audio/VirtualAudioSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioConfigChangedCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)V
    .registers 5

    invoke-direct {p0}, Landroid/companion/virtual/audio/IAudioConfigChangedCallback$Stub;-><init>()V

    if-eqz p2, :cond_7

    move-object v0, p2

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    return-void
.end method


# virtual methods
.method synthetic lambda$onPlaybackConfigChanged$0$android-companion-virtual-audio-VirtualAudioSession$AudioConfigChangedCallback(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$onRecordingConfigChanged$1$android-companion-virtual-audio-VirtualAudioSession$AudioConfigChangedCallback(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    return-void
.end method

.method public onPlaybackConfigChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public onRecordingConfigChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mCallback:Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method
