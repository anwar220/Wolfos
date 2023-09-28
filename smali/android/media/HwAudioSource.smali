# classes2.dex

.class public Landroid/media/HwAudioSource;
.super Landroid/media/PlayerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HwAudioSource$Builder;
    }
.end annotation


# instance fields
.field private final mAudioAttributes:Landroid/media/AudioAttributes;

.field private final mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

.field private mNativeHandle:I


# direct methods
.method private constructor <init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;)V
    .registers 6

    const/16 v0, 0xe

    invoke-direct {p0, p2, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v1

    const-string v2, "Requires a source device"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroid/media/HwAudioSource;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    iput-object p2, p0, Landroid/media/HwAudioSource;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Landroid/media/HwAudioSource;->baseRegisterPlayer(I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;Landroid/media/HwAudioSource-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/HwAudioSource;-><init>(Landroid/media/AudioDeviceInfo;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method private getDeviceId()I
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    return v2

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4e

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioPatch;

    invoke-virtual {v3}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v4

    invoke-virtual {v3}, Landroid/media/AudioPatch;->sinks()[Landroid/media/AudioPortConfig;

    move-result-object v5

    if-eqz v4, :cond_4b

    array-length v6, v4

    if-lez v6, :cond_4b

    const/4 v6, 0x0

    :goto_28
    array-length v7, v4

    if-ge v6, v7, :cond_4b

    aget-object v7, v4, v6

    invoke-virtual {v7}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioPort;->id()I

    move-result v7

    iget-object v8, p0, Landroid/media/HwAudioSource;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v8}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    if-ne v7, v8, :cond_48

    aget-object v2, v5, v6

    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioPort;->id()I

    move-result v2

    return v2

    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_4e
    return v2
.end method


# virtual methods
.method public isPlaying()Z
    .registers 2

    iget v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 4

    new-instance v0, Landroid/media/VolumeShaper$State;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/media/VolumeShaper$State;-><init>(FF)V

    return-object v0
.end method

.method playerPause()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->stop()V

    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method playerSetVolume(ZFF)V
    .registers 4

    return-void
.end method

.method playerStart()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->start()V

    return-void
.end method

.method playerStop()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->stop()V

    return-void
.end method

.method public start()V
    .registers 3

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->isPlaying()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "HwAudioSource is currently playing"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Landroid/media/HwAudioSource;->mAudioDeviceInfo:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getPort()Landroid/media/AudioDevicePort;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v0

    iget-object v1, p0, Landroid/media/HwAudioSource;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->startAudioSource(Landroid/media/AudioPortConfig;Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Landroid/media/HwAudioSource;->getDeviceId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/HwAudioSource;->baseStart(I)V

    :cond_2a
    return-void
.end method

.method public stop()V
    .registers 2

    iget v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/media/HwAudioSource;->baseStop()V

    iget v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    invoke-static {v0}, Landroid/media/AudioSystem;->stopAudioSource(I)I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/HwAudioSource;->mNativeHandle:I

    :cond_f
    return-void
.end method
