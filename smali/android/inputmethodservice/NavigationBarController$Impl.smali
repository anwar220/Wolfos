# classes2.dex

.class final Landroid/inputmethodservice/NavigationBarController$Impl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/inputmethodservice/NavigationBarController$Callback;
.implements Landroid/view/Window$DecorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/NavigationBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Impl"
.end annotation


# static fields
.field private static final DEFAULT_COLOR_ADAPT_TRANSITION_TIME:I = 0x6a4

.field private static final LEGACY_DECELERATE:Landroid/view/animation/Interpolator;


# instance fields
.field private mAppearance:I

.field private mDarkIntensity:F

.field private mDestroyed:Z

.field private mDrawLegacyNavigationBarBackground:Z

.field private mImeDrawsImeNavBar:Z

.field mLastInsets:Landroid/graphics/Insets;

.field private mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

.field private final mService:Landroid/inputmethodservice/InputMethodService;

.field private mShouldShowImeSwitcherWhenImeIsShown:Z

.field private final mTempPos:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTintAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3e4ccccd  # 0.2f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/NavigationBarController$Impl;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method private static calculateTargetDarkIntensity(IZ)F
    .registers 4

    if-nez p1, :cond_8

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private getSystemInsets()Landroid/graphics/Insets;
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_17

    return-object v1

    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    if-nez v2, :cond_1e

    return-object v1

    :cond_1e
    nop

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    return-object v3
.end method

.method private installNavigationBarFrameIfNecessary()V
    .registers 9

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const-class v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/16 v4, 0x50

    const/4 v5, -0x1

    if-nez v3, :cond_8a

    new-instance v3, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {v3, v6}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x1090093

    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    if-eqz v2, :cond_63

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v6, v5, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    goto :goto_68

    :cond_63
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_68
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const-class v4, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v3, v5}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    if-eqz v3, :cond_89

    nop

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eqz v4, :cond_83

    const/4 v4, 0x4

    goto :goto_84

    :cond_83
    const/4 v4, 0x0

    :goto_84
    or-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    :cond_89
    goto :goto_96

    :cond_8a
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v6, v5, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v6}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    :goto_96
    iget-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eqz v3, :cond_a2

    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_a8

    :cond_a2
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_a8
    iget v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {v3, v4}, Landroid/inputmethodservice/NavigationBarController$Impl;->calculateTargetDarkIntensity(IZ)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/inputmethodservice/NavigationBarController$Impl;->setIconTintInternal(F)V

    return-void
.end method

.method private scheduleRelayout()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v1, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda2;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setIconTintInternal(F)V
    .registers 5

    iput p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-class v1, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setDarkIntensity(F)V

    return-void
.end method

.method private uninstallNavigationBarFrameIfNecessary()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    return-void
.end method


