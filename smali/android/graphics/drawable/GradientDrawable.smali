# classes.dex

.class public Landroid/graphics/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/GradientDrawable$GradientState;,
        Landroid/graphics/drawable/GradientDrawable$Orientation;,
        Landroid/graphics/drawable/GradientDrawable$RadiusType;,
        Landroid/graphics/drawable/GradientDrawable$GradientType;,
        Landroid/graphics/drawable/GradientDrawable$Shape;
    }
.end annotation


# static fields
.field private static final DEFAULT_INNER_RADIUS_RATIO:F = 3.0f

.field private static final DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field private static final DEFAULT_THICKNESS_RATIO:F = 9.0f

.field public static final LINE:I = 0x2

.field public static final LINEAR_GRADIENT:I = 0x0

.field public static final OVAL:I = 0x1

.field public static final RADIAL_GRADIENT:I = 0x1

.field private static final RADIUS_TYPE_FRACTION:I = 0x1

.field private static final RADIUS_TYPE_FRACTION_PARENT:I = 0x2

.field private static final RADIUS_TYPE_PIXELS:I = 0x0

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3

.field public static final SWEEP_GRADIENT:I = 0x2

.field public static sWrapNegativeAngleMeasurements:Z


# instance fields
.field private mAlpha:I

.field private mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mGradientIsDirty:Z

.field private mGradientRadius:F

.field private mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

.field private mLayerPaint:Landroid/graphics/Paint;

.field private mMutated:Z

.field private mPadding:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPathIsDirty:Z

.field private final mRect:Landroid/graphics/RectF;

