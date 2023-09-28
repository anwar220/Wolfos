# classes3.dex

.class public Landroid/view/ScrollCaptureConnection;
.super Landroid/view/IScrollCaptureConnection$Stub;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScrollCaptureConnection$ConsumerCallback;,
        Landroid/view/ScrollCaptureConnection$RunnableCallback;,
        Landroid/view/ScrollCaptureConnection$SafeCallback;
    }
.end annotation


# static fields
.field private static final END_CAPTURE:Ljava/lang/String; = "endCapture"

.field private static final REQUEST_IMAGE:Ljava/lang/String; = "requestImage"

.field private static final SESSION:Ljava/lang/String; = "Session"

.field private static final START_CAPTURE:Ljava/lang/String; = "startCapture"

.field private static final TAG:Ljava/lang/String; = "ScrollCaptureConnection"

.field private static final TRACE_TRACK:Ljava/lang/String; = "Scroll Capture"


# instance fields
.field private volatile mActive:Z

.field private mCancellation:Landroid/os/CancellationSignal;

.field private final mCloseGuard:Landroid/util/CloseGuard;

.field private volatile mConnected:Z

.field private mLocal:Landroid/view/ScrollCaptureCallback;

.field private final mLock:Ljava/lang/Object;

.field private final mPositionInWindow:Landroid/graphics/Point;

.field private mRemote:Landroid/view/IScrollCaptureCallbacks;

.field private final mScrollBounds:Landroid/graphics/Rect;

.field private mSession:Landroid/view/ScrollCaptureSession;

.field private mTraceId:I

.field private final mUiThread:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$aHa1nYzlA8DXYbBXEppFatNBwME(Landroid/view/ScrollCaptureConnection;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->onStartCaptureCompleted()V

    return-void
.end method

.method public static synthetic $r8$lambda$zWgTS0v3aZzF3a5x0BYqDeVA_uU(Landroid/view/ScrollCaptureConnection;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->onEndCaptureCompleted()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/view/ScrollCaptureTarget;)V
    .registers 5

    invoke-direct {p0}, Landroid/view/IScrollCaptureConnection$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v0, "<uiThread> must non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    const-string v0, "<selectedTarget> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-string/jumbo v1, "target.getScrollBounds() must be non-null to construct a client"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mScrollBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mPositionInWindow:Landroid/graphics/Point;

    return-void
.end method

.method private cancelPendingAction()V
    .registers 5

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1c

    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "CancellationSignal.cancel"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ScrollCaptureConnection"

    const-string v1, "cancelling pending operation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    :cond_1c
    return-void
.end method

.method private checkActive()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not started!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method static synthetic lambda$close$3()V
    .registers 0

    return-void
.end method

.method static synthetic lambda$close$4(Landroid/view/ScrollCaptureCallback;)V
    .registers 2

    new-instance v0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onEndCaptureCompleted()V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/view/IScrollCaptureCallbacks;->onCaptureEnded()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_14
    .catchall {:try_start_4 .. :try_end_b} :catchall_12

    :cond_b
    nop

    :goto_c
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    goto :goto_1e

    :catchall_12
    move-exception v1

    goto :goto_31

    :catch_14
    move-exception v1

    :try_start_15
    const-string v2, "ScrollCaptureConnection"

    const-string v3, "Caught exception confirming capture end!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    nop

    goto :goto_c

    :goto_1e
    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "endCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string v4, "Session"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    return-void

    :goto_31
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    throw v1
.end method

.method private onStartCaptureCompleted()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    :try_start_3
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->onCaptureStarted()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_14

    :catch_9
    move-exception v0

    const-string v1, "ScrollCaptureConnection"

    const-string v2, "Shutting down due to error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    :goto_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    const-wide/16 v0, 0x2

    iget v2, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string v3, "Scroll Capture"

    const-string/jumbo v4, "startCapture"

    invoke-static {v0, v1, v3, v4, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "binderDied"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ScrollCaptureConnection"

    const-string v1, "Controlling process just died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V

    return-void
.end method

.method public close()V
    .registers 5

    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "close"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    const-string v0, "ScrollCaptureConnection"

    const-string v2, "close(): capture session still active! Ending now."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;-><init>(Landroid/view/ScrollCaptureCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    :cond_26
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_31
    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    iput-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    return-void
.end method

.method public endCapture()Landroid/os/ICancellationSignal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "endCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->checkActive()V

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda1;-><init>(Landroid/view/ScrollCaptureConnection;)V

    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda2;-><init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    return v0
.end method

.method synthetic lambda$endCapture$2$android-view-ScrollCaptureConnection(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method synthetic lambda$requestImage$1$android-view-ScrollCaptureConnection(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 7

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v1, v2, v3, p2}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    :cond_10
    return-void
.end method

.method synthetic lambda$startCapture$0$android-view-ScrollCaptureConnection(Ljava/lang/Runnable;)V
    .registers 5

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    invoke-interface {v0, v1, v2, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V

    return-void
.end method

.method onImageRequestCompleted(Landroid/graphics/Rect;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/IScrollCaptureCallbacks;->onImageRequestCompleted(ILandroid/graphics/Rect;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_c
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    :goto_7
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    goto :goto_18

    :catchall_a
    move-exception v1

    goto :goto_25

    :catch_c
    move-exception v1

    :try_start_d
    const-string v2, "ScrollCaptureConnection"

    const-string v3, "Shutting down due to error: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/view/ScrollCaptureConnection;->close()V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_a

    goto :goto_7

    :goto_18
    const-wide/16 v0, 0x2

    iget v2, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string v3, "Scroll Capture"

    const-string/jumbo v4, "requestImage"

    invoke-static {v0, v1, v3, v4, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    return-void

    :goto_25
    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    throw v1
.end method

.method public requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string/jumbo v4, "requestImage"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->checkActive()V

    invoke-direct {p0}, Landroid/view/ScrollCaptureConnection;->cancelPendingAction()V

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda3;-><init>(Landroid/view/ScrollCaptureConnection;)V

    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda4;-><init>(Landroid/view/ScrollCaptureConnection;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public startCapture(Landroid/view/Surface;Landroid/view/IScrollCaptureCallbacks;)Landroid/os/ICancellationSignal;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "Session"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Landroid/view/ScrollCaptureConnection;->mTraceId:I

    const-string/jumbo v4, "startCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "ScrollCaptureConnection.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "<callbacks> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IScrollCaptureCallbacks;

    iput-object v0, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-interface {v0}, Landroid/view/IScrollCaptureCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ScrollCaptureConnection;->mConnected:Z

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mScrollBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/ScrollCaptureConnection;->mPositionInWindow:Landroid/graphics/Point;

    invoke-direct {v1, p1, v2, v3}, Landroid/view/ScrollCaptureSession;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iput-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda6;-><init>(Landroid/view/ScrollCaptureConnection;)V

    invoke-static {v1, v2, v3}, Landroid/view/ScrollCaptureConnection$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ScrollCaptureConnection;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v1}, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda7;-><init>(Landroid/view/ScrollCaptureConnection;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :cond_66
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "surface must be valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureConnection{active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/ScrollCaptureConnection;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mSession:Landroid/view/ScrollCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mRemote:Landroid/view/IScrollCaptureCallbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ScrollCaptureConnection;->mLocal:Landroid/view/ScrollCaptureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
