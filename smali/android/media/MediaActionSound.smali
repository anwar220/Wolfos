# classes2.dex

.class public Landroid/media/MediaActionSound;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaActionSound$SoundState;
    }
.end annotation


# static fields
.field public static final FOCUS_COMPLETE:I = 0x1

.field private static final NUM_MEDIA_SOUND_STREAMS:I = 0x1

.field public static final SHUTTER_CLICK:I = 0x0

.field private static final SOUND_DIRS:[Ljava/lang/String;

.field private static final SOUND_FILES:[Ljava/lang/String;

.field public static final START_VIDEO_RECORDING:I = 0x2

.field private static final STATE_LOADED:I = 0x3

.field private static final STATE_LOADING:I = 0x1

.field private static final STATE_LOADING_PLAY_REQUESTED:I = 0x2

.field private static final STATE_NOT_LOADED:I = 0x0

.field public static final STOP_VIDEO_RECORDING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaActionSound"


# instance fields
.field private mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSounds:[Landroid/media/MediaActionSound$SoundState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSounds(Landroid/media/MediaActionSound;)[Landroid/media/MediaActionSound$SoundState;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    const-string v0, "/product/media/audio/ui/"

    const-string v1, "/system/media/audio/ui/"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_DIRS:[Ljava/lang/String;

    const-string v0, "camera_click.ogg"

    const-string v1, "camera_focus.ogg"

    const-string v2, "VideoRecord.ogg"

    const-string v3, "VideoStop.ogg"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaActionSound$1;

    invoke-direct {v0, p0}, Landroid/media/MediaActionSound$1;-><init>(Landroid/media/MediaActionSound;)V

    iput-object v0, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/media/MediaActionSound;->mLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/MediaActionSound$SoundState;

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    const/4 v0, 0x0

    :goto_43
    iget-object v1, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    array-length v2, v1

    if-ge v0, v2, :cond_52

    new-instance v2, Landroid/media/MediaActionSound$SoundState;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaActionSound$SoundState;-><init>(Landroid/media/MediaActionSound;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_52
    return-void
.end method

.method private loadSound(Landroid/media/MediaActionSound$SoundState;)I
    .registers 11

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    iget v1, p1, Landroid/media/MediaActionSound$SoundState;->name:I

    aget-object v0, v0, v1

    sget-object v1, Landroid/media/MediaActionSound;->SOUND_DIRS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_b
    if-ge v4, v2, :cond_31

    aget-object v5, v1, v4

    iget-object v6, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_2e

    iput v8, p1, Landroid/media/MediaActionSound$SoundState;->state:I

    iput v6, p1, Landroid/media/MediaActionSound$SoundState;->id:I

    return v6

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_31
    return v3
.end method

.method public static mustPlayShutterSound()Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    :try_start_b
    invoke-interface {v2}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_f} :catch_11

    move v0, v3

    goto :goto_19

    :catch_11
    move-exception v3

    const-string v4, "MediaActionSound"

    const-string v5, "audio service is unavailable for queries, defaulting to false"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    return v0
.end method


# virtual methods
.method public load(I)V
    .registers 6

    if-ltz p1, :cond_58

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_58

    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    aget-object v0, v0, p1

    monitor-enter v0

    :try_start_c
    iget v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    packed-switch v1, :pswitch_data_72

    const-string v1, "MediaActionSound"

    goto :goto_33

    :pswitch_14  #0x0
    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    move-result v1

    if-gtz v1, :cond_53

    const-string v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load() error loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :goto_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    :goto_53
    monitor-exit v0

    return-void

    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_c .. :try_end_57} :catchall_55

    throw v1

    :cond_58
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_14  #00000000
    .end packed-switch
.end method

.method public play(I)V
    .registers 11

    if-ltz p1, :cond_71

    sget-object v0, Landroid/media/MediaActionSound;->SOUND_FILES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_71

    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    aget-object v0, v0, p1

    monitor-enter v0

    :try_start_c
    iget v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    packed-switch v1, :pswitch_data_8a

    :pswitch_11  #0x2
    const-string v1, "MediaActionSound"

    goto :goto_4a

    :pswitch_14  #0x3
    iget-object v2, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    iget v3, v0, Landroid/media/MediaActionSound$SoundState;->id:I

    const/high16 v4, 0x3f800000  # 1.0f

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_6c

    :pswitch_24  #0x0
    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    invoke-direct {p0, v0}, Landroid/media/MediaActionSound;->loadSound(Landroid/media/MediaActionSound$SoundState;)I

    move-result v1

    if-gtz v1, :cond_46

    const-string v1, "MediaActionSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play() error loading sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    :cond_46
    :pswitch_46  #0x1
    const/4 v1, 0x2

    iput v1, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    goto :goto_6c

    :goto_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/media/MediaActionSound$SoundState;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6c
    monitor-exit v0

    return-void

    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_c .. :try_end_70} :catchall_6e

    throw v1

    :cond_71
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_46  #00000001
        :pswitch_11  #00000002
        :pswitch_14  #00000003
    .end packed-switch
.end method

.method public release()V
    .registers 6

    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/media/MediaActionSound;->mSounds:[Landroid/media/MediaActionSound$SoundState;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    monitor-enter v4

    :try_start_e
    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->state:I

    iput v2, v4, Landroid/media/MediaActionSound$SoundState;->id:I

    monitor-exit v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catchall_16
    move-exception v0

    monitor-exit v4
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    iget-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaActionSound;->mSoundPool:Landroid/media/SoundPool;

    :cond_21
    return-void
.end method
