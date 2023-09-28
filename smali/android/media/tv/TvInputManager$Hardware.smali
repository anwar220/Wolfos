# classes2.dex

.class public final Landroid/media/tv/TvInputManager$Hardware;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hardware"
.end annotation


# instance fields
.field private final mInterface:Landroid/media/tv/ITvInputHardware;


# direct methods
.method static bridge synthetic -$$Nest$mgetInterface(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/TvInputManager$Hardware;->getInterface()Landroid/media/tv/ITvInputHardware;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/media/tv/ITvInputHardware;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$Hardware-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;)V

    return-void
.end method

.method private getInterface()Landroid/media/tv/ITvInputHardware;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .registers 12

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    nop

    return-void

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public overrideAudioSink(Landroid/media/AudioDeviceInfo;III)V
    .registers 11

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalDevice(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputHardware;->overrideAudioSink(ILjava/lang/String;III)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setStreamVolume(F)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v0, p1}, Landroid/media/tv/ITvInputHardware;->setStreamVolume(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    nop

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 5

    :try_start_0
    iget-object v0, p0, Landroid/media/tv/TvInputManager$Hardware;->mInterface:Landroid/media/tv/ITvInputHardware;

    invoke-interface {v0, p1, p2}, Landroid/media/tv/ITvInputHardware;->setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
