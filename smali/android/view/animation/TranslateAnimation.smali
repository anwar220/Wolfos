# classes2.dex

.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field protected mFromXDelta:F

.field private mFromXType:I

.field protected mFromXValue:F

.field protected mFromYDelta:F

.field private mFromYType:I

.field protected mFromYValue:F

.field private mParentWidth:I

.field protected mToXDelta:F

.field private mToXType:I

.field protected mToXValue:F

.field protected mToYDelta:F

.field private mToYType:I

.field protected mToYValue:F

.field private mWidth:I


# direct methods
.method public constructor <init>(FFFF)V
    .registers 7

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .registers 10

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    sget-object v1, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private endsXEnclosedWithinParent()Z
    .registers 4

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-gt v0, v1, :cond_16

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method private isSlideInLeft()Z
    .registers 5

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-eqz v0, :cond_18

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->endsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1
.end method

.method private isSlideInRight()Z
    .registers 5

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->endsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method private isSlideOutLeft()Z
    .registers 5

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->startsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1
.end method

.method private isSlideOutRight()Z
    .registers 5

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->startsXEnclosedWithinParent()Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method private startsXEnclosedWithinParent()Z
    .registers 4

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-gt v0, v1, :cond_16

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    int-to-float v0, v0

    add-float/2addr v0, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_16

    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_10

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    :cond_10
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_1c

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    :cond_1c
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public initialize(IIII)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    return-void
.end method

.method public isFullWidthTranslate()Z
    .registers 6

    nop

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideInLeft()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideOutRight()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideInRight()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-direct {p0}, Landroid/view/animation/TranslateAnimation;->isSlideOutLeft()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v0, v2

    :goto_1f
    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mWidth:I

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mParentWidth:I

    if-ne v3, v4, :cond_28

    if-eqz v0, :cond_28

    move v1, v2

    :cond_28
    return v1
.end method

.method public isXAxisTransition()Z
    .registers 4

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method
