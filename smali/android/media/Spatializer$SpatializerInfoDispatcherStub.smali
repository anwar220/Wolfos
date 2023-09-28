# classes2.dex

.class final Landroid/media/Spatializer$SpatializerInfoDispatcherStub;
.super Landroid/media/ISpatializerCallback$Stub;

# interfaces
.implements Landroid/media/CallbackUtil$DispatcherStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Spatializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerInfoDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Spatializer;


# direct methods
.method private constructor <init>(Landroid/media/Spatializer;)V
    .registers 2

    iput-object p1, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-direct {p0}, Landroid/media/ISpatializerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/Spatializer;Landroid/media/Spatializer$SpatializerInfoDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;-><init>(Landroid/media/Spatializer;)V

    return-void
.end method


# virtual methods
.method public dispatchSpatializerAvailableChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda0;-><init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public dispatchSpatializerEnabledChanged(Z)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmStateListenerMgr(Landroid/media/Spatializer;)Landroid/media/CallbackUtil$LazyListenerManager;

    move-result-object v0

    new-instance v1, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/Spatializer$SpatializerInfoDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/Spatializer$SpatializerInfoDispatcherStub;Z)V

    invoke-virtual {v0, v1}, Landroid/media/CallbackUtil$LazyListenerManager;->callListeners(Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method synthetic lambda$dispatchSpatializerAvailableChanged$1$android-media-Spatializer$SpatializerInfoDispatcherStub(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnSpatializerStateChangedListener;->onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method

.method synthetic lambda$dispatchSpatializerEnabledChanged$0$android-media-Spatializer$SpatializerInfoDispatcherStub(ZLandroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-interface {p2, v0, p1}, Landroid/media/Spatializer$OnSpatializerStateChangedListener;->onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V

    return-void
.end method

.method public register(Z)V
    .registers 3

    if-eqz p1, :cond_f

    :try_start_2
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V

    goto :goto_1b

    :cond_f
    iget-object v0, p0, Landroid/media/Spatializer$SpatializerInfoDispatcherStub;->this$0:Landroid/media/Spatializer;

    invoke-static {v0}, Landroid/media/Spatializer;->-$$Nest$fgetmAm(Landroid/media/Spatializer;)Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IAudioService;->unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V
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
