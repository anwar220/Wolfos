# classes2.dex

.class final Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;
.super Landroid/media/IAudioDeviceVolumeDispatcher$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DeviceVolumeDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method constructor <init>(Landroid/media/AudioDeviceVolumeManager;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {p0}, Landroid/media/IAudioDeviceVolumeDispatcher$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$dispatchDeviceVolumeAdjusted$1(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .registers 6

    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;->onAudioDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V

    return-void
.end method

.method static synthetic lambda$dispatchDeviceVolumeChanged$0(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .registers 4

    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mListener:Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;

    invoke-interface {v0, p1, p2}, Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;->onAudioDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V

    return-void
.end method


# virtual methods
.method public dispatchDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .registers 16

    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v1}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_3e

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    iget-object v3, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3, p1}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v9, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v10, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;

    move-object v3, v10

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3c
    goto :goto_18

    :cond_3d
    return-void

    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public dispatchDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .registers 8

    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListenerLock(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v1}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeListeners(Landroid/media/AudioDeviceVolumeManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_38

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;

    iget-object v3, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v3, p1}, Landroid/media/AudioDeviceAttributes;->equalTypeAddress(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, v2, Landroid/media/AudioDeviceVolumeManager$ListenerInfo;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2, p1, p2}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioDeviceVolumeManager$ListenerInfo;Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_36
    goto :goto_18

    :cond_37
    return-void

    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public register(ZLandroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$smgetService()Landroid/media/IAudioService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v1}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmPackageName(Landroid/media/AudioDeviceVolumeManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/media/AudioDeviceAttributes;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    move v1, p1

    move-object v2, p0

    move v6, p4

    invoke-interface/range {v0 .. v6}, Landroid/media/IAudioService;->registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_23
    return-void
.end method
