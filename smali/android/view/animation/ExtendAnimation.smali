# classes2.dex

.class public Landroid/view/animation/ExtendAnimation;
.super Landroid/view/animation/Animation;


# instance fields
.field private mFromBottomType:I

.field private mFromBottomValue:F

.field protected mFromInsets:Landroid/graphics/Insets;

.field private mFromLeftType:I

.field private mFromLeftValue:F

.field private mFromRightType:I

.field private mFromRightValue:F

.field private mFromTopType:I

.field private mFromTopValue:F

.field private mToBottomType:I

.field private mToBottomValue:F

.field protected mToInsets:Landroid/graphics/Insets;

.field private mToLeftType:I

.field private mToLeftValue:F

.field private mToRightType:I

.field private mToRightValue:F

.field private mToTopType:I

.field private mToTopValue:F


# direct methods
.method public constructor <init>(IIIIIIII)V
    .registers 14

    neg-int v0, p1

    neg-int v1, p2

    neg-int v2, p3

    neg-int v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    neg-int v1, p5

    neg-int v2, p6

    neg-int v3, p7

    neg-int v4, p8

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/view/animation/ExtendAnimation;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/animation/ExtendAnimation;->mToInsets:Landroid/graphics/Insets;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromLeftType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromTopType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromRightType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromBottomType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToLeftType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToTopType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToRightType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToBottomType:I

    sget-object v1, Lcom/android/internal/R$styleable;->ExtendAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mFromLeftType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mFromLeftValue:F

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mFromTopType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mFromTopValue:F

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mFromRightType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mFromRightValue:F

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mFromBottomType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mFromBottomValue:F

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mToLeftType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mToLeftValue:F

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mToTopType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mToTopValue:F

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mToRightType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mToRightValue:F

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    iget v2, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mToBottomType:I

    iget v2, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ExtendAnimation;->mToBottomValue:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V
    .registers 5

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/animation/ExtendAnimation;->mToInsets:Landroid/graphics/Insets;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromLeftType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromTopType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromRightType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromBottomType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToLeftType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToTopType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToRightType:I

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToBottomType:I

    if-eqz p1, :cond_51

    if-eqz p2, :cond_51

    iget v0, p1, Landroid/graphics/Insets;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromLeftValue:F

    iget v0, p1, Landroid/graphics/Insets;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromTopValue:F

    iget v0, p1, Landroid/graphics/Insets;->right:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromRightValue:F

    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mFromBottomValue:F

    iget v0, p2, Landroid/graphics/Insets;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToLeftValue:F

    iget v0, p2, Landroid/graphics/Insets;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToTopValue:F

    iget v0, p2, Landroid/graphics/Insets;->right:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToRightValue:F

    iget v0, p2, Landroid/graphics/Insets;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/view/animation/ExtendAnimation;->mToBottomValue:F

    return-void

    :cond_51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected non-null animation outsets"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 9

    iget-object v0, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    iget-object v1, p0, Landroid/view/animation/ExtendAnimation;->mToInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iget-object v2, p0, Landroid/view/animation/ExtendAnimation;->mToInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    iget-object v3, p0, Landroid/view/animation/ExtendAnimation;->mToInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    iget-object v4, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    iget-object v4, p0, Landroid/view/animation/ExtendAnimation;->mToInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    iget-object v5, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/view/animation/Transformation;->setInsets(IIII)V

    return-void
.end method

.method public hasExtension()Z
    .registers 2

    iget-object v0, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->left:I

    if-ltz v0, :cond_1b

    iget-object v0, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->top:I

    if-ltz v0, :cond_1b

    iget-object v0, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->right:I

    if-ltz v0, :cond_1b

    iget-object v0, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-gez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public initialize(IIII)V
    .registers 10

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Landroid/view/animation/ExtendAnimation;->mFromLeftType:I

    iget v1, p0, Landroid/view/animation/ExtendAnimation;->mFromLeftValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ExtendAnimation;->resolveSize(IFII)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iget v1, p0, Landroid/view/animation/ExtendAnimation;->mFromTopType:I

    iget v2, p0, Landroid/view/animation/ExtendAnimation;->mFromTopValue:F

    invoke-virtual {p0, v1, v2, p2, p4}, Landroid/view/animation/ExtendAnimation;->resolveSize(IFII)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iget v2, p0, Landroid/view/animation/ExtendAnimation;->mFromRightType:I

    iget v3, p0, Landroid/view/animation/ExtendAnimation;->mFromRightValue:F

    invoke-virtual {p0, v2, v3, p1, p3}, Landroid/view/animation/ExtendAnimation;->resolveSize(IFII)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    iget v3, p0, Landroid/view/animation/ExtendAnimation;->mFromBottomType:I

    iget v4, p0, Landroid/view/animation/ExtendAnimation;->mFromBottomValue:F

    invoke-virtual {p0, v3, v4, p2, p4}, Landroid/view/animation/ExtendAnimation;->resolveSize(IFII)F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/ExtendAnimation;->mFromInsets:Landroid/graphics/Insets;

    iget v0, p0, Landroid/view/animation/ExtendAnimation;->mToLeftType:I

    iget v1, p0, Landroid/view/animation/ExtendAnimation;->mToLeftValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ExtendAnimation;->resolveSize(IFII)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iget v1, p0, Landroid/view/animation/ExtendAnimation;->mToTopType:I

    iget v2, p0, Landroid/view/animation/ExtendAnimation;->mToTopValue:F

    invoke-virtual {p0, v1, v2, p2, p4}, Landroid/view/animation/ExtendAnimation;->resolveSize(IFII)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iget v2, p0, Landroid/view/animation/ExtendAnimation;->mToRightType:I

    iget v3, p0, Landroid/view/animation/ExtendAnimation;->mToRightValue:F

    invoke-virtual {p0, v2, v3, p1, p3}, Landroid/view/animation/ExtendAnimation;->resolveSize(IFII)F

    move-result v2

    float-to-int v2, v2

    neg-int v2, v2

    iget v3, p0, Landroid/view/animation/ExtendAnimation;->mToBottomType:I

    iget v4, p0, Landroid/view/animation/ExtendAnimation;->mToBottomValue:F

    invoke-virtual {p0, v3, v4, p2, p4}, Landroid/view/animation/ExtendAnimation;->resolveSize(IFII)F

    move-result v3

    float-to-int v3, v3

    neg-int v3, v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/ExtendAnimation;->mToInsets:Landroid/graphics/Insets;

    return-void
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
