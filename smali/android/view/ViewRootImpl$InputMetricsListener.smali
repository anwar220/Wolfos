# classes3.dex

.class final Landroid/view/ViewRootImpl$InputMetricsListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InputMetricsListener"
.end annotation


# instance fields
.field public data:[J

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    return-void
.end method


# virtual methods
.method public onFrameMetricsAvailable(I)V
    .registers 15

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    long-to-int v1, v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    const/16 v2, 0x15

    aget-wide v9, v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-gtz v2, :cond_14

    return-void

    :cond_14
    const/16 v2, 0x13

    aget-wide v11, v0, v2

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputEventReceiver(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    cmp-long v0, v11, v9

    if-ltz v0, :cond_61

    sub-long v2, v11, v9

    long-to-double v2, v2

    const-wide v4, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    mul-double/2addr v2, v4

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->data:[J

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not reporting timeline because gpuCompletedTime is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "ms ahead of presentTime. FRAME_TIMELINE_VSYNC_ID="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", INPUT_EVENT_ID="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "ViewRootImpl"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_61
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMetricsListener;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInputEventReceiver(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    move-result-object v3

    move v4, v1

    move-wide v5, v11

    move-wide v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->reportTimeline(IJJ)V

    return-void
.end method
