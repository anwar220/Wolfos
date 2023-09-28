# classes2.dex

.class final Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;
.super Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerHeadTrackerAvailableDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Spatializer;


# direct methods
.method private constructor <init>(Landroid/media/Spatializer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackerAvailableCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method


# virtual methods
.method public dispatchSpatializerHeadTrackerAvailable(Z)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmHeadTrackerListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method synthetic lambda$dispatchSpatializerHeadTrackerAvailable$0$android-media-Spatializer$SpatializerHeadTrackerAvailableDispatcherStub(ZLandroid/media/Spatializer$OnHeadTrackerAvailableListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnHeadTrackerAvailableListener;->onHeadTrackerAvailableChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method

.method public register(Z)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackerAvailableDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_11
    return-void
.end method
