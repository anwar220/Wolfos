# classes2.dex

.class public Landroid/media/Spatializer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Spatializer$SpatializerOutputDispatcherStub;,
        Landroid/media/Spatializer$SpatializerPoseDispatcherStub;,
        Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;,
        Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;,
        Landroid/media/Spatializer$SpatializerInfoDispatcherStub;,
        Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;,
        Landroid/media/Spatializer$OnSpatializerOutputChangedListener;,
        Landroid/media/Spatializer$OnHeadTrackerAvailableListener;,
        Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;,
        Landroid/media/Spatializer$OnSpatializerStateChangedListener;,
        Landroid/media/Spatializer$HeadTrackingModeSupported;,
        Landroid/media/Spatializer$HeadTrackingModeSet;,
        Landroid/media/Spatializer$HeadTrackingMode;,
        Landroid/media/Spatializer$ImmersiveAudioLevel;
    }
.end annotation


# static fields
.field public static final HEAD_TRACKING_MODE_DISABLED:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final HEAD_TRACKING_MODE_OTHER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final HEAD_TRACKING_MODE_RELATIVE_DEVICE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final HEAD_TRACKING_MODE_RELATIVE_WORLD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final HEAD_TRACKING_MODE_UNSUPPORTED:I = -0x2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final SPATIALIZER_IMMERSIVE_LEVEL_MCHAN_BED_PLUS_OBJECTS:I = 0x2

.field public static final SPATIALIZER_IMMERSIVE_LEVEL_MULTICHANNEL:I = 0x1

.field public static final SPATIALIZER_IMMERSIVE_LEVEL_NONE:I = 0x0

.field public static final SPATIALIZER_IMMERSIVE_LEVEL_OTHER:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spatializer"


# instance fields
.field private final mAm:Landroid/media/AudioManager;

.field private final mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnHeadTrackerAvailableListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

.field private mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/Spatializer$OnSpatializerOutputChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOutputListenerLock:Ljava/lang/Object;

.field private mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

.field private mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$ListenerInfo<",
            "Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPoseListenerLock:Ljava/lang/Object;

.field private final mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/CallbackUtil$LazyListenerManager<",
            "Landroid/media/Spatializer$OnSpatializerStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mAm:Landroid/media/AudioManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeadTrackerListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeadTrackingListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPoseListener(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$ListenerInfo;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPoseListenerLock(Landroid/media/Spatializer;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;
    .registers 1

    iget-object p0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    return-object p0
.end method

.method protected constructor <init>(Landroid/media/AudioManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v0, Landroid/media/CallbackUtil$LazyListenerManager;

    invoke-direct {v0}, Landroid/media/CallbackUtil$LazyListenerManager;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/media/Spatializer;->mAm:Landroid/media/AudioManager;

    return-void
.end method

.method public static final headtrackingModeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "head tracking mode unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17  #0x2
    const-string v0, "HEAD_TRACKING_MODE_RELATIVE_DEVICE"

    return-object v0

    :pswitch_1a  #0x1
    const-string v0, "HEAD_TRACKING_MODE_RELATIVE_WORLD"

    return-object v0

    :pswitch_1d  #0x0
    const-string v0, "HEAD_TRACKING_MODE_OTHER"

    return-object v0

    :pswitch_20  #0xffffffff
    const-string v0, "HEAD_TRACKING_MODE_DISABLED"

    return-object v0

    :pswitch_23  #0xfffffffe
    const-string v0, "HEAD_TRACKING_MODE_UNSUPPORTED"

    return-object v0

    :pswitch_data_26
    .packed-switch -0x2
        :pswitch_23  #fffffffe
        :pswitch_20  #ffffffff
        :pswitch_1d  #00000000
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
    .end packed-switch
.end method


# virtual methods
.method public addCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling addSpatializerCompatibleAudioDevice(), "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public addOnHeadTrackerAvailableListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .registers 6

    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnHeadTrackerAvailableListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public addOnHeadTrackingModeChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnHeadTrackingModeChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 6

    iget-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    new-instance v1, Landroid/media/Spatializer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/media/Spatializer$$ExternalSyntheticLambda2;-><init>(Landroid/media/Spatializer;)V

    const-string v2, "addOnSpatializerStateChangedListener"

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->addListener(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioFormat;

    invoke-interface {v0, v1, v2}, Landroid/media/IAudioService;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    return v0

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error querying canBeSpatialized for attr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returning false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spatializer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public clearOnHeadToSoundstagePoseUpdatedListener()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_1a

    :try_start_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_22

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    nop

    const/4 v1, 0x0

    :try_start_14
    iput-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    monitor-exit v0

    return-void

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No listener to clear"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public clearOnSpatializerOutputChangedListener()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_22

    if-eqz v1, :cond_1a

    :try_start_7
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v2, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_22

    goto :goto_12

    :catch_11
    move-exception v1

    :goto_12
    nop

    const/4 v1, 0x0

    :try_start_14
    iput-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    monitor-exit v0

    return-void

    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No listener to clear"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getCompatibleAudioDevices()Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSpatializerCompatibleAudioDevices()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error querying getSpatializerCompatibleAudioDevices(),  returning empty list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object v1
.end method

.method public getDesiredHeadTrackingMode()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getDesiredHeadTrackingMode()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling getDesiredHeadTrackingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x2

    return v1
.end method

.method public getEffectParameter(I[B)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->getSpatializerParameter(I[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling getEffectParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public getHeadTrackingMode()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getActualHeadTrackingMode()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling getActualHeadTrackingMode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x2

    return v1
.end method

.method public getImmersiveAudioLevel()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getSpatializerImmersiveAudioLevel()I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    goto :goto_c

    :catch_b
    move-exception v1

    :goto_c
    nop

    return v0
.end method

.method public getOutput()I
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getSpatializerOutput()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling getSpatializerOutput"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getSupportedHeadTrackingModes()Ljava/util/List;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IAudioService;->getSupportedHeadTrackingModes()[I

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v1

    move v4, v0

    :goto_10
    if-ge v4, v3, :cond_1f

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1b} :catch_20

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1f
    return-object v2

    :catch_20
    move-exception v1

    const-string v2, "Spatializer"

    const-string v3, "Error calling getSupportedHeadTrackModes"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v2
.end method

.method public hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isSpatializerAvailable()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error querying isSpatializerAvailable, returning false"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isSpatializerEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error querying isSpatializerEnabled, returning false"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isHeadTrackerAvailable()Z
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->isHeadTrackerAvailable()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method public isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_b} :catch_c

    return v0

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$addOnHeadTrackerAvailableListener$0$android-media-Spatializer()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    new-instance v0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub-IA;)V

    return-object v0
.end method

.method synthetic lambda$addOnHeadTrackingModeChangedListener$2$android-media-Spatializer()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    new-instance v0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub-IA;)V

    return-object v0
.end method

.method synthetic lambda$addOnSpatializerStateChangedListener$1$android-media-Spatializer()Landroid/media/CallbackUtil$DispatcherStub;
    .registers 3

    new-instance v0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerInfoDispatcherStub-IA;)V

    return-object v0
