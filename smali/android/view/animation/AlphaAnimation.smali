# classes2.dex

.class public Landroid/view/animation/AlphaAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private mFromAlpha:F

.field private mToAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/internal/R$styleable;->AlphaAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5

    iget v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    iget v1, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    return-void
.end method

.method public hasAlpha()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public willChangeBounds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method