# classes3.dex

.class public Landroid/view/Choreographer$FrameData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameData"
.end annotation


# static fields
.field static final INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;


# instance fields
.field private mFrameTimeNanos:J

.field private mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

.field private mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrameTimeNanos(Landroid/view/Choreographer$FrameData;)J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    sput-object v0, Landroid/view/Choreographer$FrameData;->INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/Choreographer$FrameData;->INVALID_FRAME_TIMELINES:[Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    sget-object v0, Landroid/view/Choreographer$FrameTimeline;->INVALID_FRAME_TIMELINE:Landroid/view/Choreographer$FrameTimeline;

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    return-void
.end method

.method constructor <init>(JLandroid/view/DisplayEventReceiver$VsyncEventData;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v2, v2

    if-ge v1, v2, :cond_23

    iget-object v2, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v2, v2, v1

    new-instance v10, Landroid/view/Choreographer$FrameTimeline;

    iget-wide v4, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentTime:J

    iget-wide v8, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;-><init>(JJJ)V

    aput-object v10, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_23
    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    iput-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    iget v1, p3, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    return-void
.end method

.method private convertFrameTimelines(Landroid/view/DisplayEventReceiver$VsyncEventData;)[Landroid/view/Choreographer$FrameTimeline;
    .registers 13

    iget-object v0, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v0, v0

    new-array v0, v0, [Landroid/view/Choreographer$FrameTimeline;

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    array-length v2, v2

    if-ge v1, v2, :cond_20

    iget-object v2, p1, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    aget-object v2, v2, v1

    new-instance v10, Landroid/view/Choreographer$FrameTimeline;

    iget-wide v4, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iget-wide v6, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentTime:J

    iget-wide v8, v2, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/view/Choreographer$FrameTimeline;-><init>(JJJ)V

    aput-object v10, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    return-object v0
.end method


# virtual methods
.method public getFrameTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    return-wide v0
.end method

.method public getFrameTimelines()[Landroid/view/Choreographer$FrameTimeline;
    .registers 2

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method public getPreferredFrameTimeline()Landroid/view/Choreographer$FrameTimeline;
    .registers 2

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mPreferredFrameTimeline:Landroid/view/Choreographer$FrameTimeline;

    return-object v0
.end method

.method updateFrameData(J)V
    .registers 7

    iput-wide p1, p0, Landroid/view/Choreographer$FrameData;->mFrameTimeNanos:J

    iget-object v0, p0, Landroid/view/Choreographer$FrameData;->mFrameTimelines:[Landroid/view/Choreographer$FrameTimeline;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/Choreographer$FrameTimeline;->resetVsyncId()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method
