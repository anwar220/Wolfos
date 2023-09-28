# classes3.dex

.class public final Landroid/view/Choreographer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Choreographer$CallbackQueue;,
        Landroid/view/Choreographer$CallbackRecord;,
        Landroid/view/Choreographer$FrameDisplayEventReceiver;,
        Landroid/view/Choreographer$FrameHandler;,
        Landroid/view/Choreographer$VsyncCallback;,
        Landroid/view/Choreographer$FrameData;,
        Landroid/view/Choreographer$FrameTimeline;,
        Landroid/view/Choreographer$FrameCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_ANIMATION:I = 0x1

.field public static final CALLBACK_COMMIT:I = 0x4

.field public static final CALLBACK_INPUT:I = 0x0

.field public static final CALLBACK_INSETS_ANIMATION:I = 0x2

.field private static final CALLBACK_LAST:I = 0x4

.field private static final CALLBACK_TRACE_TITLES:[Ljava/lang/String;

.field public static final CALLBACK_TRAVERSAL:I = 0x3

.field private static final DEBUG_FRAMES:Z = false

.field private static final DEBUG_JANK:Z = false

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field private static final FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static final MOTION_EVENT_ACTION_CANCEL:I = 0x3

.field private static final MOTION_EVENT_ACTION_DOWN:I = 0x0

.field private static final MOTION_EVENT_ACTION_MOVE:I = 0x2

.field private static final MOTION_EVENT_ACTION_UP:I = 0x1

.field private static final MSG_CACHE_BUFFER_DO_FRAME:I = 0x64

.field private static final MSG_DO_FRAME:I = 0x0

.field private static final MSG_DO_SCHEDULE_CALLBACK:I = 0x2

.field private static final MSG_DO_SCHEDULE_VSYNC:I = 0x1

.field private static final OPTS_INPUT:Z = false

.field private static final SKIPPED_FRAME_WARNING_LIMIT:I

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static final USE_FRAME_TIME:Z

.field private static final USE_VSYNC:Z

.field private static final VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

.field private static volatile mMainInstance:Landroid/view/Choreographer;

.field private static volatile sFrameDelay:J

.field private static final sSfThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadInstance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/Choreographer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

.field private final mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

.field private mCallbacksRunning:Z

.field private mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

.field private mConsumedDown:Z

.field private mConsumedMove:Z

.field private mDebugPrintNextFrameTimeDelta:Z

.field private final mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

.field private mFPSDivisor:I

.field private mFirstVSync:Z

.field mFrameInfo:Landroid/graphics/FrameInfo;

.field private mFrameIntervalNanos:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mFrameScheduled:Z

.field private final mHandler:Landroid/view/Choreographer$FrameHandler;

.field private mIsDoFrameProcessing:Z

.field private mIsVsyncScheduled:Z

.field private mLastFrameIntervalNanos:J

.field private mLastFrameTimeNanos:J

.field private mLastTouchOptTimeNanos:J

.field private mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

.field private final mLock:Ljava/lang/Object;

.field private final mLooper:Landroid/os/Looper;

.field private mMotionEventType:I

.field private mTouchMoveNum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFirstVSync(Landroid/view/Choreographer;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/Choreographer;->mFirstVSync:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Landroid/view/Choreographer;)Landroid/view/Choreographer$FrameHandler;
    .registers 1

    iget-object p0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFirstVSync(Landroid/view/Choreographer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/Choreographer;->mFirstVSync:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrameScheduled(Landroid/view/Choreographer;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/Choreographer;->obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetFRAME_CALLBACK_TOKEN()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetVSYNC_CALLBACK_TOKEN()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmMainInstance(Landroid/view/Choreographer;)V
    .registers 1

    sput-object p0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const-wide/16 v0, 0xa

    sput-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    new-instance v0, Landroid/view/Choreographer$1;

    invoke-direct {v0}, Landroid/view/Choreographer$1;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/Choreographer$2;

    invoke-direct {v0}, Landroid/view/Choreographer$2;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    const-string v0, "debug.choreographer.vsync"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_VSYNC:Z

    const-string v0, "debug.choreographer.frametime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    const-string v0, "debug.choreographer.skipwarning"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I

    new-instance v0, Landroid/view/Choreographer$3;

    invoke-direct {v0}, Landroid/view/Choreographer$3;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    new-instance v0, Landroid/view/Choreographer$4;

    invoke-direct {v0}, Landroid/view/Choreographer$4;-><init>()V

    sput-object v0, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-string/jumbo v0, "input"

    const-string v1, "animation"

    const-string/jumbo v2, "insets_animation"

    const-string/jumbo v3, "traversal"

    const-string v4, "commit"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    new-instance v1, Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-direct {v1}, Landroid/view/DisplayEventReceiver$VsyncEventData;-><init>()V

    iput-object v1, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    iput v1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedMove:Z

    iput-boolean v1, p0, Landroid/view/Choreographer;->mConsumedDown:Z

    iput-boolean v1, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/Choreographer;->mLastTouchOptTimeNanos:J

    iput-boolean v1, p0, Landroid/view/Choreographer;->mIsDoFrameProcessing:Z

    new-instance v2, Landroid/graphics/FrameInfo;

    invoke-direct {v2}, Landroid/graphics/FrameInfo;-><init>()V

    iput-object v2, p0, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    iput-boolean v1, p0, Landroid/view/Choreographer;->mFirstVSync:Z

    invoke-static {}, Landroid/os/perfdebug/ChoreographerMonitor;->newChoreographerMonitor()Landroid/os/perfdebug/ChoreographerMonitor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    iput-object p1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    new-instance v1, Landroid/view/Choreographer$FrameHandler;

    invoke-direct {v1, p0, p1}, Landroid/view/Choreographer$FrameHandler;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_49

    new-instance v1, Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-direct {v1, p0, p1, p2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;-><init>(Landroid/view/Choreographer;Landroid/os/Looper;I)V

    goto :goto_4a

    :cond_49
    move-object v1, v2

    :goto_4a
    iput-object v1, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const v1, 0x4e6e6b28  # 1.0E9f

    invoke-static {}, Landroid/view/Choreographer;->getRefreshRate()F

    move-result v3

    div-float/2addr v1, v3

    float-to-long v3, v1

    iput-wide v3, p0, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    invoke-static {v3, v4}, Landroid/util/BoostFramework$ScrollOptimizer;->setFrameInterval(J)V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/view/Choreographer$CallbackQueue;

    iput-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    const/4 v1, 0x0

    :goto_64
    const/4 v3, 0x4

    if-gt v1, v3, :cond_73

    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    new-instance v4, Landroid/view/Choreographer$CallbackQueue;

    invoke-direct {v4, p0, v2}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue-IA;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    :cond_73
    const-string v1, "debug.hwui.fps_divisor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->setFPSDivisor(I)V

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_91

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/TurboSchedMonitor;->addTid(I)V

    :cond_91
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;ILandroid/view/Choreographer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/Choreographer;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method private dispose()V
    .registers 2

    iget-object v0, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->dispose()V

    return-void
.end method

.method public static getFrameDelay()J
    .registers 2

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    return-wide v0
.end method

.method public static getInstance()Landroid/view/Choreographer;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method public static getMainThreadInstance()Landroid/view/Choreographer;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    return-object v0
.end method

.method private static getRefreshRate()F
    .registers 2

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method public static getSfInstance()Landroid/view/Choreographer;
    .registers 1

    sget-object v0, Landroid/view/Choreographer;->sSfThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    return-object v0
.end method

.method private isRunningOnLooperThreadLocked()Z
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Choreographer;->mLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private obtainCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;
    .registers 8

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    new-instance v2, Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v2, v1}, Landroid/view/Choreographer$CallbackRecord;-><init>(Landroid/view/Choreographer$CallbackRecord-IA;)V

    move-object v0, v2

    goto :goto_12

    :cond_c
    iget-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    :goto_12
    iput-wide p1, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    iput-object p3, v0, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object p4, v0, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    return-object v0
.end method

.method private postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V
    .registers 13

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long v3, v1, p4

    iget-object v5, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v5, v5, p1

    invoke-virtual {v5, v3, v4, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroid/view/animation/ChoreographerInjectorStub;->getInstance()Landroid/view/animation/ChoreographerInjectorStub;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/view/animation/ChoreographerInjectorStub;->disableAnimation(I)Z

    move-result v5

    if-eqz v5, :cond_20

    sget-object v5, Landroid/view/Choreographer;->mMainInstance:Landroid/view/Choreographer;

    if-ne v5, p0, :cond_20

    monitor-exit v0

    return-void

    :cond_20
    cmp-long v5, v3, v1

    if-gtz v5, :cond_28

    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    goto :goto_3a

    :cond_28
    iget-object v5, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, p2}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iput p1, v5, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v6, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v6, v5, v3, v4}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    iget-object v0, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    iput-object v0, p1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object p1, p0, Landroid/view/Choreographer;->mCallbackPool:Landroid/view/Choreographer$CallbackRecord;

    return-void
.end method

.method public static releaseInstance()V
    .registers 2

    sget-object v0, Landroid/view/Choreographer;->sThreadInstance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Choreographer;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    invoke-direct {v1}, Landroid/view/Choreographer;->dispose()V

    return-void
.end method

.method private removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p2, :cond_14

    if-nez p3, :cond_14

    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Landroid/view/Choreographer$FrameHandler;->removeMessages(ILjava/lang/Object;)V

    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method private scheduleFrameLocked(J)V
    .registers 8

    iget-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v0, :cond_4e

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    sget-boolean v1, Landroid/view/Choreographer;->USE_VSYNC:Z

    invoke-static {v1}, Landroid/util/BoostFramework$ScrollOptimizer;->shouldUseVsync(Z)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-direct {p0}, Landroid/view/Choreographer;->isRunningOnLooperThreadLocked()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    goto :goto_4e

    :cond_19
    iget-object v1, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_4e

    :cond_28
    sget-wide v1, Landroid/view/Choreographer;->sFrameDelay:J

    iget-wide v3, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    invoke-static {v1, v2, v3, v4}, Landroid/util/BoostFramework$ScrollOptimizer;->getFrameDelay(JJ)J

    move-result-wide v1

    sput-wide v1, Landroid/view/Choreographer;->sFrameDelay:J

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    sget-wide v3, Landroid/view/Choreographer;->sFrameDelay:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_4e
    :goto_4e
    return-void
.end method

.method private scheduleVsyncLocked()V
    .registers 4

    const-wide/16 v0, 0x8

    :try_start_2
    const-string v2, "Choreographer#scheduleVsyncLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Landroid/view/Choreographer;->mDisplayEventReceiver:Landroid/view/Choreographer$FrameDisplayEventReceiver;

    invoke-virtual {v2}, Landroid/view/Choreographer$FrameDisplayEventReceiver;->scheduleVsync()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/Choreographer;->mIsVsyncScheduled:Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_14

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public static setFrameDelay(J)V
    .registers 2

    sput-wide p0, Landroid/view/Choreographer;->sFrameDelay:J

    return-void
.end method

.method public static subtractFrameDelay(J)J
    .registers 6

    sget-wide v0, Landroid/view/Choreographer;->sFrameDelay:J

    cmp-long v2, p0, v0

    if-gtz v2, :cond_9

    const-wide/16 v2, 0x0

    goto :goto_b

    :cond_9
    sub-long v2, p0, v0

    :goto_b
    return-wide v2
.end method

.method private traceMessage(Ljava/lang/String;)V
    .registers 4

    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method doCallbacks(ILandroid/view/Choreographer$FrameData;J)V
    .registers 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p2 .. p2}, Landroid/view/Choreographer$FrameData;->-$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J

    move-result-wide v4

    iget-object v6, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-object v0, v1, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v0, v0, v2

    const-wide/32 v9, 0xf4240

    div-long v9, v7, v9

    invoke-virtual {v0, v9, v10}, Landroid/view/Choreographer$CallbackQueue;->extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    move-object v9, v0

    if-nez v9, :cond_23

    monitor-exit v6

    return-void

    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    const/4 v10, 0x4

    const-wide/16 v11, 0x8

    if-ne v2, v10, :cond_47

    sub-long v13, v7, v4

    const-string/jumbo v10, "jitterNanos"

    long-to-int v15, v13

    invoke-static {v11, v12, v10, v15}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-wide/16 v15, 0x2

    mul-long v15, v15, p3

    cmp-long v10, v13, v15

    if-ltz v10, :cond_47

    rem-long v15, v13, p3

    add-long v15, v15, p3

    sub-long v4, v7, v15

    iput-wide v4, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    invoke-virtual {v3, v4, v5}, Landroid/view/Choreographer$FrameData;->updateFrameData(J)V

    :cond_47
    monitor-exit v6
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_a8

    const/4 v6, 0x0

    :try_start_49
    sget-object v7, Landroid/view/Choreographer;->CALLBACK_TRACE_TITLES:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v11, v12, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    move-object v7, v9

    :goto_51
    if-eqz v7, :cond_7b

    iget-object v8, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    iget-object v10, v7, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    iget-wide v13, v7, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    invoke-virtual {v8, v2, v10, v13, v14}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorCallbackExecuteBegin(ILjava/lang/Object;J)V

    if-ne v2, v0, :cond_6f

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v8

    iget-object v10, v7, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Landroid/os/TurboSchedMonitor;->monitorAnimationCallback(Ljava/lang/String;)V

    :cond_6f
    invoke-virtual {v7, v3}, Landroid/view/Choreographer$CallbackRecord;->run(Landroid/view/Choreographer$FrameData;)V

    iget-object v8, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v8}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorCallbackExecuteEnd()V

    iget-object v8, v7, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;
    :try_end_79
    .catchall {:try_start_49 .. :try_end_79} :catchall_91

    move-object v7, v8

    goto :goto_51

    :cond_7b
    iget-object v7, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_7e
    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :cond_80
    iget-object v0, v9, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v1, v9}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    move-object v9, v0

    if-nez v9, :cond_80

    monitor-exit v7
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_8e

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v7
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0

    :catchall_91
    move-exception v0

    iget-object v7, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_95
    iput-boolean v6, v1, Landroid/view/Choreographer;->mCallbacksRunning:Z

    :goto_97
    iget-object v6, v9, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    invoke-direct {v1, v9}, Landroid/view/Choreographer;->recycleCallbackLocked(Landroid/view/Choreographer$CallbackRecord;)V

    move-object v9, v6

    if-eqz v9, :cond_a0

    goto :goto_97

    :cond_a0
    monitor-exit v7
    :try_end_a1
    .catchall {:try_start_95 .. :try_end_a1} :catchall_a5

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v7
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0

    :catchall_a8
    move-exception v0

    :try_start_a9
    monitor-exit v6
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw v0
.end method

