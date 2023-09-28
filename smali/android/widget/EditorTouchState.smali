# classes4.dex

.class public Landroid/widget/EditorTouchState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditorTouchState$MultiTapStatus;
    }
.end annotation


# instance fields
.field private mInitialDragDirectionXYRatio:F

.field private mIsOnHandle:Z

.field private mLastDownMillis:J

.field private mLastDownX:F

.field private mLastDownY:F

.field private mLastUpMillis:J

.field private mLastUpX:F

.field private mLastUpY:F

.field private mMovedEnoughForDrag:Z

.field private mMultiTapInSameArea:Z

.field private mMultiTapStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    return-void
.end method

.method public static getXYRatio(I)F
    .registers 3

    if-gtz p0, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    const/16 v0, 0x5a

    if-lt p0, v0, :cond_c

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    return v0

    :cond_c
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static isDistanceWithin(FFFFI)Z
    .registers 9

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    mul-int v3, p4, p4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    const/4 v3, 0x0

    :goto_13
    return v3
.end method


# virtual methods
.method public getInitialDragDirectionXYRatio()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    return v0
.end method

.method public getLastDownX()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    return v0
.end method

.method public getLastDownY()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    return v0
.end method

.method public getLastUpX()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    return v0
.end method

.method public getLastUpY()F
    .registers 2

    iget v0, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    return v0
.end method

.method public isDoubleTap()Z
    .registers 3

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isMovedEnoughForDrag()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    return v0
.end method

.method public isMultiTap()Z
    .registers 3

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public isMultiTapInSameArea()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/EditorTouchState;->isMultiTap()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOnHandle()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return v0
.end method

.method public isTripleClick()Z
    .registers 3

    iget v0, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public setIsOnHandle(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/EditorTouchState;->mIsOnHandle:Z

    return-void
.end method

.method public update(Landroid/view/MotionEvent;Landroid/view/ViewConfiguration;)V
    .registers 16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_6e

    const/16 v6, 0x2002

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    sub-long/2addr v7, v9

    iget-wide v11, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    sub-long/2addr v9, v11

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v7, v11

    if-gtz v11, :cond_53

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v11

    int-to-long v11, v11

    cmp-long v11, v9, v11

    if-gtz v11, :cond_53

    iget v11, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    if-eq v11, v4, :cond_35

    if-ne v11, v2, :cond_53

    if-eqz v6, :cond_53

    :cond_35
    if-ne v11, v4, :cond_3a

    iput v2, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    goto :goto_3c

    :cond_3a
    iput v1, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    :goto_3c
    iget v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    iget v2, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v12

    invoke-static {v1, v2, v4, v11, v12}, Landroid/widget/EditorTouchState;->isDistanceWithin(FFFFI)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    goto :goto_57

    :cond_53
    iput v4, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    :goto_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    goto :goto_d2

    :cond_6e
    if-ne v0, v4, :cond_87

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastUpX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/widget/EditorTouchState;->mLastUpY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    goto :goto_d2

    :cond_87
    if-ne v0, v2, :cond_c2

    iget-boolean v1, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-nez v1, :cond_d2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Landroid/widget/EditorTouchState;->mLastDownX:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v6, p0, Landroid/widget/EditorTouchState;->mLastDownY:F

    sub-float/2addr v2, v6

    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v7, v6

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    mul-int v9, v8, v8

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_ac

    goto :goto_ad

    :cond_ac
    move v4, v5

    :goto_ad
    iput-boolean v4, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    if-eqz v4, :cond_c1

    cmpl-float v3, v2, v3

    if-nez v3, :cond_b9

    const v3, 0x7f7fffff  # Float.MAX_VALUE

    goto :goto_bf

    :cond_b9
    div-float v3, v1, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    :goto_bf
    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    :cond_c1
    goto :goto_d2

    :cond_c2
    if-ne v0, v1, :cond_d2

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastDownMillis:J

    iput-wide v1, p0, Landroid/widget/EditorTouchState;->mLastUpMillis:J

    iput v5, p0, Landroid/widget/EditorTouchState;->mMultiTapStatus:I

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMultiTapInSameArea:Z

    iput-boolean v5, p0, Landroid/widget/EditorTouchState;->mMovedEnoughForDrag:Z

    iput v3, p0, Landroid/widget/EditorTouchState;->mInitialDragDirectionXYRatio:F

    :cond_d2
    :goto_d2
    return-void
.end method
