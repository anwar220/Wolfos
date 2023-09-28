# classes4.dex

.class Lcom/android/internal/widget/ScrollbarHelper;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeScrollExtent(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I
    .registers 8

    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p2, :cond_35

    if-nez p3, :cond_11

    goto :goto_35

    :cond_11
    if-nez p5, :cond_23

    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_23
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0
.end method

.method static computeScrollOffset(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;ZZ)I
    .registers 16

    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_71

    if-eqz p2, :cond_71

    if-nez p3, :cond_12

    goto :goto_71

    :cond_12
    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_38

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3c

    :cond_38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3c
    nop

    if-nez p5, :cond_40

    return v1

    :cond_40
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    int-to-float v6, v1

    mul-float/2addr v6, v5

    invoke-virtual {p1}, Lcom/android/internal/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    return v6

    :cond_71
    :goto_71
    return v1
.end method

.method static computeScrollRange(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/android/internal/widget/RecyclerView$LayoutManager;Z)I
    .registers 10

    invoke-virtual {p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3b

    if-eqz p2, :cond_3b

    if-nez p3, :cond_11

    goto :goto_3b

    :cond_11
    if-nez p5, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0

    :cond_18
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p4, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    return v0
.end method
