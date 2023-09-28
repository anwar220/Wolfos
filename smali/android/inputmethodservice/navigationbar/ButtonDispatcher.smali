# classes2.dex

.class final Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
.super Ljava/lang/Object;


# static fields
.field private static final FADE_DURATION_IN:I = 0x96

.field private static final FADE_DURATION_OUT:I = 0xfa

.field public static final LINEAR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAlpha:F

.field private final mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentView:Landroid/view/View;

.field private mDarkIntensity:Ljava/lang/Float;

.field private mDelayTouchFeedback:Ljava/lang/Boolean;

.field private mFadeAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mId:I

.field private mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickable:Ljava/lang/Boolean;

.field private mOnHoverListener:Landroid/view/View$OnHoverListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibility:I


# direct methods
.method static bridge synthetic -$$Nest$fputmFadeAnimator(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/animation/ValueAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->LINEAR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;-><init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    iput p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    :cond_24
    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_35

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_35
    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v0, :cond_59

    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    if-eqz v1, :cond_47

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDarkIntensity(F)V

    :cond_47
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_4e

    invoke-interface {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4e
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDelayTouchFeedback(Z)V

    :cond_59
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAlpha()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    return v0
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    return v0
.end method

.method public getImageDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    return-object v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisibility()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    return v0
.end method

.method public isVisible()Z
    .registers 2

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method synthetic lambda$new$0$android-inputmethodservice-navigationbar-ButtonDispatcher(Landroid/animation/ValueAnimator;)V
    .registers 4

    nop

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZZ)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .registers 5

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZ)V

    return-void
.end method

.method public setAlpha(FZ)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZZ)V

    return-void
.end method

.method public setAlpha(FZJ)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZJZ)V

    return-void
.end method

.method public setAlpha(FZJZ)V
    .registers 12

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    if-nez p5, :cond_8

    if-eqz p2, :cond_b

    :cond_8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    if-eqz p2, :cond_41

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6b

    :cond_41
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000  # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-float v2, p1, v1

    float-to-int v2, v2

    if-eq v0, v2, :cond_6b

    int-to-float v3, v2

    div-float/2addr v3, v1

    iput v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_59
    if-ge v3, v1, :cond_6b

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget v5, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mAlpha:F

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    :cond_6b
    :goto_6b
    return-void
.end method

.method public setAlpha(FZZ)V
    .registers 12

    nop

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_c

    const-wide/16 v0, 0x96

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0xfa

    :goto_e
    move-wide v5, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setAlpha(FZJZ)V

    return-void
.end method

.method public setCurrentView(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_21

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_21
    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDarkIntensity:Ljava/lang/Float;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    invoke-interface {v2, p1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDarkIntensity(F)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mDelayTouchFeedback:Ljava/lang/Boolean;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    invoke-interface {v2, p1}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setDelayTouchFeedback(Z)V

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_27
    return-void
.end method

.method public setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V
    .registers 6

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_25

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/ButtonInterface;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-interface {v2, v3}, Landroid/inputmethodservice/navigationbar/ButtonInterface;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_25
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mImageDrawable:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_2e

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2e
    return-void
.end method

.method public setLongClickable(Z)V
    .registers 6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_23

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickable:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 6

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    .registers 6

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mOnHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 6

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 6

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1b

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return-void
.end method

.method public setTranslation(III)V
    .registers 8

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v3, p2

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    int-to-float v3, p3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationZ(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method public setVisibility(I)V
    .registers 6

    iget v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mFadeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_c
    iput p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_27

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->mVisibility:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_27
    return-void
.end method
