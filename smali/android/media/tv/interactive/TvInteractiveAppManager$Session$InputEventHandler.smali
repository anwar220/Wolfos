# classes2.dex

.class final Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventHandler"
.end annotation


# static fields
.field public static final MSG_FLUSH_INPUT_EVENT:I = 0x3

.field public static final MSG_SEND_INPUT_EVENT:I = 0x1

.field public static final MSG_TIMEOUT_INPUT_EVENT:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;


# direct methods
.method constructor <init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_22

    return-void

    :pswitch_7  #0x3
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_f  #0x2
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_18  #0x1
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->this$0:Landroid/media/tv/interactive/TvInteractiveAppManager$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    invoke-static {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->-$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_f  #00000002
        :pswitch_7  #00000003
    .end packed-switch
.end method
