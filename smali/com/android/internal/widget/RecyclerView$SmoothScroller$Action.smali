# classes4.dex

.class public Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput p3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private validate()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_a

    goto :goto_12

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_12
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_17

    return-void

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDuration()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return v0
.end method

.method public getDx()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return v0
.end method

.method public getDy()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method hasJumpTarget()Z
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public jumpTo(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    return-void
.end method

.method runIfNecessary(Lcom/android/internal/widget/RecyclerView;)V
    .registers 8

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_10

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_58

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->validate()V

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_37

    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2b

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_44

    :cond_2b
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_44

    :cond_37
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mViewFlinger:Lcom/android/internal/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/internal/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    :goto_44
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_55

    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    iput-boolean v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_5a

    :cond_58
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    :goto_5a
    return-void
.end method

.method public setDuration(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return-void
.end method

.method public setDx(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return-void
.end method

.method public setDy(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .registers 6

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iput p2, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iput p3, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iput-object p4, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void
.end method