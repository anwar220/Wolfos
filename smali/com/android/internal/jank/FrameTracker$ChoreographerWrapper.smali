# classes4.dex

.class public Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/FrameTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoreographerWrapper"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmChoreographer(Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/Choreographer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method


# virtual methods
.method public getVsyncId()J
    .registers 3

    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getVsyncId()J

    move-result-wide v0

    return-wide v0
.end method
