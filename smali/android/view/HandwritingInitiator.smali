# classes3.dex

.class public Landroid/view/HandwritingInitiator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HandwritingInitiator$HandwritableViewInfo;,
        Landroid/view/HandwritingInitiator$HandwritingAreaTracker;,
        Landroid/view/HandwritingInitiator$State;
    }
.end annotation


# instance fields
.field public mConnectedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCount:I

.field private final mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

.field private final mHandwritingTimeoutInMillis:J

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mState:Landroid/view/HandwritingInitiator$State;

.field private final mTouchSlop:I


# direct methods
.method static bridge synthetic -$$Nest$smisViewActive(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Landroid/view/HandwritingInitiator;->isViewActive(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/view/ViewConfiguration;Landroid/view/inputmethod/InputMethodManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/HandwritingInitiator$State-IA;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    new-instance v0, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-direct {v0}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;-><init>()V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    iput-object v1, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    iput-object p2, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private clearConnectedView()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    return-void
.end method

.method private contains(Landroid/graphics/Rect;FF)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_21

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_21

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_21

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method private findBestCandidateView(FF)Landroid/view/View;
    .registers 9

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v0}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FF)Z

    move-result v2

    if-eqz v2, :cond_17

    return-object v0

    :cond_17
    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-virtual {v1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->computeViewInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/HandwritingInitiator$HandwritableViewInfo;

    invoke-virtual {v3}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_21

    :cond_38
    invoke-virtual {v3}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v5, p1, p2}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FF)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v3}, Landroid/view/HandwritingInitiator$HandwritableViewInfo;->getView()Landroid/view/View;

    move-result-object v2

    return-object v2

    :cond_47
    goto :goto_21

    :cond_48
    const/4 v2, 0x0

    return-object v2
.end method

.method private getConnectedView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private static getViewHandwritingArea(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {p0}, Landroid/view/View;->getHandwritingArea()Landroid/graphics/Rect;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    if-eqz v2, :cond_22

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2e

    :cond_22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2e
    invoke-interface {v0, p0, v3, v1}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_35

    return-object v3

    :cond_35
    return-object v1
.end method

.method private static isViewActive(Landroid/view/View;)Z
    .registers 2

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isAggregatedVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private largerThanTouchSlop(FFFF)Z
    .registers 9

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    iget v3, p0, Landroid/view/HandwritingInitiator;->mTouchSlop:I

    mul-int/2addr v3, v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    return v2
.end method

.method private reset()V
    .registers 3

    new-instance v0, Landroid/view/HandwritingInitiator$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/HandwritingInitiator$State;-><init>(Landroid/view/HandwritingInitiator$State-IA;)V

    iput-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    return-void
.end method

.method private tryStartHandwriting()V
    .registers 5

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v0}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    invoke-virtual {v0}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    return-void

    :cond_1a
    invoke-static {v0}, Landroid/view/HandwritingInitiator;->getViewHandwritingArea(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v2

    iget-object v3, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v3}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/view/HandwritingInitiator;->contains(Landroid/graphics/Rect;FF)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p0, v0}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    goto :goto_37

    :cond_34
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->reset()V

    :goto_37
    return-void
.end method


# virtual methods
.method public onInputConnectionClosed(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-ne v0, p1, :cond_15

    iget v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    if-nez v1, :cond_18

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    goto :goto_18

    :cond_15
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    :cond_18
    :goto_18
    return-void
.end method

.method public onInputConnectionCreated(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->isAutoHandwritingEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->clearConnectedView()V

    return-void

    :cond_a
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_17

    iget v2, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    goto :goto_2b

    :cond_17
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/view/HandwritingInitiator;->mConnectedView:Ljava/lang/ref/WeakReference;

    iput v1, p0, Landroid/view/HandwritingInitiator;->mConnectionCount:I

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->tryStartHandwriting()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_d0

    :pswitch_8  #0x4
    goto/16 :goto_cf

    :pswitch_a  #0x6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v2

    if-eq v1, v2, :cond_8c

    return-void

    :pswitch_1b  #0x2
    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget-object v2, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v2}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;)Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_8b

    :cond_2c
    nop

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroid/view/HandwritingInitiator;->mHandwritingTimeoutInMillis:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_42

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->reset()V

    return-void

    :cond_42
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusPointerId(Landroid/view/HandwritingInitiator$State;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget-object v7, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v7}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v7

    iget-object v8, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v8}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v8

    invoke-direct {p0, v5, v6, v7, v8}, Landroid/view/HandwritingInitiator;->largerThanTouchSlop(FFFF)Z

    move-result v7

    if-eqz v7, :cond_cf

    iget-object v7, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v7, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;Z)V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownX(Landroid/view/HandwritingInitiator$State;)F

    move-result v1

    iget-object v7, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v7}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fgetmStylusDownY(Landroid/view/HandwritingInitiator$State;)F

    move-result v7

    invoke-direct {p0, v1, v7}, Landroid/view/HandwritingInitiator;->findBestCandidateView(FF)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_cf

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->getConnectedView()Landroid/view/View;

    move-result-object v7

    if-ne v1, v7, :cond_87

    invoke-virtual {p0, v1}, Landroid/view/HandwritingInitiator;->startHandwriting(Landroid/view/View;)V

    goto :goto_cf

    :cond_87
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_cf

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    :pswitch_8c  #0x1, 0x3
    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->reset()V

    goto :goto_cf

    :pswitch_90  #0x0, 0x5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9f

    const/4 v4, 0x4

    if-eq v3, v4, :cond_9f

    return-void

    :cond_9f
    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusPointerId(Landroid/view/HandwritingInitiator$State;I)V

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownTimeInMillis(Landroid/view/HandwritingInitiator$State;J)V

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-static {v4, v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownX(Landroid/view/HandwritingInitiator$State;F)V

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-static {v4, v5}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmStylusDownY(Landroid/view/HandwritingInitiator$State;F)V

    iget-object v4, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    invoke-static {v4, v1}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmShouldInitHandwriting(Landroid/view/HandwritingInitiator$State;Z)V

    iget-object v1, p0, Landroid/view/HandwritingInitiator;->mState:Landroid/view/HandwritingInitiator$State;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/HandwritingInitiator$State;->-$$Nest$fputmExceedTouchSlop(Landroid/view/HandwritingInitiator$State;Z)V

    nop

    :cond_cf
    :goto_cf
    return-void

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_90  #00000000
        :pswitch_8c  #00000001
        :pswitch_1b  #00000002
        :pswitch_8c  #00000003
        :pswitch_8  #00000004
        :pswitch_90  #00000005
        :pswitch_a  #00000006
    .end packed-switch
.end method

.method public startHandwriting(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->startStylusHandwriting(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/view/HandwritingInitiator;->reset()V

    return-void
.end method

.method public updateHandwritingAreasForView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/view/HandwritingInitiator;->mHandwritingAreasTracker:Landroid/view/HandwritingInitiator$HandwritingAreaTracker;

    invoke-virtual {v0, p1}, Landroid/view/HandwritingInitiator$HandwritingAreaTracker;->updateHandwritingAreaForView(Landroid/view/View;)V

    return-void
.end method
