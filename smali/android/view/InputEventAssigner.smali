# classes3.dex

.class public Landroid/view/InputEventAssigner;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventAssigner"


# instance fields
.field private mDownEventId:I

.field private mHasUnprocessedDown:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    iput v0, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    return-void
.end method


# virtual methods
.method public notifyFrameProcessed()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    return-void
.end method

.method public processEvent(Landroid/view/InputEvent;)I
    .registers 6

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1e

    iput-boolean v2, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v3

    iput v3, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    :cond_1e
    iget-boolean v3, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    if-eqz v3, :cond_28

    const/4 v3, 0x2

    if-ne v1, v3, :cond_28

    iget v2, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    return v2

    :cond_28
    const/4 v3, 0x3

    if-eq v1, v3, :cond_2d

    if-ne v1, v2, :cond_30

    :cond_2d
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    :cond_30
    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v0

    return v0
.end method
