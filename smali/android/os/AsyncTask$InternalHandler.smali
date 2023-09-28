# classes3.dex

.class Landroid/os/AsyncTask$InternalHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncTask$AsyncTaskResult;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1e

    goto :goto_1d

    :pswitch_a  #0x2
    iget-object v1, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mTask:Landroid/os/AsyncTask;

    iget-object v2, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_1d

    :pswitch_12  #0x1
    iget-object v1, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mTask:Landroid/os/AsyncTask;

    iget-object v2, v0, Landroid/os/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Landroid/os/AsyncTask;->-$$Nest$mfinish(Landroid/os/AsyncTask;Ljava/lang/Object;)V

    nop

    :goto_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12  #00000001
        :pswitch_a  #00000002
    .end packed-switch
.end method
