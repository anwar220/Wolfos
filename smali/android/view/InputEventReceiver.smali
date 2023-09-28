# classes3.dex

.class public abstract Landroid/view/InputEventReceiver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventReceiver$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventReceiver"


# instance fields
.field mChoreographer:Landroid/view/Choreographer;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J

.field private final mSeqMap:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/perfdebug/InputEventMonitor;->get()Landroid/os/perfdebug/InputEventMonitor;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_3e

    if-eqz p2, :cond_35

    iput-object p1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v1, p1, v2}, Landroid/view/InputEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-string v1, "InputEventReceiver.dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputChannel must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchInputEvent(ILandroid/view/InputEvent;)V
    .registers 5

    iget-object v0, p0, Landroid/view/InputEventReceiver;->mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

    invoke-virtual {v0, p2}, Landroid/os/perfdebug/InputEventMonitor;->monitorDispatchInputEvent(Landroid/view/InputEvent;)V

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_20

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/os/TurboSchedMonitor;->monitorInputEvent(Landroid/view/InputEvent;)V

    :cond_20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getMessageMonitor()Landroid/os/perfdebug/MessageMonitor;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/perfdebug/MessageMonitor;->checkInputEvent(Landroid/view/InputEvent;)V

    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, p2}, Landroid/view/InputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private dispatchMotionEventInfo(II)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    :cond_a
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1, p2}, Landroid/view/Choreographer;->setMotionEventInfo(II)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :cond_11
    goto :goto_1a

    :catch_12
    move-exception v0

    const-string v1, "InputEventReceiver"

    const-string v2, "cannot invoke setMotionEventInfo."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void
.end method

.method private dispose(Z)V
    .registers 7

    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_e
    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1b

    invoke-static {v0, v1}, Landroid/view/InputEventReceiver;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    :cond_1b
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    :cond_25
    iput-object v1, p0, Landroid/view/InputEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method

.method private static native nativeConsumeBatchedInputEvents(JJ)Z
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeDump(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeFinishInputEvent(JIZ)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputEventReceiver;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeReportTimeline(JIJJ)V
.end method


# virtual methods
.method public final consumeBatchedInputEvents(J)Z
    .registers 7

    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    const-string v0, "InputEventReceiver"

    const-string v1, "Attempted to consume batched input events but the input event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_11
    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventReceiver;->nativeConsumeBatchedInputEvents(JJ)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInputChannel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSeqMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mReceiverPtr:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputEventReceiver;->nativeDump(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/view/InputEventReceiver;->dispose(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final finishInputEvent(Landroid/view/InputEvent;Z)V
    .registers 7

    if-eqz p1, :cond_4f

    iget-wide v0, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "InputEventReceiver"

    if-nez v0, :cond_12

    const-string v0, "Attempted to finish an input event but the input event receiver has already been disposed."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_12
    iget-object v0, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_24

    const-string v2, "Attempted to finish an input event that is not in progress."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :cond_24
    iget-object v1, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    iget-object v2, p0, Landroid/view/InputEventReceiver;->mSeqMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    invoke-static {}, Landroid/view/InputEventInterceptStub;->getInstance()Landroid/view/InputEventInterceptStub;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/InputEventInterceptStub;->isOneway(Landroid/view/InputEvent;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-wide v2, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    invoke-static {v2, v3, v1, p2}, Landroid/view/InputEventReceiver;->nativeFinishInputEvent(JIZ)V

    :cond_3e
    iget-object v2, p0, Landroid/view/InputEventReceiver;->mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/os/perfdebug/InputEventMonitor;->monitorFinishInputEvent(Landroid/view/InputEvent;Ljava/lang/String;)V

    :goto_4b
    invoke-virtual {p1}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    return-void

    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMonitor()Landroid/os/perfdebug/InputEventMonitor;
    .registers 2

    iget-object v0, p0, Landroid/view/InputEventReceiver;->mInputEventMonitor:Landroid/os/perfdebug/InputEventMonitor;

    return-object v0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/view/InputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onBatchedInputEventPending(I)V
    .registers 4

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    return-void
.end method

.method public onDragEvent(ZFF)V
    .registers 4

    return-void
.end method

.method public onFocusEvent(Z)V
    .registers 2

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

.method public onPointerCaptureEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public final reportTimeline(IJJ)V
    .registers 16

    const-wide/16 v0, 0x4

    const-string/jumbo v2, "reportTimeline"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-wide v3, p0, Landroid/view/InputEventReceiver;->mReceiverPtr:J

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-static/range {v3 .. v9}, Landroid/view/InputEventReceiver;->nativeReportTimeline(JIJJ)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
