# classes3.dex

.class Landroid/print/PrintManager$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintManager;


# direct methods
.method constructor <init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    iput-object p1, p0, Landroid/print/PrintManager$1;->this$0:Landroid/print/PrintManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    invoke-virtual {v1}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_1b

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/print/PrintJobId;

    invoke-interface {v2, v3}, Landroid/print/PrintManager$PrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V

    :cond_1b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method
