# classes2.dex

.class final Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;
.super Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioDeviceVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceVolumeBehaviorDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioDeviceVolumeManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioDeviceVolumeManager;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-direct {p0}, Landroid/media/IDeviceVolumeBehaviorDispatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioDeviceVolumeManager;Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;-><init>(Landroid/media/AudioDeviceVolumeManager;)V

    return-void
.end method

.method static synthetic lambda$dispatchDeviceVolumeBehaviorChanged$0(Landroid/media/AudioDeviceAttributes;ILandroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
    .registers 3

    invoke-interface {p2, p0, p1}, Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;->onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V

    return-void
.end method


# virtual methods
.method public dispatchDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .registers 5

    iget-object v0, p0, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub;->this$0:Landroid/media/AudioDeviceVolumeManager;

    invoke-static {v0}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$fgetmDeviceVolumeBehaviorChangedListenerMgr(Landroid/media/AudioDeviceVolumeManager;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Landroid/media/AudioDeviceVolumeManager$DeviceVolumeBehaviorDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/AudioDeviceAttributes;I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public register(Z)V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/media/AudioDeviceVolumeManager;->-$$Nest$smgetService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/media/IAudioService;->registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_c
    return-void
.end method
