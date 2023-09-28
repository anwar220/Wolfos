# classes2.dex

.class final Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;,
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;,
        Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;
    }
.end annotation


# static fields
.field private static final ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ANIMATION_DURATION_FADE:I = 0x1c2

.field private static final ANIMATION_DURATION_SCALE:I = 0x15e

.field private static final GLOW_MAX_ALPHA:F = 0.2f

.field private static final GLOW_MAX_ALPHA_DARK:F = 0.1f

.field private static final GLOW_MAX_SCALE_FACTOR:F = 1.35f


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mDark:Z

.field private mDelayTouchFeedback:Z

.field private mDrawingHardwareGlow:Z

.field private final mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

.field private final mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

.field private mGlowAlpha:F

.field private mGlowScale:F

.field private final mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastDark:Z

.field private mLeftProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWidth:I

.field private final mMaxWidthResource:I

.field private mPaintProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPressed:Z

.field private mRightProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRipplePaint:Landroid/graphics/Paint;

.field private final mRunningAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mRxProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRyProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportHardware:Z

.field private final mTargetView:Landroid/view/View;

.field private final mTmpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTopProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

.field private mVisible:Z


# direct methods
.method public static synthetic $r8$lambda$Ee27N8smRxefnItEwNTnIuXwHH4(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZM5sHYY-2vKKnzFvDd_z92_ymM8(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 1

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPressed(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDrawingHardwareGlow(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVisible(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3f4ccccd  # 0.8f

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$LogInterpolator-IA;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "exitHardware"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    const-string v1, "enterHardware"

    invoke-direct {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    sget-object v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    new-instance v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    iput p3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidthResource:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    iput-object p2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    return-void
.end method

.method private drawHardware(Landroid/graphics/RecordingCanvas;)V
    .registers 12

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    if-ne v0, v1, :cond_1d

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    iget-object v7, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    iget-object v8, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    iget-object v9, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/RecordingCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    goto :goto_5f

    :cond_1d
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    int-to-float v4, v2

    mul-float/2addr v4, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v4, v3

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    iget-object v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/RecordingCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private drawSoftware(Landroid/graphics/Canvas;)V
    .registers 22

    move-object/from16 v0, p0

    iget v1, v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8b

    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v3, 0x437f0000  # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v14, v2

    invoke-virtual/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v15, v2

    cmpl-float v2, v14, v15

    if-lez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    move/from16 v16, v2

    invoke-direct/range {p0 .. p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    mul-float v17, v2, v3

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float v18, v17, v2

    mul-float v13, v14, v2

    mul-float v12, v15, v2

    if-eqz v16, :cond_47

    move/from16 v2, v18

    goto :goto_48

    :cond_47
    move v2, v13

    :goto_48
    move v11, v2

    if-eqz v16, :cond_4d

    move v2, v12

    goto :goto_4f

    :cond_4d
    move/from16 v2, v18

    :goto_4f
    move v10, v2

    if-eqz v16, :cond_54

    move v7, v12

    goto :goto_55

    :cond_54
    move v7, v13

    :goto_55
    iget-object v2, v0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    sget-object v3, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;->ROUNDED_RECT:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    if-ne v2, v3, :cond_6b

    sub-float v3, v13, v11

    sub-float v4, v12, v10

    add-float v5, v13, v11

    add-float v6, v12, v10

    move-object/from16 v2, p1

    move v8, v7

    move-object v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_8d

    :cond_6b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v2, p1

    invoke-virtual {v2, v13, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    neg-float v9, v3

    neg-float v4, v3

    move-object/from16 v8, p1

    move v5, v10

    move v10, v4

    move v4, v11

    move v11, v3

    move v6, v12

    move v12, v3

    move/from16 v19, v13

    move-object v13, v1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_8d

    :cond_8b
    move-object/from16 v2, p1

    :goto_8d
    return-void
.end method

.method private endAnimations(Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyButtonRipple.endAnim: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_34
    if-ge v1, v0, :cond_4a

    iget-object v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    if-eqz p2, :cond_44

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_47

    :cond_44
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_4a
    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private enterHardware()V
    .registers 10

    const-string v0, "enterHardware"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDrawingHardwareGlow:Z

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v1

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3faccccd  # 1.35f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    new-instance v3, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v6

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getExtendSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRippleSize()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    invoke-direct {v3, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v3, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mEnterHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c5

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_fc

    :cond_c5
    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    :goto_fc
    iput v4, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000  # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v1, :cond_139

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-nez v1, :cond_139

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitHardware()V

    :cond_139
    return-void
.end method

.method private enterSoftware()V
    .registers 4

    const-string v0, "enterSoftware"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    const-string v1, "glowScale"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v1, :cond_3c

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-nez v1, :cond_3c

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitSoftware()V

    :cond_3c
    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x3faccccd  # 1.35f
    .end array-data
.end method

.method private exitHardware()V
    .registers 5

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/graphics/animation/RenderNodeAnimator;

    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mExitHwTraceAnimator:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$TraceAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    return-void
.end method

.method private exitSoftware()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const-string v1, "glowAlpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->ALPHA_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1c2

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getExtendEnd()Landroid/graphics/CanvasProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_b
    return-object v0
.end method

.method private getExtendSize()I
    .registers 2

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_17
    return v0
.end method

.method private getExtendStart()Landroid/graphics/CanvasProperty;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_b
    return-object v0
.end method

.method private getMaxGlowAlpha()F
    .registers 2

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eqz v0, :cond_8

    const v0, 0x3dcccccd  # 0.1f

    goto :goto_b

    :cond_8
    const v0, 0x3e4ccccd  # 0.2f

    :goto_b
    return v0
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1c

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eqz v1, :cond_18

    const/high16 v1, -0x1000000

    goto :goto_19

    :cond_18
    const/4 v1, -0x1

    :goto_19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1c
    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getRippleSize()I
    .registers 3

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_17
    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private isHorizontal()Z
    .registers 3

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private setExtendEnd(Landroid/graphics/CanvasProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    :cond_9
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    :goto_b
    return-void
.end method

.method private setExtendStart(Landroid/graphics/CanvasProperty;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    goto :goto_b

    :cond_9
    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    :goto_b
    return-void
.end method

.method private setPressedHardware(Z)V
    .registers 6

    if-eqz p1, :cond_30

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda0;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    :cond_24
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    if-eqz v0, :cond_33

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    goto :goto_33

    :cond_2c
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterHardware()V

    goto :goto_33

    :cond_30
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitHardware()V

    :cond_33
    :goto_33
    return-void
.end method

.method private setPressedSoftware(Z)V
    .registers 6

    if-eqz p1, :cond_30

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$$ExternalSyntheticLambda1;-><init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_33

    :cond_24
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mVisible:Z

    if-eqz v0, :cond_33

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    goto :goto_33

    :cond_2c
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->enterSoftware()V

    goto :goto_33

    :cond_30
    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->exitSoftware()V

    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public abortDelayedRipple()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->drawHardware(Landroid/graphics/RecordingCanvas;)V

    goto :goto_12

    :cond_f
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->drawSoftware(Landroid/graphics/Canvas;)V

    :goto_12
    return-void
.end method

.method public getGlowAlpha()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    return v0
.end method

.method public getGlowScale()F
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 3

    const-string v0, "jumpToCurrentState"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->endAnimations(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_11

    aget v2, p1, v1

    const v3, 0x10100a7

    if-ne v2, v3, :cond_e

    const/4 v0, 0x1

    goto :goto_11

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    :goto_11
    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressed(Z)V

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mPressed:Z

    const/4 v1, 0x1

    return v1

    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 3

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDark:Z

    return-void
.end method

.method public setDelayTouchFeedback(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDelayTouchFeedback:Z

    return-void
.end method

.method public setGlowAlpha(F)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowAlpha:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    return-void
.end method

.method public setGlowScale(F)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mGlowScale:F

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    return-void
.end method

.method public setPressed(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mDark:Z

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    if-eq v0, v1, :cond_d

    if-eqz p1, :cond_d

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iput-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mLastDark:Z

    :cond_d
    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressedHardware(Z)V

    goto :goto_18

    :cond_15
    invoke-direct {p0, p1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->setPressedSoftware(Z)V

    :goto_18
    return-void
.end method

.method public setType(Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mType:Landroid/inputmethodservice/navigationbar/KeyButtonRipple$Type;

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->jumpToCurrentState()V

    :cond_9
    return v0
.end method

.method public updateResources()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidthResource:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    return-void
.end method
