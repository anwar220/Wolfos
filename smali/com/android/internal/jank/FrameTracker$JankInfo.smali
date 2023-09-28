# classes4.dex

.class Lcom/android/internal/jank/FrameTracker$JankInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JankInfo"
.end annotation


# instance fields
.field frameVsyncId:J

.field hwuiCallbackFired:Z

.field isFirstFrame:Z

.field jankType:I

.field surfaceControlCallbackFired:Z

.field totalDurationNanos:J


# direct methods
.method private constructor <init>(JZZIJZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iput-boolean p3, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    iput-boolean p4, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    iput-wide p6, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    iput p5, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    iput-boolean p8, p0, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    return-void
.end method

.method static createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 15

    new-instance v9, Lcom/android/internal/jank/FrameTracker$JankInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-wide v1, p0

    move-wide v6, p2

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(JZZIJZ)V

    return-object v9
.end method

.method static createFromSurfaceControlCallback(JI)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .registers 13

    new-instance v9, Lcom/android/internal/jank/FrameTracker$JankInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/jank/FrameTracker$JankInfo;-><init>(JZZIJZ)V

    return-object v9
.end method
