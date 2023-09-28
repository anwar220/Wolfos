# classes2.dex

.class public abstract Landroid/media/tv/interactive/TvInteractiveAppService$Session;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/TvInteractiveAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMediaFrame:Landroid/graphics/Rect;

.field private mMediaView:Landroid/view/View;

.field private mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

.field private mMediaViewContainer:Landroid/widget/FrameLayout;

.field private mMediaViewEnabled:Z

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

.field private mSurface:Landroid/view/Surface;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMediaFrame(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionCallback(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowToken(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmMediaViewEnabled(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$minitialize(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    if-nez v1, :cond_d

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_d
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    :cond_1d
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private initialize(Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_b

    :cond_1b
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method


# virtual methods
.method createBiInteractiveApp(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 14

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    :cond_8
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCreateMediaView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    if-nez v0, :cond_27

    return-void

    :cond_27
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    if-eqz v0, :cond_32

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    :cond_32
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/16 v0, 0x3e9

    const/16 v1, 0x218

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_51

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    :cond_51
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    const/4 v9, -0x2

    move-object v2, v10

    move v7, v0

    move v8, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v10, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method destroyBiInteractiveApp(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V

    return-void
.end method

.method dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)I
    .registers 7

    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v0, p0, v2, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    goto :goto_3c

    :cond_12
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3c

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return v1

    :cond_2a
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_35

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return v1

    :cond_35
    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3d

    return v1

    :cond_3c
    :goto_3c
    nop

    :cond_3d
    const/4 v0, 0x0

    return v0
.end method

.method dispatchSurfaceChanged(III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSurfaceChanged(III)V

    return-void
.end method

.method public isMediaViewEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    return v0
.end method

.method public layoutSurface(IIII)V
    .registers 12

    if-gt p1, p3, :cond_13

    if-gt p2, p4, :cond_13

    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$2;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;IIII)V

    invoke-direct {p0, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method notifyAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onAdResponse(Landroid/media/tv/AdResponse;)V

    return-void
.end method

.method public final notifyBiInteractiveAppCreated(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;

    invoke-direct {v0, p0, p2, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$15;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V

    return-void
.end method

.method notifyContentAllowed()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentAllowed()V

    return-void
.end method

.method notifyContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onContentBlocked(Landroid/media/tv/TvContentRating;)V

    return-void
.end method

.method notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public notifySessionStateChanged(II)V
    .registers 4

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$14;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;II)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifySignalStrength(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSignalStrength(I)V

    return-void
.end method

.method public final notifyTeletextAppStateChanged(I)V
    .registers 3

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$16;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyTrackSelected(ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackSelected(ILjava/lang/String;)V

    return-void
.end method

.method notifyTracksChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTracksChanged(Ljava/util/List;)V

    return-void
.end method

.method notifyTuned(Landroid/net/Uri;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTuned(Landroid/net/Uri;)V

    return-void
.end method

.method notifyVideoAvailable()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoAvailable()V

    return-void
.end method

.method notifyVideoUnavailable(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onVideoUnavailable(I)V

    return-void
.end method

.method public onAdResponse(Landroid/media/tv/AdResponse;)V
    .registers 2

    return-void
.end method

.method public onBroadcastInfoResponse(Landroid/media/tv/BroadcastInfoResponse;)V
    .registers 2

    return-void
.end method

.method public onContentAllowed()V
    .registers 1

    return-void
.end method

.method public onContentBlocked(Landroid/media/tv/TvContentRating;)V
    .registers 2

    return-void
.end method

.method public onCreateBiInteractiveAppRequest(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onCreateMediaView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCurrentChannelLcn(I)V
    .registers 2

    return-void
.end method

.method public onCurrentChannelUri(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method public onCurrentTvInputId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onDestroyBiInteractiveAppRequest(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onMediaViewSizeChanged(II)V
    .registers 3

    return-void
.end method

.method public abstract onRelease()V
.end method

.method public onResetInteractiveApp()V
    .registers 1

    return-void
.end method

.method public abstract onSetSurface(Landroid/view/Surface;)Z
.end method

.method public onSetTeletextAppEnabled(Z)V
    .registers 2

    return-void
.end method

.method public onSignalStrength(I)V
    .registers 2

    return-void
.end method

.method public onSigningResult(Ljava/lang/String;[B)V
    .registers 3

    return-void
.end method

.method public onStartInteractiveApp()V
    .registers 1

    return-void
.end method

.method public onStopInteractiveApp()V
    .registers 1

    return-void
.end method

.method public onStreamVolume(F)V
    .registers 2

    return-void
.end method

.method public onSurfaceChanged(III)V
    .registers 4

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onTrackInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTrackSelected(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onTracksChanged(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTuned(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method public onVideoAvailable()V
    .registers 1

    return-void
.end method

.method public onVideoUnavailable(I)V
    .registers 2

    return-void
.end method

.method relayoutMediaView(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_27

    :cond_1a
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onMediaViewSizeChanged(II)V

    :cond_27
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewEnabled:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_32

    goto :goto_5a

    :cond_32
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_5a
    :goto_5a
    return-void
.end method

.method release()V
    .registers 3

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onRelease()V

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    :cond_d
    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_10
    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSessionCallback:Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->removeMediaView(Z)V

    return-void

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public removeBroadcastInfo(I)V
    .registers 3

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$4;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;I)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeMediaView(Z)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaFrame:Landroid/graphics/Rect;

    :cond_7
    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1d

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaView:Landroid/view/View;

    iget-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    :cond_1d
    return-void
.end method

.method public requestAd(Landroid/media/tv/AdRequest;)V
    .registers 3

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$13;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/AdRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestBroadcastInfo(Landroid/media/tv/BroadcastInfoRequest;)V
    .registers 3

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$3;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/media/tv/BroadcastInfoRequest;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestCurrentChannelLcn()V
    .registers 2

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$8;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestCurrentChannelUri()V
    .registers 2

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$7;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestCurrentTvInputId()V
    .registers 2

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$11;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 12

    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$12;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-direct {p0, v6}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestStreamVolume()V
    .registers 2

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$9;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestTrackInfoList()V
    .registers 2

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;

    invoke-direct {v0, p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$10;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method resetInteractiveApp()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onResetInteractiveApp()V

    return-void
.end method

.method scheduleMediaViewCleanup()V
    .registers 6

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_17

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask-IA;)V

    iput-object v1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mMediaViewCleanUpTask:Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/media/tv/interactive/TvInteractiveAppService$MediaViewCleanUpTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_17
    return-void
.end method

.method sendCurrentChannelLcn(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelLcn(I)V

    return-void
.end method

.method sendCurrentChannelUri(Landroid/net/Uri;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentChannelUri(Landroid/net/Uri;)V

    return-void
.end method

.method sendCurrentTvInputId(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onCurrentTvInputId(Ljava/lang/String;)V

    return-void
.end method

.method public sendPlaybackCommandRequest(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$5;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method sendSigningResult(Ljava/lang/String;[B)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSigningResult(Ljava/lang/String;[B)V

    return-void
.end method

.method sendStreamVolume(F)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStreamVolume(F)V

    return-void
.end method

.method sendTrackInfoList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onTrackInfoList(Ljava/util/List;)V

    return-void
.end method

.method public setMediaViewEnabled(Z)V
    .registers 4

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;

    invoke-direct {v1, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$1;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetSurface(Landroid/view/Surface;)Z

    iget-object v0, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_a
    iput-object p1, p0, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method setTeletextAppEnabled(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onSetTeletextAppEnabled(Z)V

    return-void
.end method

.method public setVideoBounds(Landroid/graphics/Rect;)V
    .registers 3

    new-instance v0, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;

    invoke-direct {v0, p0, p1}, Landroid/media/tv/interactive/TvInteractiveAppService$Session$6;-><init>(Landroid/media/tv/interactive/TvInteractiveAppService$Session;Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->executeOrPostRunnableOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method startInteractiveApp()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStartInteractiveApp()V

    return-void
.end method

.method stopInteractiveApp()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/tv/interactive/TvInteractiveAppService$Session;->onStopInteractiveApp()V

    return-void
.end method
