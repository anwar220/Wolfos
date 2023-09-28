# classes2.dex

.class public final Landroid/media/tv/interactive/TvInteractiveAppManager$Session;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;,
        Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;
    }
.end annotation


# static fields
.field static final DISPATCH_HANDLED:I = 0x1

.field static final DISPATCH_IN_PROGRESS:I = -0x1

.field static final DISPATCH_NOT_HANDLED:I = 0x0

.field private static final INPUT_SESSION_NOT_RESPONDING_TIMEOUT:J = 0x9c4L


# instance fields
.field private final mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mInputSession:Landroid/media/tv/TvInputManager$Session;

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

.field private final mSeq:I

.field private final mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

.field private final mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Landroid/os/IBinder;

.field private final mUserId:I


# direct methods
.method static bridge synthetic -$$Nest$mrecyclePendingEventLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->recyclePendingEventLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreleaseInternal(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->releaseInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/view/InputChannel;",
            "Landroid/media/tv/interactive/ITvInteractiveAppManager;",
            "II",
            "Landroid/util/SparseArray<",
            "Landroid/media/tv/interactive/TvInteractiveAppManager$SessionCallbackRecord;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    iput-object p3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iput p4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    iput p5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSeq:I

    iput-object p6, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;Landroid/media/tv/interactive/TvInteractiveAppManager$Session-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;-><init>(Landroid/os/IBinder;Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppManager;IILandroid/util/SparseArray;)V

    return-void
.end method

.method private flushPendingEventsLocked()V
    .registers 7

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_26

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_26
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;
    .registers 8

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    if-nez v0, :cond_11

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent-IA;)V

    move-object v0, v1

    :cond_11
    iput-object p1, v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    iput-object p2, v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventToken:Ljava/lang/Object;

    iput-object p3, v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mCallback:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;

    iput-object p4, v0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->recycle()V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private releaseInternal()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    if-eqz v2, :cond_18

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->flushPendingEventsLocked()V

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;->dispose()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    :cond_18
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_2f

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSeq:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_2c

    throw v1

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method private sendInputEventAndReportResultOnMainLooper(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    monitor-exit v0

    return-void

    :cond_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;Z)V

    return-void

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private sendInputEventOnMainLooperLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)I
    .registers 8

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_60

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    if-nez v1, :cond_15

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    invoke-virtual {v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;-><init>(Landroid/media/tv/interactive/TvInteractiveAppManager$Session;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    :cond_15
    iget-object v0, p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mSender:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;

    invoke-virtual {v2, v1, v0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$TvInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v2, v4, v5}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v3, -0x1

    return v3

    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send input event to session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dropping:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvInteractiveAppManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->createBiInteractiveApp(Landroid/os/IBinder;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method createMediaView(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_18

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    :try_start_18
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2, p2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_25

    nop

    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "view must be attached to a window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method destroyBiInteractiveApp(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->destroyBiInteractiveApp(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 9

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputChannel:Landroid/view/InputChannel;

    if-nez v1, :cond_13

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/media/tv/interactive/TvInteractiveAppManager$Session$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_27

    invoke-direct {p0, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->sendInputEventOnMainLooperLocked(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;)I

    move-result v2

    monitor-exit v0

    return v2

    :cond_27
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    invoke-virtual {v3, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v3, -0x1

    monitor-exit v0

    return v3

    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_c .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public dispatchSurfaceChanged(III)V
    .registers 10

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_16} :catch_18

    nop

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method finishedInputEvent(IZZ)V
    .registers 10

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    if-eqz p3, :cond_37

    const-string v3, "TvInteractiveAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for session to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_37
    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mHandler:Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$InputEventHandler;->removeMessages(ILjava/lang/Object;)V

    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_42

    invoke-virtual {p0, v2, p2}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->invokeFinishedInputEventCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;Z)V

    return-void

    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public getInputSession()Landroid/media/tv/TvInputManager$Session;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputSession:Landroid/media/tv/TvInputManager$Session;

    return-object v0
.end method

.method invokeFinishedInputEventCallback(Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;Z)V
    .registers 5

    iput-boolean p2, p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mHandled:Z

    iget-object v0, p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->run()V

    goto :goto_1f

    :cond_12
    iget-object v0, p1, Landroid/media/tv/interactive/TvInteractiveAppManager$Session$PendingEvent;->mEventHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1f
    return-void
.end method

.method public notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyAdResponse(Landroid/os/IBinder;Landroid/media/tv/AdResponse;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyBroadcastInfoResponse(Landroid/os/IBinder;Landroid/media/tv/BroadcastInfoResponse;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyContentAllowed()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyContentAllowed(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyContentBlocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_17} :catch_19

    nop

    return-void

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifySignalStrength(I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifySignalStrength(Landroid/os/IBinder;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyTrackSelected(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTrackSelected(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyTracksChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTracksChanged(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyTuned(Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyTuned(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyVideoAvailable()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyVideoAvailable(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyVideoUnavailable(I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->notifyVideoUnavailable(Landroid/os/IBinder;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_f

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_18

    nop

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public release()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->releaseSession(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_18

    nop

    invoke-direct {p0}, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->releaseInternal()V

    return-void

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method removeMediaView()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->removeMediaView(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method resetInteractiveApp()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->resetInteractiveApp(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method sendCurrentChannelLcn(I)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendCurrentChannelLcn(Landroid/os/IBinder;II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method sendSigningResult(Ljava/lang/String;[B)V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, p2, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method sendStreamVolume(F)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendStreamVolume(Landroid/os/IBinder;FI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method sendTrackInfoList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInputSession(Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mInputSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method setTeletextAppEnabled(Z)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, p1, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->setTeletextAppEnabled(Landroid/os/IBinder;ZI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method startInteractiveApp()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->startInteractiveApp(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method stopInteractiveApp()V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    const-string v0, "TvInteractiveAppManager"

    const-string v1, "The session has been already released"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :try_start_c
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mService:Landroid/media/tv/interactive/ITvInteractiveAppManager;

    iget v2, p0, Landroid/media/tv/interactive/TvInteractiveAppManager$Session;->mUserId:I

    invoke-interface {v1, v0, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManager;->stopInteractiveApp(Landroid/os/IBinder;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_15

    nop

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
