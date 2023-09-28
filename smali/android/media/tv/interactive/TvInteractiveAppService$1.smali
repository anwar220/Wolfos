# classes2.dex

.class Landroid/media/tv/interactive/TvInteractiveAppService$1;
.super Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/interactive/TvInteractiveAppService;


# direct methods
.method constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppService;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v1}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService;->onRegisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    return-void
.end method

.method public registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_b
    return-void
.end method

.method public sendAppLinkCommand(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService;->onAppLinkCommand(Landroid/os/Bundle;)V

    return-void
.end method

.method public unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-virtual {v0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService;->onUnregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    return-void
.end method

.method public unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$1;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/interactive/TvInteractiveAppService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_b
    return-void
.end method
