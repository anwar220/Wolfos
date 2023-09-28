# classes3.dex

.class final Landroid/view/Choreographer$FrameHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_3a

    goto :goto_39

    :sswitch_6
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/Choreographer;->-$$Nest$fputmFrameScheduled(Landroid/view/Choreographer;Z)V

    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    new-instance v4, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    goto :goto_39

    :sswitch_1b
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->doScheduleCallback(I)V

    goto :goto_39

    :sswitch_23
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->doScheduleVsync()V

    goto :goto_39

    :sswitch_29
    iget-object v0, p0, Landroid/view/Choreographer$FrameHandler;->this$0:Landroid/view/Choreographer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x0

    new-instance v4, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v4}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/Choreographer;->doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    nop

    :goto_39
    return-void

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_29
        0x1 -> :sswitch_23
        0x2 -> :sswitch_1b
        0x64 -> :sswitch_6
    .end sparse-switch
.end method