# virtual methods
.method synthetic lambda$onSystemBarAppearanceChanged$1$android-inputmethodservice-NavigationBarController$Impl(Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->setIconTintInternal(F)V

    return-void
.end method

.method synthetic lambda$scheduleRelayout$0$android-inputmethodservice-NavigationBarController$Impl(Landroid/inputmethodservice/navigationbar/NavigationBarFrame;)V
    .registers 10

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v0, v0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1e

    return-void

    :cond_1e
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-nez v2, :cond_23

    return-void

    :cond_23
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    iget v6, v3, Landroid/graphics/Insets;->bottom:I

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    :cond_41
    nop

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_55

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_55

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_55
    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    return-void
.end method

.method public onDrawLegacyNavigationBarBackgroundChanged(Z)Z
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    if-eq p1, v0, :cond_24

    iput-boolean p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_1f

    if-eqz p1, :cond_18

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackgroundColor(I)V

    goto :goto_1c

    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1c
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->scheduleRelayout()V

    :cond_1f
    iget v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->onSystemBarAppearanceChanged(I)V

    :cond_24
    return p1
.end method

.method public onNavButtonFlagsChanged(I)V
    .registers 10

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    iput-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    iget-boolean v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    iput-boolean v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-eqz v0, :cond_48

    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->installNavigationBarFrameIfNecessary()V

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v5, :cond_25

    return-void

    :cond_25
    iget-boolean v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    if-ne v6, v4, :cond_2a

    return-void

    :cond_2a
    const-class v6, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;

    invoke-direct {v7, v6}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, v7}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/inputmethodservice/navigationbar/NavigationBarView;

    if-nez v5, :cond_3d

    return-void

    :cond_3d
    nop

    if-eqz v3, :cond_42

    const/4 v1, 0x4

    goto :goto_43

    :cond_42
    nop

    :goto_43
    or-int/2addr v1, v2

    invoke-virtual {v5, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    goto :goto_4b

    :cond_48
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->uninstallNavigationBarFrameIfNecessary()V

    :goto_4b
    return-void
.end method

.method public onSoftInputWindowCreated(Landroid/inputmethodservice/SoftInputWindow;)V
    .registers 4

    invoke-virtual {p1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getSystemBarAppearance()I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setDecorCallback(Landroid/view/Window$DecorCallback;)V

    return-void
.end method

.method public onSystemBarAppearanceChanged(I)V
    .registers 6

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-static {p1, v0}, Landroid/inputmethodservice/NavigationBarController$Impl;->calculateTargetDarkIntensity(IZ)F

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_19
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/NavigationBarController$Impl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/inputmethodservice/NavigationBarController$Impl;->LEGACY_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onViewInitialized()V
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->installNavigationBarFrameIfNecessary()V

    return-void
.end method

.method public onWindowShown()V
    .registers 8

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDestroyed:Z

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-nez v0, :cond_d

    goto :goto_5d

    :cond_d
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    :cond_2c
    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_56

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_56

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    if-le v5, v6, :cond_56

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_56
    iget-object v3, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setVisibility(I)V

    :cond_5c
    return-void

    :cond_5d
    :goto_5d
    return-void
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mImeDrawsImeNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNavigationBarFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mShouldShowImeSwitcherWhenImeIsShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mShouldShowImeSwitcherWhenImeIsShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAppearance=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mAppearance:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDarkIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDarkIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDrawLegacyNavigationBarBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mDrawLegacyNavigationBarBackground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTouchableInsets(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 16

    iget-boolean v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mImeDrawsImeNavBar:Z

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    if-eqz v0, :cond_12b

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_12b

    :cond_12
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->getSystemInsets()Landroid/graphics/Insets;

    move-result-object v0

    if-eqz v0, :cond_12a

    iget-object v1, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v1, v1, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mService:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    iget v5, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_12c

    goto/16 :goto_cd

    :pswitch_32  #0x3
    new-instance v5, Landroid/graphics/Region;

    invoke-direct {v5}, Landroid/graphics/Region;-><init>()V

    move-object v3, v5

    iget-object v5, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    goto/16 :goto_cd

    :pswitch_3f  #0x2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_cd

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v7

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v5, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v5

    goto :goto_cd

    :pswitch_70  #0x1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_cd

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v8, v8, v7

    iget v9, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iget-object v10, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v10, v10, v7

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v5, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v5

    goto :goto_cd

    :pswitch_a1  #0x0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_cd

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v9, v8, v7

    aget v8, v8, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v10, v9

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempPos:[I

    aget v11, v11, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v5, v9, v8, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v5, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v5

    :cond_cd
    :goto_cd
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v3, :cond_f0

    new-instance v5, Landroid/graphics/Region;

    iget-object v8, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v5, v8}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    move-object v3, v5

    goto :goto_f5

    :cond_f0
    iget-object v5, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    :goto_f5
    iget-object v5, p2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v5, 0x3

    invoke-virtual {p2, v5}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    const/4 v5, 0x0

    instance-of v8, v2, Landroid/view/ViewGroup;

    if-eqz v8, :cond_11c

    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/Window;->getNavigationBarBackgroundView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_11a

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mNavigationBarFrame:Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_11a

    move v7, v6

    goto :goto_11b

    :cond_11a
    nop

    :goto_11b
    move v5, v7

    :cond_11c
    iget-object v7, p0, Landroid/inputmethodservice/NavigationBarController$Impl;->mLastInsets:Landroid/graphics/Insets;

    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v6, v7

    if-nez v5, :cond_127

    if-eqz v6, :cond_12a

    :cond_127
    invoke-direct {p0}, Landroid/inputmethodservice/NavigationBarController$Impl;->scheduleRelayout()V

    :cond_12a
    return-void

    :cond_12b
    :goto_12b
    return-void

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_a1  #00000000
        :pswitch_70  #00000001
        :pswitch_3f  #00000002
        :pswitch_32  #00000003
    .end packed-switch
.end method