.method doFrame(JILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 44

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-object/from16 v15, p4

    iget-wide v13, v15, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    const/4 v0, 0x1

    const-wide/16 v11, 0x8

    :try_start_b
    iput-boolean v0, v1, Landroid/view/Choreographer;->mIsDoFrameProcessing:Z

    invoke-static {v11, v12}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_29d

    if-eqz v2, :cond_39

    :try_start_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Choreographer#doFrame "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v3

    iget-wide v3, v3, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_30

    goto :goto_39

    :catchall_30
    move-exception v0

    move/from16 v4, p3

    move-wide/from16 v22, v11

    move-wide v7, v13

    move-object v2, v15

    goto/16 :goto_2a4

    :cond_39
    :goto_39
    :try_start_39
    new-instance v2, Landroid/view/Choreographer$FrameData;

    invoke-direct {v2, v5, v6, v15}, Landroid/view/Choreographer$FrameData;-><init>(JLandroid/view/DisplayEventReceiver$VsyncEventData;)V

    move-object v9, v2

    iget-object v10, v1, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_29d

    const/4 v7, 0x0

    :try_start_43
    iput-boolean v7, v1, Landroid/view/Choreographer;->mIsVsyncScheduled:Z

    iget-boolean v2, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_28d

    if-nez v2, :cond_74

    :try_start_49
    const-string v0, "Frame not scheduled"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    monitor-exit v10
    :try_end_4f
    .catchall {:try_start_49 .. :try_end_4f} :catchall_68

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-ne v0, v1, :cond_67

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    :cond_67
    return-void

    :catchall_68
    move-exception v0

    move/from16 v4, p3

    move-object v3, v9

    move-object/from16 v24, v10

    move-wide/from16 v22, v11

    move-wide v7, v13

    move-object v2, v15

    goto/16 :goto_297

    :cond_74
    move-wide/from16 v3, p1

    :try_start_76
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_28d

    sub-long v18, v16, v5

    cmp-long v2, v18, v13

    const-wide/16 v20, 0x0

    if-ltz v2, :cond_df

    const-wide/16 v22, 0x0

    cmp-long v2, v13, v20

    if-nez v2, :cond_90

    :try_start_88
    const-string v2, "Choreographer"

    const-string v8, "Vsync data empty due to timeout"

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cc

    :cond_90
    rem-long v24, v18, v13

    move-wide/from16 v22, v24

    div-long v24, v18, v13

    move-wide/from16 v26, v24

    sget v2, Landroid/view/Choreographer;->SKIPPED_FRAME_WARNING_LIMIT:I
    :try_end_9a
    .catchall {:try_start_88 .. :try_end_9a} :catchall_68

    int-to-long v7, v2

    move-wide/from16 v11, v26

    cmp-long v2, v11, v7

    if-ltz v2, :cond_cc

    :try_start_a1
    const-string v2, "Choreographer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_a1 .. :try_end_bf} :catchall_c0

    goto :goto_cc

    :catchall_c0
    move-exception v0

    move/from16 v4, p3

    move-object v3, v9

    move-object/from16 v24, v10

    move-wide v7, v13

    move-object v2, v15

    const-wide/16 v22, 0x8

    goto/16 :goto_297

    :cond_cc
    :goto_cc
    sub-long v5, v16, v22

    :try_start_ce
    invoke-virtual {v9, v5, v6}, Landroid/view/Choreographer$FrameData;->updateFrameData(J)V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_d3

    move-wide v11, v5

    goto :goto_e0

    :catchall_d3
    move-exception v0

    move/from16 v4, p3

    move-object v3, v9

    move-object/from16 v24, v10

    move-wide v7, v13

    move-object v2, v15

    const-wide/16 v22, 0x8

    goto/16 :goto_297

    :cond_df
    move-wide v11, v5

    :goto_e0
    :try_start_e0
    iget-wide v5, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_281

    cmp-long v2, v11, v5

    if-gez v2, :cond_117

    :try_start_e6
    const-string v0, "Frame time goes backward"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    monitor-exit v10
    :try_end_ef
    .catchall {:try_start_e6 .. :try_end_ef} :catchall_10a

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-ne v0, v1, :cond_109

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    :cond_109
    return-void

    :catchall_10a
    move-exception v0

    move/from16 v4, p3

    move-object v3, v9

    move-object/from16 v24, v10

    move-wide v5, v11

    move-wide v7, v13

    move-object v2, v15

    const-wide/16 v22, 0x8

    goto/16 :goto_297

    :cond_117
    :try_start_117
    iget v2, v1, Landroid/view/Choreographer;->mFPSDivisor:I
    :try_end_119
    .catchall {:try_start_117 .. :try_end_119} :catchall_281

    if-le v2, v0, :cond_14e

    sub-long v5, v11, v5

    int-to-long v7, v2

    mul-long/2addr v7, v13

    cmp-long v2, v5, v7

    if-gez v2, :cond_14b

    cmp-long v2, v5, v20

    if-lez v2, :cond_14b

    :try_start_127
    const-string v0, "Frame skipped due to FPSDivisor"

    invoke-direct {v1, v0}, Landroid/view/Choreographer;->traceMessage(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    monitor-exit v10
    :try_end_130
    .catchall {:try_start_127 .. :try_end_130} :catchall_10a

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v0, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v0}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-ne v0, v1, :cond_14a

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    :cond_14a
    return-void

    :cond_14b
    const-wide/16 v22, 0x8

    goto :goto_150

    :cond_14e
    const-wide/16 v22, 0x8

    :goto_150
    :try_start_150
    iget-object v2, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v5

    iget-wide v7, v5, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v5

    iget-wide v5, v5, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J
    :try_end_15e
    .catchall {:try_start_150 .. :try_end_15e} :catchall_277

    :try_start_15e
    iget-wide v0, v15, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J
    :try_end_160
    .catchall {:try_start_15e .. :try_end_160} :catchall_273

    move-wide/from16 v26, v5

    move-wide v5, v11

    const/4 v15, 0x0

    move-object/from16 v34, v9

    move-object/from16 v24, v10

    move-wide/from16 v9, v26

    move-wide/from16 v35, v11

    move-wide/from16 v11, v16

    move-wide/from16 v37, v13

    move-wide v13, v0

    :try_start_171
    invoke-virtual/range {v2 .. v14}, Landroid/graphics/FrameInfo;->setVsync(JJJJJJ)V
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_265

    move-object/from16 v1, p0

    :try_start_176
    iput-boolean v15, v1, Landroid/view/Choreographer;->mFrameScheduled:Z
    :try_end_178
    .catchall {:try_start_176 .. :try_end_178} :catchall_263

    move-wide/from16 v5, v35

    :try_start_17a
    iput-wide v5, v1, Landroid/view/Choreographer;->mLastFrameTimeNanos:J
    :try_end_17c
    .catchall {:try_start_17a .. :try_end_17c} :catchall_259

    move-wide/from16 v7, v37

    :try_start_17e
    iput-wide v7, v1, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J
    :try_end_180
    .catchall {:try_start_17e .. :try_end_180} :catchall_251

    move-object/from16 v2, p4

    move v0, v15

    :try_start_183
    iput-object v2, v1, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    monitor-exit v24
    :try_end_186
    .catchall {:try_start_183 .. :try_end_186} :catchall_24d

    cmp-long v3, v7, v20

    const-wide/32 v9, 0xf4240

    if-lez v3, :cond_19e

    :try_start_18d
    iget-wide v3, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    sub-long v13, v7, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-lez v3, :cond_19e

    iput-wide v7, v1, Landroid/view/Choreographer;->mFrameIntervalNanos:J

    invoke-static {v7, v8}, Landroid/util/BoostFramework$ScrollOptimizer;->setFrameInterval(J)V

    :cond_19e
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/util/BoostFramework$ScrollOptimizer;->setUITaskStatus(Z)V

    div-long v11, v5, v9

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->lockAnimationClock(J)V

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v3

    if-ne v3, v1, :cond_1be

    invoke-static {}, Landroid/os/perfdebug/VsyncFrame;->get()Landroid/os/perfdebug/VsyncFrame;

    move-result-object v3
    :try_end_1b1
    .catchall {:try_start_18d .. :try_end_1b1} :catchall_248

    move/from16 v4, p3

    :try_start_1b3
    invoke-virtual {v3, v4}, Landroid/os/perfdebug/VsyncFrame;->updateCurFrame(I)V

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/TurboSchedMonitor;->getAppToken()V

    goto :goto_1c0

    :cond_1be
    move/from16 v4, p3

    :goto_1c0
    iget-object v3, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v3}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameBegin()V

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v3

    if-eqz v3, :cond_1ef

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v3

    if-ne v3, v1, :cond_1ef

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v3

    invoke-interface {v3, v7, v8}, Landroid/os/TurboSchedMonitor;->monitorFrameDelay(J)V

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v28

    invoke-virtual/range {p4 .. p4}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v3

    iget-wide v9, v3, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    move/from16 v29, p3

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    invoke-interface/range {v28 .. v33}, Landroid/os/TurboSchedMonitor;->recordFrameStart(IJJ)V

    :cond_1ef
    iget-object v3, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v3}, Landroid/graphics/FrameInfo;->markInputHandlingStart()V

    move-object/from16 v3, v34

    invoke-virtual {v1, v0, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    iget-object v9, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v9}, Landroid/graphics/FrameInfo;->markAnimationsStart()V

    const/4 v9, 0x1

    invoke-virtual {v1, v9, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    const/4 v9, 0x2

    invoke-virtual {v1, v9, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    iget-object v9, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/graphics/FrameInfo;

    invoke-virtual {v9}, Landroid/graphics/FrameInfo;->markPerformTraversalsStart()V

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v3, v7, v8}, Landroid/view/Choreographer;->doCallbacks(ILandroid/view/Choreographer$FrameData;J)V

    invoke-static {v0}, Landroid/util/BoostFramework$ScrollOptimizer;->setUITaskStatus(Z)V
    :try_end_216
    .catchall {:try_start_1b3 .. :try_end_216} :catchall_299

    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v3, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v3}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v3

    if-ne v3, v1, :cond_22e

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    :cond_22e
    iput-boolean v0, v1, Landroid/view/Choreographer;->mIsDoFrameProcessing:Z

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->isCoreAppOptimizerEnabled()Z

    move-result v0

    if-eqz v0, :cond_247

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    if-ne v0, v1, :cond_247

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/TurboSchedMonitor;->setDrawFrameFinished()V

    :cond_247
    return-void

    :catchall_248
    move-exception v0

    move/from16 v4, p3

    goto/16 :goto_2a4

    :catchall_24d
    move-exception v0

    move/from16 v4, p3

    goto :goto_256

    :catchall_251
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v2, p4

    :goto_256
    move-object/from16 v3, v34

    goto :goto_297

    :catchall_259
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v34

    move-wide/from16 v7, v37

    goto :goto_297

    :catchall_263
    move-exception v0

    goto :goto_268

    :catchall_265
    move-exception v0

    move-object/from16 v1, p0

    :goto_268
    move/from16 v4, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v34

    move-wide/from16 v5, v35

    move-wide/from16 v7, v37

    goto :goto_297

    :catchall_273
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_278

    :catchall_277
    move-exception v0

    :goto_278
    move/from16 v4, p3

    move-object v3, v9

    move-object/from16 v24, v10

    move-wide v5, v11

    move-wide v7, v13

    move-object v2, v15

    goto :goto_28c

    :catchall_281
    move-exception v0

    move/from16 v4, p3

    move-object v3, v9

    move-object/from16 v24, v10

    move-wide v5, v11

    move-wide v7, v13

    move-object v2, v15

    const-wide/16 v22, 0x8

    :goto_28c
    goto :goto_297

    :catchall_28d
    move-exception v0

    move/from16 v4, p3

    move-object v3, v9

    move-object/from16 v24, v10

    move-wide/from16 v22, v11

    move-wide v7, v13

    move-object v2, v15

    :goto_297
    :try_start_297
    monitor-exit v24
    :try_end_298
    .catchall {:try_start_297 .. :try_end_298} :catchall_29b

    :try_start_298
    throw v0
    :try_end_299
    .catchall {:try_start_298 .. :try_end_299} :catchall_299

    :catchall_299
    move-exception v0

    goto :goto_2a4

    :catchall_29b
    move-exception v0

    goto :goto_297

    :catchall_29d
    move-exception v0

    move/from16 v4, p3

    move-wide/from16 v22, v11

    move-wide v7, v13

    move-object v2, v15

    :goto_2a4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->unlockAnimationClock()V

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v3, v1, Landroid/view/Choreographer;->mChoreographerMonitor:Landroid/os/perfdebug/ChoreographerMonitor;

    invoke-virtual {v3}, Landroid/os/perfdebug/ChoreographerMonitor;->monitorDoFrameEnd()V

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v3

    if-ne v3, v1, :cond_2bc

    invoke-static {}, Landroid/os/TurboSchedMonitor;->getInstance()Landroid/os/TurboSchedMonitor;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/TurboSchedMonitor;->releaseAppToken()V

    :cond_2bc
    throw v0
