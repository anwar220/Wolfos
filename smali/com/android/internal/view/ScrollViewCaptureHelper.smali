# classes4.dex

.class public Lcom/android/internal/view/ScrollViewCaptureHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/view/ScrollCaptureViewHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/view/ScrollCaptureViewHelper<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverScrollMode:I

.field private mScrollBarEnabled:Z

.field private mStartScrollY:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAcceptSession(Landroid/view/View;)Z
    .registers 2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onAcceptSession(Landroid/view/ViewGroup;)Z

    move-result p1

    return p1
.end method

.method public onAcceptSession(Landroid/view/ViewGroup;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method public bridge synthetic onPrepareForEnd(Landroid/view/View;)V
    .registers 2

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onPrepareForEnd(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onPrepareForEnd(Landroid/view/ViewGroup;)V
    .registers 4

    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_16
    return-void
.end method

.method public bridge synthetic onPrepareForStart(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onPrepareForStart(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mOverScrollMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mScrollBarEnabled:Z

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    :cond_1e
    return-void
.end method

.method public bridge synthetic onScrollRequested(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 12

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/ScrollViewCaptureHelper;->onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScrollRequested(Landroid/view/ViewGroup;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    iget v6, v0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr v5, v6

    new-instance v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;

    invoke-direct {v6}, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;-><init>()V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->requestedArea:Landroid/graphics/Rect;

    iput v5, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_31

    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_31
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    neg-int v10, v5

    invoke-virtual {v9, v7, v10}, Landroid/graphics/Rect;->offset(II)V

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->offset(II)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    if-lez v12, :cond_7c

    neg-int v13, v12

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v11, v7, v13}, Landroid/graphics/Rect;->inset(II)V

    :cond_7c
    const/4 v13, 0x1

    invoke-virtual {v8, v11, v13}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v13

    iget v14, v0, Lcom/android/internal/view/ScrollViewCaptureHelper;->mStartScrollY:I

    sub-int/2addr v13, v14

    iput v13, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->scrollDelta:I

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v8, v14, v5}, Landroid/view/ViewGroup;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v15

    if-nez v15, :cond_a2

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v14, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_a2
    iget v15, v5, Landroid/graphics/Point;->x:I

    neg-int v15, v15

    iget v7, v5, Landroid/graphics/Point;->y:I

    neg-int v7, v7

    invoke-virtual {v14, v15, v7}, Landroid/graphics/Rect;->offset(II)V

    nop

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v15

    sub-int/2addr v7, v15

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v7, v15}, Landroid/graphics/Rect;->offset(II)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    iget v15, v2, Landroid/graphics/Rect;->top:I

    neg-int v15, v15

    invoke-virtual {v14, v7, v15}, Landroid/graphics/Rect;->offset(II)V

    const/4 v7, 0x0

    invoke-virtual {v14, v7, v13}, Landroid/graphics/Rect;->offset(II)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v7, v6, Lcom/android/internal/view/ScrollCaptureViewHelper$ScrollResult;->availableArea:Landroid/graphics/Rect;

    invoke-interface {v4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
