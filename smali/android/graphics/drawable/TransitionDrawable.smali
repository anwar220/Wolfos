# classes.dex

.class public Landroid/graphics/drawable/TransitionDrawable;
.super Landroid/graphics/drawable/LayerDrawable;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/TransitionDrawable$TransitionState;
    }
.end annotation


# static fields
.field private static final TRANSITION_NONE:I = 0x2

.field private static final TRANSITION_RUNNING:I = 0x1

.field private static final TRANSITION_STARTING:I


# instance fields
.field private mAlpha:I

.field private mCrossFade:Z

.field private mDuration:I

.field private mFrom:I

.field private mOriginalDuration:I

.field private mReverse:Z

.field private mStartTimeMillis:J

.field private mTo:I

.field private mTransitionState:I


# direct methods
.method constructor <init>()V
    .registers 4

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    move-object v2, v1

    check-cast v2, Landroid/content/res/Resources;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;Landroid/graphics/drawable/TransitionDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-direct {p0, p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .registers 4

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;[Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 5

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable$TransitionState;

    invoke-direct {v0, v1, p0, p2}, Landroid/graphics/drawable/TransitionDrawable$TransitionState;-><init>(Landroid/graphics/drawable/TransitionDrawable$TransitionState;Landroid/graphics/drawable/TransitionDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    const/4 v0, 0x1

    iget v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_8c

    goto :goto_42

    :pswitch_9  #0x1
    iget-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_42

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long/2addr v4, v6

    long-to-float v1, v4

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v5, v1, v4

    if-ltz v5, :cond_25

    move v5, v3

    goto :goto_26

    :cond_25
    move v5, v2

    :goto_26
    move v0, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    int-to-float v5, v4

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v1

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    goto :goto_42

    :pswitch_38  #0x0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    const/4 v0, 0x0

    iput v3, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    nop

    :cond_42
    :goto_42
    iget v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iget-boolean v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    iget-object v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v5, v5, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/16 v6, 0xff

    if-eqz v0, :cond_63

    if-eqz v4, :cond_52

    if-nez v1, :cond_59

    :cond_52
    aget-object v2, v5, v2

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_59
    if-ne v1, v6, :cond_62

    aget-object v2, v5, v3

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_62
    return-void

    :cond_63
    aget-object v2, v5, v2

    iget-object v2, v2, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6e

    rsub-int v7, v1, 0xff

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_6e
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v4, :cond_76

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_76
    if-lez v1, :cond_85

    aget-object v3, v5, v3

    iget-object v2, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_85
    if-nez v0, :cond_8a

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    :cond_8a
    return-void

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_38  #00000000
        :pswitch_9  #00000001
    .end packed-switch
.end method

.method public isCrossFadeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return v0
.end method

.method public resetTransition()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void
.end method

.method public reverseTransition(I)V
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mStartTimeMillis:J

    sub-long v4, v0, v2

    iget v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/16 v6, 0xff

    const/4 v7, 0x0

    if-lez v4, :cond_32

    iget v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-nez v2, :cond_20

    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput-boolean v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    goto :goto_28

    :cond_20
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput-boolean v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    :goto_28
    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void

    :cond_32
    iget-boolean v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    xor-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    iget v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput v5, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    if-eqz v4, :cond_3e

    move v6, v7

    :cond_3e
    iput v6, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    if-eqz v4, :cond_45

    sub-long v2, v0, v2

    goto :goto_4c

    :cond_45
    iget v4, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    int-to-long v4, v4

    sub-long v2, v0, v2

    sub-long v2, v4, v2

    :goto_4c
    long-to-int v2, v2

    iput v2, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput v7, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    return-void
.end method

.method public setCrossFadeEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mCrossFade:Z

    return-void
.end method

.method public showSecondLayer()V
    .registers 2

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void
.end method

.method public startTransition(I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mFrom:I

    const/16 v1, 0xff

    iput v1, p0, Landroid/graphics/drawable/TransitionDrawable;->mTo:I

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mAlpha:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mOriginalDuration:I

    iput p1, p0, Landroid/graphics/drawable/TransitionDrawable;->mDuration:I

    iput-boolean v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mReverse:Z

    iput v0, p0, Landroid/graphics/drawable/TransitionDrawable;->mTransitionState:I

    invoke-virtual {p0}, Landroid/graphics/drawable/TransitionDrawable;->invalidateSelf()V

    return-void
.end method
