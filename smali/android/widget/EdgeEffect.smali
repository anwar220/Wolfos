# classes4.dex

.class public Landroid/widget/EdgeEffect;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EdgeEffect$EdgeEffectType;
    }
.end annotation


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final DAMPING_RATIO:D = 0.98

.field public static final DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

.field private static final EPSILON:F = 0.001f

.field private static final EXP_STRETCH_INTENSITY:F = 0.016f

.field private static final GLOW_ALPHA_START:F = 0.09f

.field private static final LINEAR_DISTANCE_TAKE_OVER:D = 8.0

.field private static final LINEAR_STRETCH_INTENSITY:F = 0.016f

.field private static final LINEAR_VELOCITY_TAKE_OVER:F = 200.0f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final NATURAL_FREQUENCY:D = 24.657

.field private static final ON_ABSORB_VELOCITY_ADJUSTMENT:F = 13.0f

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RADIUS_FACTOR:F = 0.6f

.field private static final RECEDE_TIME:I = 0x258

.field private static final SCROLL_DIST_AFFECTED_BY_EXP_STRETCH:F = 0.33f

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final TYPE_GLOW:I = 0x0

.field private static final TYPE_NONE:I = -0x1

.field private static final TYPE_STRETCH:I = 0x1

.field public static final USE_STRETCH_EDGE_EFFECT_BY_DEFAULT:J = 0xa34bbc0L

.field private static final VALUE_THRESHOLD:D = 0.001

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6

.field private static final VELOCITY_THRESHOLD:D = 0.01


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDistance:F

.field private mDuration:F

