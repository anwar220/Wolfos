# classes3.dex

.class public Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayEventReceiver$VsyncEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameTimeline"
.end annotation


# instance fields
.field public final deadline:J

.field public final expectedPresentTime:J

.field public final vsyncId:J


# direct methods
.method constructor <init>(JJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->vsyncId:J

    iput-wide p3, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->expectedPresentTime:J

    iput-wide p5, p0, Landroid/view/DisplayEventReceiver$VsyncEventData$FrameTimeline;->deadline:J

    return-void
.end method
