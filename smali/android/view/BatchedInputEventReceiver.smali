# classes3.dex

.class public Landroid/view/BatchedInputEventReceiver;
.super Landroid/view/InputEventReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;,
        Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;
    }
.end annotation


# instance fields
.field private final mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

.field private mBatchedInputScheduled:Z

.field private mBatchingEnabled:Z

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mConsumeBatchedInputEvents:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChoreographer(Landroid/view/BatchedInputEventReceiver;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance v0, Landroid/view/BatchedInputEventReceiver$1;

    invoke-direct {v0, p0}, Landroid/view/BatchedInputEventReceiver$1;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable-IA;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    iput-object p3, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private scheduleBatchedInput()V
    .registers 5

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method private unscheduleBatchedInput()V
    .registers 5

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 3

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    return-void
.end method

.method protected doConsumeBatchedInput(J)V
    .registers 5

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-virtual {p0, p1, p2}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    :cond_16
    return-void
.end method

.method public onBatchedInputEventPending(I)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    goto :goto_d

    :cond_8
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    :goto_d
    return-void
.end method

.method public setBatchingEnabled(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_1a

    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method
