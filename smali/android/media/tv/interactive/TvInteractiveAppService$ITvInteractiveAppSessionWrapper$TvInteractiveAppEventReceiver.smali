# classes2.dex

.class final Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;
.super Landroid/view/InputEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TvInteractiveAppEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;


# direct methods
.method constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->-$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_d
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->this$0:Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;

    invoke-static {v0}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;->-$$Nest$fgetmSessionImpl(Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper;)Landroid/media/tv/interactive/TvInteractiveAppService$Session;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    move v1, v2

    :cond_1e
    invoke-virtual {p0, p1, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$ITvInteractiveAppSessionWrapper$TvInteractiveAppEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :cond_21
    return-void
.end method
