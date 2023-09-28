# classes4.dex

.class Lcom/android/internal/jank/FrameTracker$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/jank/FrameTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/jank/FrameTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$surfaceDestroyed$0$com-android-internal-jank-FrameTracker$1()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmLock(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V

    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmLock(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_43

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControlWrapper(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v2}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    const-string v2, "FT#deferMonitoring"

    invoke-static {v1, v2}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$mmarkEvent(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker()V

    :cond_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public surfaceDestroyed()V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    return-void
.end method
