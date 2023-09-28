# classes2.dex

.class final Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;
    }
.end annotation


# static fields
.field public static final KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mAnimatedDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private final mIconPaint:Landroid/graphics/Paint;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;

    const-string v1, "KeyButtonRotation"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$2;

    const-string v1, "KeyButtonTranslateY"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V
    .registers 13

    new-instance v6, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    instance-of v3, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;-><init>(IIZZLandroid/graphics/Color;)V

    invoke-direct {p0, p1, v6}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$3;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    iput-object p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iput v1, p2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, p2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_35
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_51
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method public static create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;
    .registers 20

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    move-object v4, p0

    move/from16 v5, p3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    new-instance v13, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;

    if-eqz v1, :cond_26

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v6

    if-eqz v6, :cond_26

    move v10, v3

    goto :goto_27

    :cond_26
    move v10, v2

    :goto_27
    move-object v6, v13

    move-object v7, v12

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V

    move-object v2, v13

    if-eqz p4, :cond_4a

    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v6, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v6

    const/high16 v7, 0x3f000000  # 0.5f

    invoke-static {v7, v0}, Landroid/inputmethodservice/navigationbar/NavigationBarUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v7

    const/high16 v8, 0x30000000

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setShadowProperties(IIII)V

    :cond_4a
    return-object v2
.end method

.method private regenerateBitmapIconCache()V
    .registers 11

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v4, v4, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v5, :cond_38

    const/high16 v5, -0x40800000  # -1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    int-to-float v7, v0

    const/high16 v8, 0x3f000000  # 0.5f

    mul-float/2addr v7, v8

    int-to-float v9, v1

    mul-float/2addr v9, v8

    invoke-virtual {v3, v5, v6, v7, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_38
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v5, :cond_4b

    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4b
    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v2, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private regenerateBitmapShadowCache()V
    .registers 12

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void

    :cond_c
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v6, v6, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v6, :cond_44

    const/high16 v6, -0x40800000  # -1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    int-to-float v8, v0

    const/high16 v9, 0x3f000000  # 0.5f

    mul-float/2addr v8, v9

    int-to-float v10, v2

    mul-float/2addr v10, v9

    invoke-virtual {v4, v6, v7, v8, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_44
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v7, Landroid/graphics/BlurMaskFilter;

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v8, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v8, v8

    sget-object v9, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v7, v8, v9}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    aget v9, v7, v1

    int-to-float v9, v9

    const/4 v10, 0x1

    aget v10, v7, v10

    int-to-float v10, v10

    invoke-virtual {v4, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v9, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v9, v9, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v9, :cond_83

    sget-object v9, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v9, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_83
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput-object v3, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateShadowAlpha()V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    int-to-float v3, v3

    const/high16 v4, 0x437f0000  # 255.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, v3

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public canAnimate()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    return v0
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public clearAnimationCallbacks()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_14

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_cc

    :cond_14
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eq v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_2b

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    iput-boolean v3, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    :cond_2b
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_33

    if-eqz v1, :cond_36

    :cond_33
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->regenerateBitmapIconCache()V

    :cond_36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v3, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-lez v2, :cond_bf

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_67

    if-eqz v1, :cond_6a

    :cond_67
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->regenerateBitmapShadowCache()V

    :cond_6a
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L  # 180.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v7, v7, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v4, v4, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    sub-float/2addr v3, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v6, v6, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v8, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_bf
    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_cc
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    return-object v0
.end method

.method public getDarkIntensity()F
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    return v0
.end method

.method getDrawableBackgroundColor()I
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->toArgb()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getRotation()F
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    return v0
.end method

.method public getTranslationX()F
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    return v0
.end method

.method public getTranslationY()F
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    return v0
.end method

.method hasOvalBg()Z
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget-object v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->jumpToCurrentState()V

    :cond_a
    return-void
.end method

.method public resetAnimation()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_7
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_25

    :cond_20
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_25
    :goto_25
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRotation(F)V
    .registers 3

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    :cond_16
    return-void
.end method

.method public setShadowProperties(IIII)V
    .registers 9

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    if-ne v0, p1, :cond_1f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    if-ne v0, p2, :cond_1f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-ne v0, p3, :cond_1f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    if-eq v0, p4, :cond_45

    :cond_1f
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p4, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->updateShadowAlpha()V

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    :cond_45
    return-void
.end method

.method public setTranslation(FF)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1b

    :cond_10
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iput p2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->invalidateSelf()V

    :cond_1b
    return-void
.end method

.method public setTranslationX(F)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setTranslation(FF)V

    return-void
.end method

.method public setTranslationY(F)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mState:Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    invoke-virtual {p0, v0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->setTranslation(FF)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->jumpToCurrentState()V

    :cond_9
    return v0
.end method

.method public startAnimation()V
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_7
    return-void
.end method