.field private mRingPath:Landroid/graphics/Path;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/drawable/GradientDrawable;->sWrapNegativeAngleMeasurements:Z

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sput-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 5

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private applyThemeChildElements(Landroid/content/res/Resources$Theme;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_14
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-eqz v1, :cond_30

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    :try_start_20
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_2b

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_30

    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    :cond_30
    :goto_30
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-eqz v1, :cond_42

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_42
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-eqz v1, :cond_54

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_54
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-eqz v1, :cond_66

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    sget-object v2, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_66
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-eqz v1, :cond_78

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_78
    return-void
.end method

.method private buildPathIfDirty()V
    .registers 6

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-eqz v1, :cond_1c

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    :cond_1c
    return-void
.end method

.method private buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;
    .registers 13

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-eqz v0, :cond_f

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    if-nez v0, :cond_f

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iget-boolean v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    const/high16 v2, 0x43b40000  # 360.0f

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    const v3, 0x461c4000  # 10000.0f

    div-float/2addr v1, v3

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v5

    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_40

    iget v5, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    int-to-float v5, v5

    goto :goto_47

    :cond_40
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    div-float/2addr v5, v8

    :goto_47
    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-eq v8, v7, :cond_4f

    iget v7, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    int-to-float v7, v7

    goto :goto_56

    :cond_4f
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    div-float/2addr v7, v8

    :goto_56
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    sub-float v9, v4, v7

    sub-float v10, v6, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    move-object v3, v9

    neg-float v9, v5

    neg-float v10, v5

    invoke-virtual {v3, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    if-nez v9, :cond_79

    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    goto :goto_7c

    :cond_79
    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    :goto_7c
    iget-object v9, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    cmpg-float v2, v1, v2

    if-gez v2, :cond_a4

    const/high16 v2, -0x3c4c0000  # -360.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a4

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v9, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    add-float v2, v4, v7

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, v4, v7

    add-float/2addr v2, v5

    invoke-virtual {v9, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v2, 0x0

    invoke-virtual {v9, v3, v2, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    neg-float v2, v1

    invoke-virtual {v9, v8, v1, v2, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {v9}, Landroid/graphics/Path;->close()V

    goto :goto_ae

    :cond_a4
    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v3, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v9, v8, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    :goto_ae
    return-object v9
.end method

.method private ensureValidRect()Z
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    if-eqz v1, :cond_230

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    const/high16 v6, 0x3f000000  # 0.5f

    mul-float v4, v5, v6

    :cond_1a
    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    iget v8, v3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    iget v9, v3, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v4

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v6, 0x0

    iget-object v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_52

    iget-object v7, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v7, v7

    new-array v6, v7, [I

    const/4 v7, 0x0

    :goto_3c
    array-length v8, v6

    if-ge v7, v8, :cond_52

    iget-object v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    if-eqz v8, :cond_4f

    iget-object v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    aput v8, v6, v7

    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_52
    if-eqz v6, :cond_230

    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const v9, 0x461c4000  # 10000.0f

    const/high16 v10, 0x3f800000  # 1.0f

    if-nez v8, :cond_12d

    iget-boolean v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v1, :cond_6a

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v1, v9

    :cond_6a
    move v1, v10

    sget-object v8, Landroid/graphics/drawable/GradientDrawable$1;->$SwitchMap$android$graphics$drawable$GradientDrawable$Orientation:[I

    iget-object v9, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v9}, Landroid/graphics/drawable/GradientDrawable$Orientation;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_23a

    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto/16 :goto_109

    :pswitch_8c  #0x7
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    move v11, v9

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto/16 :goto_109

    :pswitch_9e  #0x6
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v10, v7, Landroid/graphics/RectF;->right:F

    mul-float/2addr v10, v1

    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_109

    :pswitch_b1  #0x5
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    move v10, v8

    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_109

    :pswitch_c2  #0x4
    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v9, v7, Landroid/graphics/RectF;->bottom:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    iget v11, v7, Landroid/graphics/RectF;->top:F

    mul-float/2addr v11, v1

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_109

    :pswitch_d5  #0x3
    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    move v11, v9

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_109

    :pswitch_e6  #0x2
    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    mul-float/2addr v10, v1

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    goto :goto_109

    :pswitch_f9  #0x1
    iget v8, v7, Landroid/graphics/RectF;->left:F

    iget v9, v7, Landroid/graphics/RectF;->top:F

    move v10, v8

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v11, v1

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    :goto_109
    iget-object v15, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/LinearGradient;

    iget-object v13, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v14

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v21, v13

    move-object v13, v6

    move-object v2, v14

    move-object/from16 v14, v21

    move/from16 v21, v1

    move-object v1, v15

    move-object/from16 v15, v20

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_225

    :cond_12d
    iget v2, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v8, 0x2

    const/4 v11, 0x1

    if-ne v2, v11, :cond_1b8

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->right:F

    iget v10, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v10

    iget v10, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    iget v10, v7, Landroid/graphics/RectF;->bottom:F

    iget v11, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v10, v11

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v10, v11

    add-float/2addr v2, v10

    iget v10, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_16e

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-ltz v8, :cond_158

    iget v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    int-to-float v8, v8

    goto :goto_15c

    :cond_158
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    :goto_15c
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-ltz v11, :cond_164

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    int-to-float v11, v11

    goto :goto_168

    :cond_164
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    :goto_168
    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v12

    mul-float/2addr v10, v12

    goto :goto_180

    :cond_16e
    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-ne v11, v8, :cond_180

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    mul-float/2addr v10, v8

    goto :goto_181

    :cond_180
    :goto_180
    nop

    :goto_181
    iget-boolean v8, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v8, :cond_18c

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    mul-float/2addr v10, v8

    :cond_18c
    iput v10, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    const/4 v8, 0x0

    cmpg-float v8, v10, v8

    if-gtz v8, :cond_198

    const v10, 0x3a83126f  # 0.001f

    move v15, v10

    goto :goto_199

    :cond_198
    move v15, v10

    :goto_199
    iget-object v14, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v13, Landroid/graphics/RadialGradient;

    const/16 v16, 0x0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v13

    move v9, v1

    move v10, v2

    move v11, v15

    move-object v12, v6

    move/from16 v18, v1

    move-object v1, v13

    move-object/from16 v13, v16

    move/from16 v16, v2

    move-object v2, v14

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/16 :goto_225

    :cond_1b8
    iget v2, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    if-ne v2, v8, :cond_225

    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v8, v7, Landroid/graphics/RectF;->right:F

    iget v11, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v11

    iget v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    mul-float/2addr v8, v11

    add-float/2addr v2, v8

    iget v8, v7, Landroid/graphics/RectF;->top:F

    iget v11, v7, Landroid/graphics/RectF;->bottom:F

    iget v12, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    move-object v11, v6

    const/4 v12, 0x0

    iget-boolean v13, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    if-eqz v13, :cond_21b

    iget-object v11, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    array-length v13, v6

    if-eqz v11, :cond_1e2

    array-length v14, v11

    add-int/lit8 v15, v13, 0x1

    if-eq v14, v15, :cond_1e9

    :cond_1e2
    add-int/lit8 v14, v13, 0x1

    new-array v14, v14, [I

    iput-object v14, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempColors:[I

    move-object v11, v14

    :cond_1e9
    invoke-static {v6, v1, v11, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v13, -0x1

    aget v1, v6, v1

    aput v1, v11, v13

    iget-object v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    add-int/lit8 v12, v13, -0x1

    int-to-float v12, v12

    div-float v12, v10, v12

    if-eqz v1, :cond_200

    array-length v14, v1

    add-int/lit8 v15, v13, 0x1

    if-eq v14, v15, :cond_207

    :cond_200
    add-int/lit8 v14, v13, 0x1

    new-array v14, v14, [F

    iput-object v14, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTempPositions:[F

    move-object v1, v14

    :cond_207
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->getLevel()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v9

    const/4 v9, 0x0

    :goto_20e
    if-ge v9, v13, :cond_218

    int-to-float v15, v9

    mul-float/2addr v15, v12

    mul-float/2addr v15, v14

    aput v15, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_20e

    :cond_218
    aput v10, v1, v13

    move-object v12, v1

    :cond_21b
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/SweepGradient;

    invoke-direct {v9, v2, v8, v11, v12}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_225
    :goto_225
    iget-object v1, v5, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_230

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_230
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    return v1

    nop

    :pswitch_data_23a
    .packed-switch 0x1
        :pswitch_f9  #00000001
        :pswitch_e6  #00000002
        :pswitch_d5  #00000003
        :pswitch_c2  #00000004
        :pswitch_b1  #00000005
        :pswitch_9e  #00000006
        :pswitch_8c  #00000007
    .end packed-switch
.end method

.method private static getFloatOrFraction(Landroid/content/res/TypedArray;IF)F
    .registers 7

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    move v1, p2

    if-eqz v0, :cond_1d

    iget v2, v0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_18

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v0, v3, v3}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    :goto_1c
    move v1, v3

    :cond_1d
    return v1
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :goto_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    if-eq v2, v1, :cond_bf

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move v4, v2

    if-ge v2, v0, :cond_17

    const/4 v2, 0x3

    if-eq v3, v2, :cond_bf

    :cond_17
    const/4 v2, 0x2

    if-eq v3, v2, :cond_1b

    goto :goto_6

    :cond_1b
    if-le v4, v0, :cond_1e

    goto :goto_6

    :cond_1e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "size"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSize:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSize(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_bd

    :cond_39
    const-string v5, "gradient"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableGradient:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bd

    :cond_4e
    const-string/jumbo v5, "solid"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableSolid:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bd

    :cond_64
    const-string/jumbo v5, "stroke"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawableStroke:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bd

    :cond_7a
    const-string v5, "corners"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    sget-object v5, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateDrawableCorners(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bd

    :cond_8f
    const-string/jumbo v5, "padding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a5

    sget-object v5, Lcom/android/internal/R$styleable;->GradientDrawablePadding:[I

    invoke-static {p1, p4, p3, v5}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_bd

    :cond_a5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad element under <shape>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_bd
    goto/16 :goto_6

    :cond_bf
    return-void
.end method

.method static isOpaque(I)Z
    .registers 3

    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isOpaqueForState()Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v1, 0x0

    if-ltz v0, :cond_16

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v0

    if-nez v0, :cond_29

    return v1

    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method private modulateAlpha(I)I
    .registers 4

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    mul-int v1, p1, v0

    shr-int/lit8 v1, v1, 0x8

    return v1
.end method

.method private setStrokeInternal(IIFF)V
    .registers 11

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_11

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_11
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    cmpl-float v3, p3, v2

    if-lez v3, :cond_30

    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p3, v4, v5

    aput p4, v4, v1

    invoke-direct {v3, v4, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    move-object v0, v3

    :cond_30
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method private updateDrawableCorners(Landroid/content/res/TypedArray;)V
    .registers 15

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {p1, v9, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    if-ne v4, v1, :cond_39

    if-ne v6, v1, :cond_39

    if-ne v8, v1, :cond_39

    if-eq v10, v1, :cond_5b

    :cond_39
    const/16 v11, 0x8

    new-array v11, v11, [F

    int-to-float v12, v4

    aput v12, v11, v2

    int-to-float v2, v4

    aput v2, v11, v3

    int-to-float v2, v6

    aput v2, v11, v5

    int-to-float v2, v6

    aput v2, v11, v7

    int-to-float v2, v10

    aput v2, v11, v9

    const/4 v2, 0x5

    int-to-float v3, v10

    aput v3, v11, v2

    const/4 v2, 0x6

    int-to-float v3, v8

    aput v3, v11, v2

    const/4 v2, 0x7

    int-to-float v3, v8

    aput v3, v11, v2

    invoke-virtual {p0, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_5b
    return-void
.end method

.method private updateGradientDrawableGradient(Landroid/content/res/Resources;Landroid/content/res/TypedArray;)V
    .registers 22

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/4 v4, 0x5

    invoke-static {v0, v4, v3}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    const/4 v5, 0x6

    invoke-static {v0, v5, v3}, Landroid/graphics/drawable/GradientDrawable;->getFloatOrFraction(Landroid/content/res/TypedArray;IF)F

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iget-boolean v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iget v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v7, 0x4

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    iget-object v12, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v12, :cond_4f

    move v12, v10

    goto :goto_50

    :cond_4f
    move v12, v3

    :goto_50
    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->hasCenterColor()Z

    move-result v13

    if-eqz v7, :cond_5b

    invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    goto :goto_5c

    :cond_5b
    move v14, v3

    :goto_5c
    if-eqz v9, :cond_63

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    goto :goto_64

    :cond_63
    move v15, v3

    :goto_64
    if-eqz v11, :cond_6b

    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    goto :goto_6d

    :cond_6b
    move/from16 v16, v3

    :goto_6d
    if-eqz v12, :cond_7d

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v3

    if-eqz v4, :cond_7d

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v14

    :cond_7d
    if-eqz v13, :cond_8d

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v10

    if-eqz v4, :cond_8d

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v15

    :cond_8d
    if-eqz v13, :cond_9e

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v6

    if-eqz v4, :cond_9e

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    goto :goto_ae

    :cond_9e
    if-eqz v12, :cond_ae

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v10

    if-eqz v4, :cond_ae

    iget-object v4, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v16

    :cond_ae
    :goto_ae
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_b9

    if-eqz v13, :cond_b7

    goto :goto_b9

    :cond_b7
    move v4, v3

    goto :goto_ba

    :cond_b9
    :goto_b9
    move v4, v10

    :goto_ba
    const/4 v5, 0x3

    if-eqz v4, :cond_10a

    new-array v8, v5, [Landroid/content/res/ColorStateList;

    iput-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_c8

    move-object/from16 v17, v7

    goto :goto_cc

    :cond_c8
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    :goto_cc
    aput-object v17, v8, v3

    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v9, :cond_d5

    move-object/from16 v17, v9

    goto :goto_d9

    :cond_d5
    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    :goto_d9
    aput-object v17, v8, v10

    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_e2

    move-object/from16 v17, v11

    goto :goto_e6

    :cond_e2
    invoke-static/range {v16 .. v16}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    :goto_e6
    aput-object v17, v8, v6

    new-array v8, v5, [F

    iput-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/16 v17, 0x0

    aput v17, v8, v3

    iget-object v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    const/high16 v18, 0x3f000000  # 0.5f

    cmpl-float v5, v5, v18

    if-eqz v5, :cond_ff

    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    goto :goto_101

    :cond_ff
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    :goto_101
    aput v5, v8, v10

    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/high16 v8, 0x3f800000  # 1.0f

    aput v8, v5, v6

    goto :goto_126

    :cond_10a
    new-array v5, v6, [Landroid/content/res/ColorStateList;

    iput-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_114

    move-object v6, v7

    goto :goto_118

    :cond_114
    invoke-static {v14}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_118
    aput-object v6, v5, v3

    iget-object v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v11, :cond_120

    move-object v6, v11

    goto :goto_124

    :cond_120
    invoke-static/range {v16 .. v16}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :goto_124
    aput-object v6, v5, v10

    :goto_126
    iget v5, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    int-to-float v5, v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    float-to-int v5, v5

    sget-boolean v6, Landroid/graphics/drawable/GradientDrawable;->sWrapNegativeAngleMeasurements:Z

    if-eqz v6, :cond_13c

    rem-int/lit16 v6, v5, 0x168

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v6, v6, 0x168

    iput v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    goto :goto_140

    :cond_13c
    rem-int/lit16 v6, v5, 0x168

    iput v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    :goto_140
    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    if-ltz v6, :cond_173

    iget v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    sparse-switch v6, :sswitch_data_1b0

    goto :goto_172

    :sswitch_14a
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_172

    :sswitch_14f
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_172

    :sswitch_154
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TR_BL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_172

    :sswitch_159
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_172

    :sswitch_15e
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BR_TL:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_172

    :sswitch_163
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_172

    :sswitch_168
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_172

    :sswitch_16d
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    nop

    :goto_172
    goto :goto_177

    :cond_173
    sget-object v6, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_ORIENTATION:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v6, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_177
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    if-eqz v6, :cond_1ae

    iget v8, v6, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x6

    if-ne v8, v10, :cond_196

    const/high16 v8, 0x3f800000  # 1.0f

    invoke-virtual {v6, v8, v8}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v8

    iget v10, v6, Landroid/util/TypedValue;->data:I

    shr-int/lit8 v3, v10, 0x0

    and-int/lit8 v3, v3, 0xf

    const/4 v10, 0x1

    if-ne v3, v10, :cond_194

    const/4 v10, 0x2

    goto :goto_195

    :cond_194
    const/4 v10, 0x1

    :goto_195
    goto :goto_1aa

    :cond_196
    iget v3, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x5

    if-ne v3, v8, :cond_1a5

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v8

    const/4 v10, 0x0

    goto :goto_1aa

    :cond_1a5
    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    const/4 v10, 0x0

    :goto_1aa
    iput v8, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v10, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    :cond_1ae
    return-void

    nop

    :sswitch_data_1b0
    .sparse-switch
        0x0 -> :sswitch_16d
        0x2d -> :sswitch_168
        0x5a -> :sswitch_163
        0x87 -> :sswitch_15e
        0xb4 -> :sswitch_159
        0xe1 -> :sswitch_154
        0x10e -> :sswitch_14f
        0x13b -> :sswitch_14a
    .end sparse-switch
.end method

.method private updateGradientDrawablePadding(Landroid/content/res/TypedArray;)V
    .registers 9

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v1, :cond_1c

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    :cond_1c
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x1

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x2

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x3

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    return-void
.end method

.method private updateGradientDrawableSize(Landroid/content/res/TypedArray;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return-void
.end method

.method private updateGradientDrawableSolid(Landroid/content/res/TypedArray;)V
    .registers 5

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_1b
    return-void
.end method

.method private updateGradientDrawableStroke(Landroid/content/res/TypedArray;)V
    .registers 9

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-nez v4, :cond_2c

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    :cond_2c
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_3c

    const/4 v5, 0x3

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    invoke-virtual {p0, v2, v4, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    goto :goto_3f

    :cond_3c
    invoke-virtual {p0, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    :goto_3f
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .registers 9

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_28

    :cond_17
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_28

    :cond_21
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_28
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    const/4 v3, 0x1

    if-ltz v1, :cond_74

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_58
    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_74

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    aput v6, v5, v2

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    aput v2, v5, v3

    invoke-direct {v1, v5, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_74
    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v1, v2, v4}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iput-boolean v3, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->-$$Nest$mcomputeOpacity(Landroid/graphics/drawable/GradientDrawable$GradientState;)V

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 10

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iget-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_5e

    const/4 v1, 0x7

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-ne v1, v3, :cond_3e

    const/4 v1, 0x4

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    :cond_3e
    const/16 v1, 0x8

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iget v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-ne v1, v3, :cond_55

    const/4 v1, 0x5

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    :cond_55
    const/4 v1, 0x6

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    :cond_5e
    const/16 v1, 0x9

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    if-eq v1, v3, :cond_6e

    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    :cond_6e
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_77

    iput-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    :cond_77
    const/16 v3, 0xa

    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->left:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/16 v4, 0xb

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/16 v5, 0xc

    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v6, v6, Landroid/graphics/Insets;->right:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/16 v6, 0xd

    iget-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v7

    iput-object v7, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-nez v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-eqz v1, :cond_26

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    sget-object v2, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_26
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    :cond_3a
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4e

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    :cond_4e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_62

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    :cond_62
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_8b

    const/4 v1, 0x0

    :goto_67
    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v2, v2

    if-ge v1, v2, :cond_8b

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_88

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_88

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_8b
    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->applyThemeChildElements(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public clearMutated()V
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    move v9, v1

    invoke-direct {v0, v8}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v10

    invoke-direct {v0, v9}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v1, 0x1

    if-lez v11, :cond_37

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpl-float v3, v3, v12

    if-lez v3, :cond_37

    move v3, v1

    goto :goto_38

    :cond_37
    move v3, v2

    :goto_38
    move v13, v3

    if-lez v10, :cond_3d

    move v3, v1

    goto :goto_3e

    :cond_3d
    move v3, v2

    :goto_3e
    move v14, v3

    iget-object v15, v0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v3, :cond_46

    goto :goto_48

    :cond_46
    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    :goto_48
    move-object v6, v3

    if-eqz v13, :cond_5d

    if-eqz v14, :cond_5d

    iget v3, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5d

    const/16 v3, 0xff

    if-ge v11, v3, :cond_5d

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-lt v4, v3, :cond_5c

    if-eqz v6, :cond_5d

    :cond_5c
    move v2, v1

    :cond_5d
    move/from16 v16, v2

    if-eqz v16, :cond_b5

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_6c

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    :cond_6c
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float v4, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float v5, v1, v17

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move-object v12, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_e9

    :cond_b5
    move-object v12, v6

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz v12, :cond_d6

    iget-object v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_d6

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    iget v2, v0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_d6
    if-eqz v13, :cond_e9

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget-boolean v2, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_e9
    :goto_e9
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    packed-switch v1, :pswitch_data_1b4

    goto/16 :goto_1a1

    :pswitch_f0  #0x3
    invoke-direct {v0, v15}, Landroid/graphics/drawable/GradientDrawable;->buildRing(Landroid/graphics/drawable/GradientDrawable$GradientState;)Landroid/graphics/Path;

    move-result-object v1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_1a1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1a1

    :pswitch_102  #0x2
    iget-object v6, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v17

    if-eqz v13, :cond_121

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v4, v6, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v3, v17

    move-object/from16 v18, v5

    move/from16 v5, v17

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1a1

    :cond_121
    move-object/from16 v19, v6

    goto/16 :goto_1a1

    :pswitch_125  #0x1
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_1a1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1a1

    :pswitch_136  #0x0
    iget-object v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v1, :cond_14e

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v13, :cond_1a1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1a1

    :cond_14e
    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17f

    iget v1, v15, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f000000  # 0.5f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v13, :cond_17e

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v3, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_17e
    goto :goto_1a1

    :cond_17f
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-nez v1, :cond_191

    if-nez v12, :cond_191

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-eqz v1, :cond_198

    :cond_191
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_198
    if-eqz v13, :cond_1a1

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mRect:Landroid/graphics/RectF;

    iget-object v2, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_1a1
    :goto_1a1
    if-eqz v16, :cond_1a7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1b3

    :cond_1a7
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    if-eqz v13, :cond_1b3

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1b3
    :goto_1b3
    return-void

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_136  #00000000
        :pswitch_125  #00000001
        :pswitch_102  #00000002
        :pswitch_f0  #00000003
    .end packed-switch
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getColors()[I
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    array-length v2, v2

    if-ge v1, v2, :cond_2e

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2b

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[Landroid/content/res/ColorStateList;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    aput v2, v0, v1

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2e
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    return-object v0
.end method

.method public getCornerRadii()[F
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    return-object v1
.end method

.method public getCornerRadius()F
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    return v0
.end method

.method public getGradientCenterX()F
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method public getGradientCenterY()F
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method public getGradientRadius()F
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x0

    return v0

    :cond_9
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->ensureValidRect()Z

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientRadius:F

    return v0
.end method

.method public getGradientType()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return v0
.end method

.method public getInnerRadius()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    return v0
.end method

.method public getInnerRadiusRatio()F
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 3

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    if-eqz v0, :cond_14

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->isOpaqueForState()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, -0x1

    goto :goto_15

    :cond_14
    const/4 v0, -0x3

    :goto_15
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public getOrientation()Landroid/graphics/drawable/GradientDrawable$Orientation;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 11

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-boolean v2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v2, v2, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v2, :cond_20

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    if-ne v2, v3, :cond_22

    :cond_20
    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    const/4 v3, 0x0

    if-eqz v2, :cond_35

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/GradientDrawable;->modulateAlpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000  # 255.0f

    div-float/2addr v4, v5

    goto :goto_36

    :cond_35
    move v4, v3

    :goto_36
    invoke-virtual {p1, v4}, Landroid/graphics/Outline;->setAlpha(F)V

    iget v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    const/high16 v5, 0x3f000000  # 0.5f

    packed-switch v4, :pswitch_data_9c

    return-void

    :pswitch_41  #0x2
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-nez v3, :cond_49

    const v3, 0x38d1b717  # 1.0E-4f

    goto :goto_4e

    :cond_49
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float/2addr v3, v5

    :goto_4e
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v4, v3

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-float v6, v4, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v7, v5, v8, v6}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void

    :pswitch_6b  #0x1
    invoke-virtual {p1, v1}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    return-void

    :pswitch_6f  #0x0
    iget-object v4, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v4, :cond_7c

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;->buildPathIfDirty()V

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void

    :cond_7c
    const/4 v4, 0x0

    iget v6, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_97

    iget v3, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_97
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_6f  #00000000
        :pswitch_6b  #00000001
        :pswitch_41  #00000002
    .end packed-switch
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_9

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getShape()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    return v0
.end method

.method public getThickness()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    return v0
.end method

.method public getThicknessRatio()F
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    return v0
.end method

.method public getUseLevel()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_e
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_1a
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_28

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->hasFocusStateSpecified()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_26
    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setDensity(I)V

    sget-object v0, Lcom/android/internal/R$styleable;->GradientDrawable:[I

    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/GradientDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isStateful()Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_14
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_20

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_20
    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2d

    iget-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v1, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v1, 0x1

    :goto_30
    return v1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    if-nez v0, :cond_1a

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1a

    new-instance v0, Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mMutated:Z

    :cond_1a
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 10

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v2, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    invoke-virtual {v2, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    if-eq v5, v4, :cond_1a

    iget-object v6, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    :cond_1a
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable;->mStrokePaint:Landroid/graphics/Paint;

    if-eqz v4, :cond_30

    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_30

    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eq v7, v6, :cond_30

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    :cond_30
    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_45

    iget-object v5, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz v5, :cond_45

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v6, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v7, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v5

    iput-object v5, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    const/4 v0, 0x1

    :cond_45
    if-eqz v0, :cond_4c

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    const/4 v3, 0x1

    return v3

    :cond_4c
    return v3
.end method

.method public setAlpha(I)V
    .registers 3

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setAntiAlias(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public setColor(I)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_7

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1c

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSolidColors(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :goto_1c
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_9
    return-void
.end method

.method public setColors([I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I[F)V

    return-void
.end method

.method public setColors([I[F)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p2, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadii([F)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadii([F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setCornerRadius(F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setDither(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-boolean v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    :cond_d
    return-void
.end method

.method public setGradientCenter(FF)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientCenter(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGradientRadius(F)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientRadius(FI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGradientType(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setInnerRadius(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setInnerRadiusRatio(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ratio must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setPadding(IIII)V
    .registers 7

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v0, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setShape(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mRingPath:Landroid/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setShape(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setSize(II)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStroke(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    return-void
.end method

.method public setStroke(IIFF)V
    .registers 7

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .registers 7

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setStroke(ILandroid/content/res/ColorStateList;FF)V

    if-nez p2, :cond_9

    const/4 v0, 0x0

    goto :goto_13

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    move v0, v1

    :goto_13
    invoke-direct {p0, p1, v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStrokeInternal(IIFF)V

    return-void
.end method

.method public setThickness(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setThicknessRatio(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_10

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mPathIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ratio must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-object p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iget-object v1, v1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-virtual {p0, v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setUseLevel(Z)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientState:Landroid/graphics/drawable/GradientDrawable$GradientState;

    iput-boolean p1, v0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable;->mGradientIsDirty:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method