.end method

.method doScheduleCallback(I)V
    .registers 6

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v1, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/view/Choreographer$CallbackQueue;->hasDueCallbacksLocked(J)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {p0, v1, v2}, Landroid/view/Choreographer;->scheduleFrameLocked(J)V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method doScheduleVsync()V
    .registers 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Landroid/view/Choreographer;->scheduleVsyncLocked()V

    :cond_a
    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Choreographer:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrameScheduled="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFrameTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getFrameDeadline()J
    .registers 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-wide v0
.end method

.method public getFrameIntervalNanos()J
    .registers 4

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameIntervalNanos:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getFrameTime()J
    .registers 5

    invoke-virtual {p0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrameTimeNanos()J
    .registers 4

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/Choreographer;->mCallbacksRunning:Z

    if-eqz v1, :cond_14

    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_e

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_12

    :cond_e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_12
    monitor-exit v0

    return-wide v1

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This method must only be called as part of a callback while a frame is in progress."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getLastFrameTimeNanos()J
    .registers 4

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroid/view/Choreographer;->USE_FRAME_TIME:Z

    if-eqz v1, :cond_a

    iget-wide v1, p0, Landroid/view/Choreographer;->mLastFrameTimeNanos:J

    goto :goto_e

    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    :goto_e
    monitor-exit v0

    return-wide v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getVsyncId()J
    .registers 3

    iget-object v0, p0, Landroid/view/Choreographer;->mLastVsyncEventData:Landroid/view/DisplayEventReceiver$VsyncEventData;

    invoke-virtual {v0}, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    return-wide v0
.end method

.method public postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 10

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

.method public postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V
    .registers 8

    if-eqz p2, :cond_13

    if-ltz p1, :cond_b

    const/4 v0, 0x4

    if-gt p1, v0, :cond_b

    invoke-direct/range {p0 .. p5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postCallbackWithoutVSync(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 11

    if-eqz p2, :cond_3c

    if-ltz p1, :cond_34

    const/4 v0, 0x4

    if-gt p1, v0, :cond_34

    iget-object v0, p0, Landroid/view/Choreographer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/view/Choreographer;->mCallbackQueues:[Landroid/view/Choreographer$CallbackQueue;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1, v2, p2, p3}, Landroid/view/Choreographer$CallbackQueue;->addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/Choreographer;->mFirstVSync:Z

    iget-boolean v4, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    if-nez v4, :cond_2f

    iput-boolean v3, p0, Landroid/view/Choreographer;->mFrameScheduled:Z

    iget-object v4, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Choreographer$FrameHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/view/Choreographer;->mHandler:Landroid/view/Choreographer$FrameHandler;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/Choreographer$FrameHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_31

    throw v1

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "action must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    return-void
.end method

.method public postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V
    .registers 10

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .registers 8

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    sget-object v3, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayedInternal(ILjava/lang/Object;Ljava/lang/Object;J)V

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V
    .registers 6

    if-ltz p1, :cond_9

    const/4 v0, 0x4

    if-gt p1, v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callbackType is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->FRAME_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeVsyncCallback(Landroid/view/Choreographer$VsyncCallback;)V
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    sget-object v1, Landroid/view/Choreographer;->VSYNC_CALLBACK_TOKEN:Ljava/lang/Object;

    invoke-direct {p0, v0, p1, v1}, Landroid/view/Choreographer;->removeCallbacksInternal(ILjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setFPSDivisor(I)V
    .registers 2

    if-gtz p1, :cond_3

    const/4 p1, 0x1

    :cond_3
    iput p1, p0, Landroid/view/Choreographer;->mFPSDivisor:I

    invoke-static {p1}, Landroid/view/ThreadedRenderer;->setFPSDivisor(I)V

    return-void
.end method

.method public setMotionEventInfo(II)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput p2, p0, Landroid/view/Choreographer;->mTouchMoveNum:I

    iput p1, p0, Landroid/view/Choreographer;->mMotionEventType:I

    invoke-static {p1}, Landroid/util/BoostFramework$ScrollOptimizer;->setMotionType(I)V

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method
