# classes2.dex

.class Landroid/media/RemoteController$EventHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteController;


# direct methods
.method public constructor <init>(Landroid/media/RemoteController;Landroid/media/RemoteController;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :pswitch_20  #0x2
    iget-object v0, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaMetadata;

    invoke-static {v0, v1}, Landroid/media/RemoteController;->-$$Nest$monNewMediaMetadata(Landroid/media/RemoteController;Landroid/media/MediaMetadata;)V

    goto :goto_41

    :pswitch_2a  #0x1
    iget-object v0, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/session/PlaybackState;

    invoke-static {v0, v1}, Landroid/media/RemoteController;->-$$Nest$monNewPlaybackState(Landroid/media/RemoteController;Landroid/media/session/PlaybackState;)V

    goto :goto_41

    :pswitch_34  #0x0
    iget-object v0, p0, Landroid/media/RemoteController$EventHandler;->this$0:Landroid/media/RemoteController;

    iget v1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    :goto_3d
    invoke-static {v0, v2}, Landroid/media/RemoteController;->-$$Nest$monClientChange(Landroid/media/RemoteController;Z)V

    nop

    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_34  #00000000
        :pswitch_2a  #00000001
        :pswitch_20  #00000002
    .end packed-switch
.end method
