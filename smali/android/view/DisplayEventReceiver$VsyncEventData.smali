# classes3.dex

.class final Landroid/view/DisplayEventReceiver$VsyncEventData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "VsyncEventData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    }
.end annotation


# static fields
.field static final INVALID_FRAME_TIMELINES:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;


# instance fields
.field public final frameInterval:J

.field public final frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

.field public final preferredFrameTimelineIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    new-instance v8, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fffffffffffffffL

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;-><init>(JJJ)V

    const/4 v1, 0x0

    aput-object v8, v0, v1

    sput-object v0, Landroid/view/DisplayEventReceiver$VsyncEventData;->INVALID_FRAME_TIMELINES:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    sget-object v0, Landroid/view/DisplayEventReceiver$VsyncEventData;->INVALID_FRAME_TIMELINES:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iput-object v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    return-void
.end method

.method constructor <init>([Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iput p2, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    iput-wide p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameInterval:J

    return-void
.end method


# virtual methods
.method public preferredFrameTimeline()Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
    .registers 3

    iget-object v0, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->frameTimelines:[Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;

    iget v1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData;->preferredFrameTimelineIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
