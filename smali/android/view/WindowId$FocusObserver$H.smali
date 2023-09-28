# classes3.dex

.class Landroid/view/WindowId$FocusObserver$H;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId$FocusObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowId$FocusObserver;


# direct methods
.method constructor <init>(Landroid/view/WindowId$FocusObserver;)V
    .registers 2

    iput-object p1, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1d

    :pswitch_9  #0x2
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowId;

    invoke-virtual {v0, v1}, Landroid/view/WindowId$FocusObserver;->onFocusLost(Landroid/view/WindowId;)V

    goto :goto_1d

    :pswitch_13  #0x1
    iget-object v0, p0, Landroid/view/WindowId$FocusObserver$H;->this$0:Landroid/view/WindowId$FocusObserver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowId;

    invoke-virtual {v0, v1}, Landroid/view/WindowId$FocusObserver;->onFocusGained(Landroid/view/WindowId;)V

    nop

    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_9  #00000002
    .end packed-switch
.end method