.field private mEdgeEffectType:I

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpPoints:[F

.field private mVelocity:F

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    sput-object v0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    const-wide v0, 0x3fe0c152382d7365L  # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/widget/EdgeEffect;->SIN:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/widget/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000  # 0.5f

    iput v2, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iput v2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    iput-object v2, p0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    sget-object v2, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v3, -0x99999a

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const-wide/32 v4, 0xa34bbc0

    invoke-static {v4, v5}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_41

    move v0, v5

    goto :goto_42

    :cond_41
    nop

    :goto_42
    iput v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v0, 0xffffff

    and-int/2addr v0, v3

    const/high16 v4, 0x33000000

    or-int/2addr v0, v4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/widget/EdgeEffect;->DEFAULT_BLEND_MODE:Landroid/graphics/BlendMode;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method private calculateDistanceFromGlowValues(FF)F
    .registers 6

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_7

    return v0

    :cond_7
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1e

    const v1, 0x3fb6db6e

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    mul-float v0, v1, v1

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    return v0

    :cond_1e
    const v0, 0x3f4ccccd  # 0.8f

    div-float v0, p2, v0

    return v0
.end method

.method private dampStretchVector(F)F
    .registers 13

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_a

    :cond_8
    const/high16 v0, -0x40800000  # -1.0f

    :goto_a
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c83126f  # 0.016f

    mul-float/2addr v2, v1

    const-wide v3, 0x402079748cecfc47L  # 8.237217334679498

    const-wide v5, 0x3f90624de0000000L  # 0.01600000075995922

    const-wide/high16 v7, 0x3ff0000000000000L  # 1.0

    neg-float v9, v1

    float-to-double v9, v9

    mul-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double/2addr v7, v5

    float-to-double v5, v2

    add-double/2addr v5, v7

    double-to-float v5, v5

    mul-float/2addr v5, v0

    return v5
.end method

.method private getCurrentEdgeEffectBehavior()I
    .registers 2

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget v0, p0, Landroid/widget/EdgeEffect;->mEdgeEffectType:I

    return v0
.end method

.method private isAtEquilibrium()Z
    .registers 9

    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_28

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL  # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_26

    const-wide v4, 0x3f50624dd2f1a9fcL  # 0.001

    cmpg-double v4, v0, v4

    if-gez v4, :cond_26

    goto :goto_28

    :cond_26
    const/4 v4, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v4, 0x1

    :goto_29
    return v4
.end method

.method private max(FFFF)F
    .registers 7

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private min(FFFF)F
    .registers 7

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private update()V
    .registers 9

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Landroid/widget/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    sub-float/2addr v6, v5

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iget v6, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_35

    invoke-direct {p0, v5, v4}, Landroid/widget/EdgeEffect;->calculateDistanceFromGlowValues(FF)F

    move-result v4

    iput v4, p0, Landroid/widget/EdgeEffect;->mDistance:F

    :cond_35
    iget v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    iget v5, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Landroid/widget/EdgeEffect;->mDisplacement:F

    const v4, 0x3f7fbe77  # 0.999f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_87

    iget v4, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_88

    goto :goto_87

    :pswitch_4e  #0x4
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_87

    :pswitch_51  #0x3
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    goto :goto_87

    :pswitch_55  #0x2
    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44160000  # 600.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_87

    :pswitch_6e  #0x1
    const/4 v4, 0x4

    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44fa0000  # 2000.0f

    iput v4, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    :cond_87
    :goto_87
    return-void

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_6e  #00000001
        :pswitch_55  #00000002
        :pswitch_51  #00000003
        :pswitch_4e  #00000004
    .end packed-switch
.end method

.method private updateSpring()V
    .registers 24

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000  # 1000.0f

    div-float/2addr v3, v4

    const v4, 0x3a83126f  # 0.001f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_16

    return-void

    :cond_16
    iput-wide v1, v0, Landroid/widget/EdgeEffect;->mStartTime:J

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x43480000  # 200.0f

    cmpg-float v4, v4, v5

    const/4 v6, 0x0

    if-gtz v4, :cond_6c

    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v7, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    const-wide/high16 v9, 0x4020000000000000L  # 8.0

    cmpg-double v4, v7, v9

    if-gez v4, :cond_6c

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    neg-float v7, v7

    cmpl-float v4, v4, v7

    if-nez v4, :cond_6c

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v4, v5

    iput v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    iget v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v4, v3

    iget v7, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v4, v7

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v7, v0, Landroid/widget/EdgeEffect;->mDistance:F

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_69

    iput v6, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v6, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_6b

    :cond_69
    iput v5, v0, Landroid/widget/EdgeEffect;->mDistance:F

    :goto_6b
    return-void

    :cond_6c
    const-wide v4, 0x4038a83126e978d5L  # 24.657

    const-wide v7, 0x3fa4467381d7dc00L  # 0.03960000000000008

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v4

    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iget v5, v0, Landroid/widget/EdgeEffect;->mHeight:F

    mul-float v9, v4, v5

    float-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    div-double/2addr v11, v7

    const-wide v13, 0x403829f2ba9d1f60L  # 24.16386

    move-wide v15, v7

    float-to-double v6, v4

    mul-double/2addr v6, v13

    float-to-double v4, v5

    mul-double/2addr v6, v4

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    float-to-double v4, v4

    add-double/2addr v6, v4

    mul-double/2addr v11, v6

    float-to-double v4, v3

    const-wide v6, -0x3fc7d60d4562e0a0L  # -24.16386

    mul-double/2addr v4, v6

    const-wide v13, 0x4005bf0a8b145769L  # Math.E

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v13, v3

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    float-to-double v6, v3

    mul-double v7, v15, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v11

    add-double/2addr v13, v6

    mul-double/2addr v4, v13

    const-wide v6, -0x3fc757ced916872bL  # -24.657

    mul-double/2addr v6, v4

    const-wide v13, 0x3fef5c28f5c28f5cL  # 0.98

    mul-double/2addr v6, v13

    float-to-double v13, v3

    const-wide v19, -0x3fc7d60d4562e0a0L  # -24.16386

    mul-double v13, v13, v19

    move-wide/from16 v19, v1

    const-wide v1, 0x4005bf0a8b145769L  # Math.E

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    move-wide v13, v15

    move-wide v15, v4

    neg-double v4, v13

    mul-double/2addr v4, v9

    move-wide/from16 v17, v9

    float-to-double v8, v3

    mul-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    mul-double v8, v13, v11

    move-wide/from16 v21, v11

    float-to-double v10, v3

    mul-double/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    mul-double/2addr v1, v4

    add-double/2addr v6, v1

    move-wide v4, v15

    double-to-float v1, v4

    iget v2, v0, Landroid/widget/EdgeEffect;->mHeight:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    double-to-float v2, v6

    iput v2, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_105

    iput v2, v0, Landroid/widget/EdgeEffect;->mDistance:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    goto :goto_106

    :cond_105
    const/4 v1, 0x0

    :goto_106
    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->isAtEquilibrium()Z

    move-result v2

    if-eqz v2, :cond_110

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    :cond_110
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v2

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v2, :cond_6c

    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->update()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, v0, Landroid/widget/EdgeEffect;->mRadius:F

    sub-float/2addr v10, v11

    iget v11, v0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iget v12, v0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v11, v12

    invoke-virtual {v1, v4, v11, v9, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v11, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v11, 0x3f000000  # 0.5f

    sub-float/2addr v4, v11

    iget-object v11, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    const/high16 v12, 0x40000000  # 2.0f

    div-float/2addr v11, v12

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v1, v11, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v12, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x437f0000  # 255.0f

    iget v14, v0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    mul-float/2addr v14, v13

    float-to-int v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v12, v0, Landroid/widget/EdgeEffect;->mRadius:F

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v10, v12, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move v1, v7

    goto/16 :goto_194

    :cond_6c
    if-ne v2, v5, :cond_18c

    instance-of v8, v1, Landroid/graphics/RecordingCanvas;

    if-eqz v8, :cond_18c

    iget v8, v0, Landroid/widget/EdgeEffect;->mState:I

    if-ne v8, v3, :cond_79

    invoke-direct/range {p0 .. p0}, Landroid/widget/EdgeEffect;->updateSpring()V

    :cond_79
    iget v8, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v8, v8, v7

    if-eqz v8, :cond_18a

    move-object v8, v1

    check-cast v8, Landroid/graphics/RecordingCanvas;

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    if-nez v9, :cond_93

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v9, 0xc

    new-array v9, v9, [F

    iput-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    :cond_93
    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v9}, Landroid/graphics/RecordingCanvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v9, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aput v7, v9, v6

    aput v7, v9, v5

    iget v10, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/4 v11, 0x2

    aput v10, v9, v11

    aput v7, v9, v3

    const/4 v12, 0x4

    aput v10, v9, v12

    iget v13, v0, Landroid/widget/EdgeEffect;->mHeight:F

    const/4 v14, 0x5

    aput v13, v9, v14

    const/4 v15, 0x6

    aput v7, v9, v15

    const/16 v16, 0x7

    aput v13, v9, v16

    iget v4, v0, Landroid/widget/EdgeEffect;->mDisplacement:F

    mul-float v18, v10, v4

    const/16 v19, 0x8

    aput v18, v9, v19

    const/16 v18, 0x9

    aput v7, v9, v18

    mul-float/2addr v10, v4

    const/16 v4, 0xa

    aput v10, v9, v4

    iget v10, v0, Landroid/widget/EdgeEffect;->mDistance:F

    mul-float/2addr v13, v10

    const/16 v10, 0xb

    aput v13, v9, v10

    iget-object v13, v0, Landroid/widget/EdgeEffect;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v9}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v9, v8, Landroid/graphics/RecordingCanvas;->mNode:Landroid/graphics/RenderNode;

    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v13

    int-to-float v13, v13

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v7, v6

    aget v4, v7, v11

    aget v11, v7, v12

    aget v7, v7, v15

    invoke-direct {v0, v10, v4, v11, v7}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v4

    add-float/2addr v13, v4

    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v7, v5

    aget v11, v7, v3

    aget v3, v7, v14

    aget v7, v7, v16

    invoke-direct {v0, v10, v11, v3, v7}, Landroid/widget/EdgeEffect;->min(FFFF)F

    move-result v3

    add-float/2addr v4, v3

    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v7, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v10, v7, v6

    const/4 v11, 0x2

    aget v11, v7, v11

    aget v12, v7, v12

    aget v7, v7, v15

    invoke-direct {v0, v10, v11, v12, v7}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v7

    add-float/2addr v3, v7

    invoke-virtual {v9}, Landroid/graphics/RenderNode;->getTop()I

    move-result v7

    int-to-float v7, v7

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    aget v11, v10, v5

    const/4 v12, 0x3

    aget v15, v10, v12

    aget v12, v10, v14

    aget v10, v10, v16

    invoke-direct {v0, v11, v15, v12, v10}, Landroid/widget/EdgeEffect;->max(FFFF)F

    move-result v10

    add-float/2addr v7, v10

    iget-object v10, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v11, 0xa

    aget v11, v10, v11

    aget v10, v10, v19

    sub-float/2addr v11, v10

    sub-float v10, v3, v13

    div-float v12, v11, v10

    const/high16 v14, 0x3f800000  # 1.0f

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v14, -0x40800000  # -1.0f

    invoke-static {v14, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-direct {v0, v12}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v12

    iget-object v15, v0, Landroid/widget/EdgeEffect;->mTmpPoints:[F

    const/16 v16, 0xb

    aget v16, v15, v16

    aget v15, v15, v18

    sub-float v16, v16, v15

    sub-float v15, v7, v4

    div-float v5, v16, v15

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-direct {v0, v5}, Landroid/widget/EdgeEffect;->dampStretchVector(F)F

    move-result v5

    invoke-static {v12}, Ljava/lang/Float;->isFinite(F)Z

    move-result v6

    if-eqz v6, :cond_16c

    invoke-static {v5}, Ljava/lang/Float;->isFinite(F)Z

    move-result v6

    if-eqz v6, :cond_16c

    const/4 v6, 0x1

    goto :goto_16d

    :cond_16c
    const/4 v6, 0x0

    :goto_16d
    cmpl-float v14, v3, v13

    if-lez v14, :cond_188

    cmpl-float v14, v7, v4

    if-lez v14, :cond_188

    iget v14, v0, Landroid/widget/EdgeEffect;->mWidth:F

    const/16 v17, 0x0

    cmpl-float v20, v14, v17

    if-lez v20, :cond_188

    iget v1, v0, Landroid/widget/EdgeEffect;->mHeight:F

    cmpl-float v21, v1, v17

    if-lez v21, :cond_188

    if-eqz v6, :cond_188

    invoke-virtual {v9, v12, v5, v14, v1}, Landroid/graphics/RenderNode;->stretch(FFFF)Z

    :cond_188
    const/4 v1, 0x0

    goto :goto_194

    :cond_18a
    const/4 v1, 0x0

    goto :goto_194

    :cond_18c
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v1, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    :goto_194
    const/4 v3, 0x0

    iget v4, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1ab

    iget v4, v0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1ab

    iget v4, v0, Landroid/widget/EdgeEffect;->mVelocity:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_1ab

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v3, 0x1

    goto :goto_1ac

    :cond_1ab
    const/4 v1, 0x0

    :goto_1ac
    iget v4, v0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v4, :cond_1b5

    if-eqz v3, :cond_1b3

    goto :goto_1b5

    :cond_1b3
    move v5, v1

    goto :goto_1b6

    :cond_1b5
    :goto_1b5
    const/4 v5, 0x1

    :goto_1b6
    return v5
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    return-void
.end method

.method public getBlendMode()Landroid/graphics/BlendMode;
    .registers 2

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getBlendMode()Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .registers 2

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDistance()F
    .registers 2

    iget v0, p0, Landroid/widget/EdgeEffect;->mDistance:F

    return v0
.end method

.method public getMaxHeight()I
    .registers 2

    iget v0, p0, Landroid/widget/EdgeEffect;->mHeight:F

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .registers 2

    iget v0, p0, Landroid/widget/EdgeEffect;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onAbsorb(I)V
    .registers 7

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    int-to-float v1, p1

    const/high16 v2, 0x41500000  # 13.0f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    goto :goto_7f

    :cond_17
    if-nez v0, :cond_7c

    const/4 v1, 0x2

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    int-to-float v2, p1

    const v3, 0x3ca3d70a  # 0.02f

    mul-float/2addr v2, v3

    const v3, 0x3e19999a  # 0.15f

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/EdgeEffect;->mDuration:F

    const v2, 0x3db851ec  # 0.09f

    iput v2, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v2, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    const v1, 0x3ccccccd  # 0.025f

    div-int/lit8 v2, p1, 0x64

    mul-int/2addr v2, p1

    int-to-float v2, v2

    const v4, 0x391d4952  # 1.5E-4f

    mul-float/2addr v2, v4

    const/high16 v4, 0x40000000  # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v2, p1, 0x6

    int-to-float v2, v2

    const v4, 0x3727c5ac  # 1.0E-5f

    mul-float/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    const/high16 v1, 0x3f000000  # 0.5f

    iput v1, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    goto :goto_7f

    :cond_7c
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    :goto_7f
    return-void
.end method

.method public onPull(F)V
    .registers 3

    const/high16 v0, 0x3f000000  # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .registers 15

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void

    :cond_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput p2, p0, Landroid/widget/EdgeEffect;->mTargetDisplacement:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_24

    iget-wide v4, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    sub-long v4, v1, v4

    long-to-float v4, v4

    iget v5, p0, Landroid/widget/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_24

    if-nez v0, :cond_24

    return-void

    :cond_24
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_37

    if-ne v0, v4, :cond_2f

    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    goto :goto_37

    :cond_2f
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :cond_37
    :goto_37
    iput v4, p0, Landroid/widget/EdgeEffect;->mState:I

    iput-wide v1, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v3, 0x43270000  # 167.0f

    iput v3, p0, Landroid/widget/EdgeEffect;->mDuration:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    add-float/2addr v3, p1

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    if-ne v0, v4, :cond_4e

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    :cond_4e
    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_67

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    goto :goto_ac

    :cond_67
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v6, 0x3e19999a  # 0.15f

    iget v7, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const v8, 0x3f4ccccd  # 0.8f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    const-wide/16 v6, 0x0

    iget v8, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L  # 1.0

    div-double v8, v10, v8

    sub-double/2addr v10, v8

    const-wide v8, 0x3fd3333333333333L  # 0.3

    sub-double/2addr v10, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    const-wide v8, 0x3fe6666666666666L  # 0.7

    div-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    :goto_ac
    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iget v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v3, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    if-ne v0, v4, :cond_bf

    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_bf

    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/EdgeEffect;->mState:I

    :cond_bf
    return-void
.end method

.method public onPullDistance(FF)F
    .registers 10

    invoke-direct {p0}, Landroid/widget/EdgeEffect;->getCurrentEdgeEffectBehavior()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    iget v2, p0, Landroid/widget/EdgeEffect;->mDistance:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Landroid/widget/EdgeEffect;->mDistance:F

    sub-float v4, v2, v3

    cmpl-float v5, v4, v1

    if-nez v5, :cond_1d

    cmpl-float v5, v3, v1

    if-nez v5, :cond_1d

    return v1

    :cond_1d
    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2b

    const/4 v6, 0x4

    if-eq v1, v6, :cond_2b

    if-nez v0, :cond_2b

    iput v3, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    iput v5, p0, Landroid/widget/EdgeEffect;->mState:I

    :cond_2b
    invoke-virtual {p0, v4, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    return v4
.end method

.method public onRelease()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EdgeEffect;->mPullDistance:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    return-void

    :cond_c
    const/4 v1, 0x3

    iput v1, p0, Landroid/widget/EdgeEffect;->mState:I

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowAlpha:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowAlphaStart:F

    iget v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleY:F

    iput v1, p0, Landroid/widget/EdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowAlphaFinish:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mGlowScaleYFinish:F

    iput v0, p0, Landroid/widget/EdgeEffect;->mVelocity:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000  # 600.0f

    iput v0, p0, Landroid/widget/EdgeEffect;->mDuration:F

    return-void
.end method

.method public setBlendMode(Landroid/graphics/BlendMode;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    return-void
.end method

.method public setColor(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/EdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .registers 13

    int-to-float v0, p1

    const v1, 0x3f19999a  # 0.6f

    mul-float/2addr v0, v1

    sget v2, Landroid/widget/EdgeEffect;->SIN:F

    div-float/2addr v0, v2

    sget v3, Landroid/widget/EdgeEffect;->COS:F

    mul-float v4, v3, v0

    sub-float v5, v0, v4

    int-to-float v6, p2

    mul-float/2addr v6, v1

    div-float/2addr v6, v2

    mul-float/2addr v3, v6

    sub-float v1, v6, v3

    iput v0, p0, Landroid/widget/EdgeEffect;->mRadius:F

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    const/high16 v7, 0x3f800000  # 1.0f

    if-lez v2, :cond_23

    div-float v2, v1, v5

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :cond_23
    iput v7, p0, Landroid/widget/EdgeEffect;->mBaseGlowScale:F

    iget-object v2, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v2, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float v2, p1

    iput v2, p0, Landroid/widget/EdgeEffect;->mWidth:F

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/EdgeEffect;->mHeight:F

    return-void
.end method
