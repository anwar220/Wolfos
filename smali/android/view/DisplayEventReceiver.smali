# classes3.dex

.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayEventReceiver$FrameRateOverride;,
        Landroid/view/DisplayEventReceiver$VsyncEventData;
    }
.end annotation


# static fields
.field public static final EVENT_REGISTRATION_FRAME_RATE_OVERRIDE_FLAG:I = 0x2

.field public static final EVENT_REGISTRATION_MODE_CHANGED_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayEventReceiver"

.field public static final VSYNC_SOURCE_APP:I = 0x0

.field public static final VSYNC_SOURCE_SURFACE_FLINGER:I = 0x1


# instance fields
.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {v0, v1, p2, p3}, Landroid/view/DisplayEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "looper must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchFrameRateOverrides(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V

    return-void
.end method

.method private dispatchHotplug(JJZ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onHotplug(JJZ)V

    return-void
.end method

.method private dispatchModeChanged(JJI)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Landroid/view/DisplayEventReceiver;->onModeChanged(JJI)V

    return-void
.end method

.method private dispatchVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Landroid/view/DisplayEventReceiver;->onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V

    return-void
.end method

.method private dispose(Z)V
    .registers 7

    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeGetLatestVsyncEventData(J)Landroid/view/DisplayEventReceiver$VsyncEventData;
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;II)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/DisplayEventReceiver;",
            ">;",
            "Landroid/os/MessageQueue;",
            "II)J"
        }
    .end annotation
.end method

.method private static native nativeScheduleVsync(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V

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
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V
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

.method getLatestVsyncEventData()Landroid/view/DisplayEventReceiver$VsyncEventData;
    .registers 3

    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeGetLatestVsyncEventData(J)Landroid/view/DisplayEventReceiver$VsyncEventData;

    move-result-object v0

    return-object v0
.end method

.method public onFrameRateOverridesChanged(JJ[Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .registers 6

    return-void
.end method

.method public onHotplug(JJZ)V
    .registers 6

    return-void
.end method

.method public onModeChanged(JJI)V
    .registers 6

    return-void
.end method

.method public onVsync(JJILandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 7

    return-void
.end method

.method public scheduleVsync()V
    .registers 5

    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    const-string v0, "DisplayEventReceiver"

    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_10
    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(J)V

    :goto_13
    return-void
.end method
