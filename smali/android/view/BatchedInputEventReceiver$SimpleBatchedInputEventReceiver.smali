# classes3.dex

.class public Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleBatchedInputEventReceiver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;
    }
.end annotation


# instance fields
.field protected mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object p4, p0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->mListener:Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;

    invoke-interface {v1, p1}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    move v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    nop

    return-void

    :catchall_d
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
