# classes2.dex

.class final Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;
.super Landroid/media/IMuteAwaitConnectionCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MuteAwaitConnectionDispatcherStub"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method private constructor <init>(Landroid/media/AudioManager;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IMuteAwaitConnectionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioManager;Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method static synthetic lambda$dispatchOnMutedUntilConnection$0(Landroid/media/AudioDeviceAttributes;[ILandroid/media/AudioManager$MuteAwaitConnectionCallback;)V
    .registers 3

    invoke-virtual {p2, p0, p1}, Landroid/media/AudioManager$MuteAwaitConnectionCallback;->onMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V

    return-void
.end method

.method static synthetic lambda$dispatchOnUnmutedEvent$1(ILandroid/media/AudioDeviceAttributes;[ILandroid/media/AudioManager$MuteAwaitConnectionCallback;)V
    .registers 4

    invoke-virtual {p3, p0, p1, p2}, Landroid/media/AudioManager$MuteAwaitConnectionCallback;->onUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V

    return-void
.end method


# virtual methods
.method public dispatchOnMutedUntilConnection(Landroid/media/AudioDeviceAttributes;[I)V
    .registers 6

    iget-object v0, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmMuteAwaitConnectionListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmMuteAwaitConnectionListenerLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda1;-><init>(Landroid/media/AudioDeviceAttributes;[I)V

    invoke-static {v0, v1, v2}, Landroid/media/CallbackUtil;->callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public dispatchOnUnmutedEvent(ILandroid/media/AudioDeviceAttributes;[I)V
    .registers 7

    iget-object v0, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmMuteAwaitConnectionListeners(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmMuteAwaitConnectionListenerLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, p3}, Landroid/media/AudioManager$MuteAwaitConnectionDispatcherStub$$ExternalSyntheticLambda0;-><init>(ILandroid/media/AudioDeviceAttributes;[I)V

    invoke-static {v0, v1, v2}, Landroid/media/CallbackUtil;->callListeners(Ljava/util/ArrayList;Ljava/lang/Object;Landroid/media/CallbackUtil$CallbackMethod;)V

    return-void
.end method

.method public register(Z)V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/media/AudioManager;->getService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/IAudioService;->registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    nop

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