.end method

.method public recenterHeadTracker()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->recenterHeadTracker()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling recenterHeadTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public removeCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDeviceAttributes;

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    :catch_e
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling removeSpatializerCompatibleAudioDevice(), "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    return-void
.end method

.method public removeOnHeadTrackerAvailableListener(Landroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackerListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnHeadTrackerAvailableListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public removeOnHeadTrackingModeChangedListener(Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    iget-object v0, p0, Landroid/media/Spatializer;->mHeadTrackingListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnHeadTrackingModeChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer;->mStateListenerMgr:Landroid/media/CallbackUtil$LazyListenerManager;

    const-string v1, "removeOnSpatializerStateChangedListener"

    invoke-virtual {v0, p1, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->removeListener(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setDesiredHeadTrackingMode(I)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setDesiredHeadTrackingMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_21

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error calling setDesiredHeadTrackingMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spatializer"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method

.method public setEffectParameter(I[B)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setSpatializerParameter(I[B)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling setEffectParameter"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public setEnabled(Z)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSpatializerEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling setSpatializerEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public setGlobalTransform([F)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1b

    :try_start_a
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/IAudioService;->setSpatializerGlobalTransform([F)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    const-string v1, "Spatializer"

    const-string v2, "Error calling setGlobalTransform"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transform array must be of size 6, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/IAudioService;->setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_f
    return-void
.end method

.method public setOnHeadToSoundstagePoseUpdatedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnHeadToSoundstagePoseUpdatedListener;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/Spatializer;->mPoseListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    if-nez v1, :cond_2d

    new-instance v1, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v1, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    new-instance v1, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/Spatializer$SpatializerPoseDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerPoseDispatcherStub-IA;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_35

    :try_start_1c
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v3, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    invoke-interface {v1, v3}, Landroid/media/IAudioService;->registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26
    .catchall {:try_start_1c .. :try_end_25} :catchall_35

    goto :goto_2b

    :catch_26
    move-exception v1

    :try_start_27
    iput-object v2, p0, Landroid/media/Spatializer;->mPoseListener:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object v2, p0, Landroid/media/Spatializer;->mPoseDispatcher:Landroid/media/Spatializer$SpatializerPoseDispatcherStub;

    :goto_2b
    monitor-exit v0

    return-void

    :cond_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to overwrite existing listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public setOnSpatializerOutputChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerOutputChangedListener;)V
    .registers 7
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->PRIVILEGED_APPS:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/Spatializer;->mOutputListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    if-nez v1, :cond_36

    new-instance v1, Landroid/media/CallbackUtil$ListenerInfo;

    invoke-direct {v1, p2, p1}, Landroid/media/CallbackUtil$ListenerInfo;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    new-instance v1, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;-><init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerOutputDispatcherStub-IA;)V

    iput-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_3e

    :try_start_1c
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget-object v3, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-interface {v1, v3}, Landroid/media/IAudioService;->registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V

    iget-object v1, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    invoke-virtual {p0}, Landroid/media/Spatializer;->getOutput()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/media/Spatializer$SpatializerOutputDispatcherStub;->dispatchSpatializerOutputChanged(I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2e} :catch_2f
    .catchall {:try_start_1c .. :try_end_2e} :catchall_3e

    goto :goto_34

    :catch_2f
    move-exception v1

    :try_start_30
    iput-object v2, p0, Landroid/media/Spatializer;->mOutputListener:Landroid/media/CallbackUtil$ListenerInfo;

    iput-object v2, p0, Landroid/media/Spatializer;->mOutputDispatcher:Landroid/media/Spatializer$SpatializerOutputDispatcherStub;

    :goto_34
    monitor-exit v0

    return-void

    :cond_36
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to overwrite existing listener"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_3e

    throw v1
.end method
