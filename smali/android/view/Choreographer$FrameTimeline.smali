# classes3.dex

.class public Landroid/view/Choreographer$FrameTimeline;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# static fields
.field static final INVALID_FRAME_TIMELINE:Landroid/view/Choreographer$FrameTimeline;


# instance fields
.field private mDeadlineNanos:J

.field private mExpectedPresentTimeNanos:J

.field private mVsyncId:J


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v7, Landroid/view/Choreographer$FrameTimeline;

    const-wide/16 v1, -0x1

    const-wide v3, 0x7fffffffffffffffL

    const-wide v5, 0x7fffffffffffffffL

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/Choreographer$FrameTimeline;-><init>(JJJ)V

    sput-object v7, Landroid/view/Choreographer$FrameTimeline;->INVALID_FRAME_TIMELINE:Landroid/view/Choreographer$FrameTimeline;

    return-void
.end method

.method constructor <init>(JJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    iput-wide p3, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentTimeNanos:J

    iput-wide p5, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    return-void
.end method


# virtual methods
.method public getDeadlineNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mDeadlineNanos:J

    return-wide v0
.end method

.method public getExpectedPresentationTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mExpectedPresentTimeNanos:J

    return-wide v0
.end method

.method public getVsyncId()J
    .registers 3

    iget-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    return-wide v0
.end method

.method resetVsyncId()V
    .registers 3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/Choreographer$FrameTimeline;->mVsyncId:J

    return-void
.end method
