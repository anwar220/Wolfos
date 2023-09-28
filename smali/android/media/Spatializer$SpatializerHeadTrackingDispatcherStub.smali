# classes2.dex

.class final Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;
.super Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerHeadTrackingDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Spatializer;


# direct methods
.method private constructor <init>(Landroid/media/Spatializer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackingModeCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method


# virtual methods
.method public dispatchSpatializerActualHeadTrackingModeChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmHeadTrackingListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public dispatchSpatializerDesiredHeadTrackingModeChanged(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmHeadTrackingListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;I)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method synthetic lambda$dispatchSpatializerActualHeadTrackingModeChanged$0$android-media-Spatializer$SpatializerHeadTrackingDispatcherStub(ILandroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;->onHeadTrackingModeChanged(Landroid/media/Spatializer;I)V

    return-void
.end method

.method synthetic lambda$dispatchSpatializerDesiredHeadTrackingModeChanged$1$android-media-Spatializer$SpatializerHeadTrackingDispatcherStub(ILandroid/media/Spatializer$OnHeadTrackingModeChangedListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnHeadTrackingModeChangedListener;->onDesiredHeadTrackingModeChanged(Landroid/media/Spatializer;I)V

    return-void
.end method

.method public register(Z)V
    .registers 3

    if-eqz p1, :cond_f

    :try_start_2
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V

    goto :goto_1b

    :cond_f
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerHeadTrackingDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1b} :catch_1c

    :goto_1b
    goto :goto_20

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_20
    return-void
.end method
