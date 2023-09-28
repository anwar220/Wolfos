# classes2.dex

.class public final Landroid/inputmethodservice/navigationbar/NavigationBarView;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final DEBUG:Z = false

.field private static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "NavBarView"


# instance fields
.field private mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentRotation:I

.field mCurrentView:Landroid/view/View;

.field private final mDarkIconColor:I

.field private final mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

.field private mDeadZoneConsuming:Z

.field mDisabledFlags:I

.field private mHorizontal:Landroid/view/View;

.field private mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

.field private mLightContext:Landroid/content/Context;

.field private final mLightIconColor:I

.field private final mNavBarMode:I

.field mNavigationIconHints:I

.field private mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

.field private mTmpLastConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd  # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd  # 0.2f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/4 v2, 0x1

    iput v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavBarMode:I

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightIconColor:I

    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDarkIconColor:I

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x1020349

    invoke-direct {v0, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x102034f

    invoke-direct {v0, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const v2, 0x102034d

    invoke-direct {v0, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/DeadZone;-><init>(Landroid/inputmethodservice/navigationbar/NavigationBarView;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getBackDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 2

    const v0, 0x10803cf

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    return-object v0
.end method

.method private getContextDisplay()Landroid/view/Display;
    .registers 2

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method private getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 8

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iget v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDarkIconColor:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p1

    invoke-static/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static isGesturalMode(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .registers 3

    nop

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    return-void
.end method

.method static synthetic lambda$reorient$1(Landroid/view/View;)Z
    .registers 2

    instance-of v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    return v0
.end method

.method private orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V
    .registers 11

    iget v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    const/4 v4, 0x0

    if-eqz v0, :cond_21

    if-eqz v3, :cond_1d

    const/16 v5, 0x5a

    goto :goto_1f

    :cond_1d
    const/16 v5, -0x5a

    :goto_1f
    int-to-float v5, v5

    goto :goto_22

    :cond_21
    move v5, v4

    :goto_22
    invoke-virtual {p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v5

    if-nez v6, :cond_2b

    return-void

    :cond_2b
    const/4 v6, 0x2

    invoke-static {v6}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->isGesturalMode(I)Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-virtual {p1, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setRotation(F)V

    return-void

    :cond_36
    if-eqz v0, :cond_45

    const/high16 v4, 0x40000000  # 2.0f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    goto :goto_46

    :cond_45
    nop

    :goto_46
    nop

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v5, v8, v2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v2

    sget-object v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    new-array v8, v1, [F

    aput v4, v8, v2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget-object v2, Landroid/inputmethodservice/navigationbar/NavigationBarView;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private reloadNavIcons()V
    .registers 2

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    return-void
.end method

.method private reorient()V
    .registers 4

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateCurrentView()V

    nop

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarFrame;->setDeadZone(Landroid/inputmethodservice/navigationbar/DeadZone;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/DeadZone;->onConfigurationChanged(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->isLayoutDirectionResolved()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->resolveLayoutDirection()Z

    :cond_28
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method private resetViews()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    :cond_9
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v2, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_17

    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    if-eqz v2, :cond_16

    goto :goto_17

    :cond_16
    return v1

    :cond_17
    :goto_17
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_24

    :pswitch_1b  #0x2
    goto :goto_22

    :pswitch_1c  #0x1, 0x3
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    goto :goto_22

    :pswitch_1f  #0x0
    iput-boolean v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZoneConsuming:Z

    nop

    :goto_22
    return v2

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1f  #00000000
        :pswitch_1c  #00000001
        :pswitch_1b  #00000002
        :pswitch_1c  #00000003
    .end packed-switch
.end method

.method private updateCurrentView()V
    .registers 5

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->resetViews()V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentRotation:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1b

    move v1, v3

    :cond_1b
    invoke-virtual {v2, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    return-void
.end method

.method private updateIcons(Landroid/content/res/Configuration;)V
    .registers 8

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v3

    :goto_d
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v4, :cond_17

    move v1, v2

    goto :goto_18

    :cond_17
    move v1, v3

    :goto_18
    nop

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    if-eq v4, v5, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    if-nez v1, :cond_2b

    if-eqz v2, :cond_34

    :cond_2b
    const v3, 0x10803d0

    invoke-direct {p0, v3}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getDrawable(I)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    :cond_34
    if-nez v0, :cond_3a

    if-nez v1, :cond_3a

    if-eqz v2, :cond_40

    :cond_3a
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackDrawable()Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    move-result-object v3

    iput-object v3, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    :cond_40
    return-void
.end method

.method private updateNavButtonIcons()V
    .registers 7

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mBackIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->orientBackButton(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mImeSwitcherIcon:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setImageDrawable(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    iget v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    move v1, v3

    :goto_1f
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v4

    if-eqz v1, :cond_27

    move v5, v3

    goto :goto_28

    :cond_27
    move v5, v2

    :goto_28
    invoke-virtual {v4, v5}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->getHomeHandle()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method private updateOrientationViews()V
    .registers 2

    const v0, 0x102034e

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateCurrentView()V

    return-void
.end method


# virtual methods
.method public forEachView(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public getBackButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x1020349

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/inputmethodservice/navigationbar/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeHandle()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x102034d

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method public getImeSwitchButton()Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x102034f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->requestApplyInsets()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reorient()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mTmpLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_30

    :cond_2d
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    :cond_30
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mDeadZone:Landroid/inputmethodservice/navigationbar/DeadZone;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/DeadZone;->onDraw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1020350

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationInflaterView:Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateOrientationViews()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reloadNavIcons()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->shouldDeadZoneConsumeTouchEvents(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDarkIntensity(F)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v1, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setDarkIntensity(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->reloadNavIcons()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setNavigationIconHints(I)V
    .registers 6

    iget v0, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    and-int/2addr v0, v3

    if-eqz v0, :cond_12

    move v2, v3

    :cond_12
    move v0, v2

    nop

    iput p1, p0, Landroid/inputmethodservice/navigationbar/NavigationBarView;->mNavigationIconHints:I

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method
