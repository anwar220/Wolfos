# classes.dex

.class public final synthetic Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;->f$0:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    iput-object p2, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;->f$0:Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;

    iget-object v1, p0, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/companion/virtual/audio/VirtualAudioSession$AudioConfigChangedCallback;->lambda$onPlaybackConfigChanged$0$android-companion-virtual-audio-VirtualAudioSession$AudioConfigChangedCallback(Ljava/util/List;)V

    return-void
.end method