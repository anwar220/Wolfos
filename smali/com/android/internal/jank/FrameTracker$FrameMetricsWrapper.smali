# classes4.dex

.class public Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameMetricsWrapper"
.end annotation


# instance fields
.field private final mFrameMetrics:Landroid/view/FrameMetrics;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/FrameMetrics;

    invoke-direct {v0}, Landroid/view/FrameMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->mFrameMetrics:Landroid/view/FrameMetrics;

    return-void
.end method


# virtual methods
.method public getMetric(I)J
    .registers 4

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->mFrameMetrics:Landroid/view/FrameMetrics;

    invoke-virtual {v0, p1}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTiming()[J
    .registers 2

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->mFrameMetrics:Landroid/view/FrameMetrics;

    iget-object v0, v0, Landroid/view/FrameMetrics;->mTimingData:[J

    return-object v0
.end method
