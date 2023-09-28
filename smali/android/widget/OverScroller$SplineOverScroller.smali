# classes4.dex

.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrVelocity(Landroid/widget/OverScroller$SplineOverScroller;)F
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentPosition(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinal(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFinished(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStart(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartTime(Landroid/widget/OverScroller$SplineOverScroller;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 1

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFinished(Landroid/widget/OverScroller$SplineOverScroller;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 21

    const-wide v0, 0x3fe8f5c28f5c28f6L  # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL  # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_23
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000  # 1.0f

    if-ge v2, v3, :cond_c7

    int-to-float v3, v2

    const/high16 v5, 0x42c80000  # 100.0f

    div-float v5, v3, v5

    const/high16 v3, 0x3f800000  # 1.0f

    :goto_30
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000  # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    sub-float v10, v4, v6

    const v11, 0x3e333333  # 0.175f

    mul-float/2addr v10, v11

    const v12, 0x3eb33334  # 0.35000002f

    mul-float v13, v6, v12

    add-float/2addr v10, v13

    mul-float/2addr v10, v9

    mul-float v13, v6, v6

    mul-float/2addr v13, v6

    add-float/2addr v10, v13

    sub-float v13, v10, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    float-to-double v13, v13

    const-wide v15, 0x3ee4f8b588e368f1L  # 1.0E-5

    cmpg-double v13, v13, v15

    if-gez v13, :cond_bd

    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sub-float v14, v4, v6

    const/high16 v17, 0x3f000000  # 0.5f

    mul-float v14, v14, v17

    add-float/2addr v14, v6

    mul-float/2addr v14, v9

    mul-float v18, v6, v6

    mul-float v18, v18, v6

    add-float v14, v14, v18

    aput v14, v13, v2

    const/high16 v13, 0x3f800000  # 1.0f

    :goto_72
    sub-float v14, v13, v1

    div-float/2addr v14, v7

    add-float/2addr v14, v1

    mul-float v18, v14, v8

    sub-float v19, v4, v14

    mul-float v9, v18, v19

    sub-float v18, v4, v14

    mul-float v18, v18, v17

    add-float v18, v18, v14

    mul-float v18, v18, v9

    mul-float v19, v14, v14

    mul-float v19, v19, v14

    add-float v18, v18, v19

    sub-float v19, v18, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v20, v9

    float-to-double v8, v7

    cmpg-double v7, v8, v15

    if-gez v7, :cond_a9

    sget-object v7, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    sub-float/2addr v4, v14

    mul-float/2addr v4, v11

    mul-float/2addr v12, v14

    add-float/2addr v4, v12

    mul-float v9, v20, v4

    mul-float v4, v14, v14

    mul-float/2addr v4, v14

    add-float/2addr v9, v4

    aput v9, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    :cond_a9
    cmpl-float v7, v18, v5

    if-lez v7, :cond_b5

    move v13, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000  # 2.0f

    const/high16 v8, 0x40400000  # 3.0f

    goto :goto_72

    :cond_b5
    move v1, v14

    move/from16 v9, v20

    const/high16 v7, 0x40000000  # 2.0f

    const/high16 v8, 0x40400000  # 3.0f

    goto :goto_72

    :cond_bd
    cmpl-float v7, v10, v5

    if-lez v7, :cond_c4

    move v3, v6

    goto/16 :goto_30

    :cond_c4
    move v0, v6

    goto/16 :goto_30

    :cond_c7
    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v5, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v4, v5, v3

    aput v4, v2, v3

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000  # 160.0f

    mul-float/2addr v0, v1

    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d  # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    return-void
.end method

.method private adjustDuration(III)V
    .registers 14

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/FlingAnimationStub;->isOptimizeEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    sub-int v0, p3, p1

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/FlingAnimationStub;->adjustDuration(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_49

    :cond_17
    sub-int v0, p2, p1

    sub-int v1, p3, p1

    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x42c80000  # 100.0f

    mul-float v4, v2, v3

    float-to-int v4, v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_49

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    div-float/2addr v6, v3

    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v7, v3, v4

    add-int/lit8 v8, v4, 0x1

    aget v3, v3, v8

    sub-float v8, v2, v5

    sub-float v9, v6, v5

    div-float/2addr v8, v9

    sub-float v9, v3, v7

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    :cond_49
    :goto_49
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 13

    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    int-to-float v2, p3

    int-to-float v3, p3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000  # 2.0f

    div-float v3, v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v3, v1

    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    add-float v4, v3, v1

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float v7, v4, v0

    const/high16 v8, 0x447a0000  # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method private static getDeceleration(I)F
    .registers 2

    if-lez p0, :cond_5

    const/high16 v0, -0x3b060000  # -2000.0f

    goto :goto_7

    :cond_5
    const/high16 v0, 0x44fa0000  # 2000.0f

    :goto_7
    return v0
.end method

.method private getSplineDeceleration(I)D
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333  # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .registers 11

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/FlingAnimationStub;->isOptimizeEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/FlingAnimationStub;->getFlingDistance(I)D

    move-result-wide v0

    return-wide v0

    :cond_13
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v3, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    float-to-double v7, v2

    div-double/2addr v7, v3

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    return-wide v5
.end method

.method private getSplineFlingDuration(I)I
    .registers 10

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/FlingAnimationStub;->isOptimizeEnable()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/FlingAnimationStub;->getFlingDuration(I)I

    move-result v0

    return v0

    :cond_13
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v2, v4

    const-wide v4, 0x408f400000000000L  # 1000.0

    div-double v6, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    double-to-int v4, v6

    return v4
.end method

.method private onEdgeReached()V
    .registers 8

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x40000000  # 2.0f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v5, v4

    cmpl-float v5, v0, v5

    if-lez v5, :cond_26

    neg-float v5, v3

    mul-float/2addr v5, v1

    int-to-float v6, v4

    mul-float/2addr v6, v2

    div-float/2addr v5, v6

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    int-to-float v0, v4

    :cond_26
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_34

    move v5, v0

    goto :goto_35

    :cond_34
    neg-float v5, v0

    :goto_35
    float-to-int v5, v5

    add-int/2addr v2, v5

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    const/high16 v2, 0x447a0000  # 1000.0f

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v4, v2

    float-to-int v2, v4

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method

.method private startAfterEdge(IIII)V
    .registers 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    const/4 v0, 0x1

    move/from16 v10, p2

    if-le v7, v10, :cond_1a

    if-ge v7, v8, :cond_1a

    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, v6, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_1a
    const/4 v1, 0x0

    if-le v7, v8, :cond_1f

    move v2, v0

    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    move v11, v2

    if-eqz v11, :cond_25

    move v2, v8

    goto :goto_26

    :cond_25
    move v2, v10

    :goto_26
    move v12, v2

    sub-int v13, v7, v12

    mul-int v2, v13, v9

    if-ltz v2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    move v14, v0

    if-eqz v14, :cond_36

    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_5c

    :cond_36
    invoke-direct {v6, v9}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v15

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, v15, v0

    if-lez v0, :cond_59

    if-eqz v11, :cond_47

    move v3, v10

    goto :goto_48

    :cond_47
    move v3, v7

    :goto_48
    if-eqz v11, :cond_4c

    move v4, v7

    goto :goto_4d

    :cond_4c
    move v4, v8

    :goto_4d
    iget v5, v6, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_5c

    :cond_59
    invoke-direct {v6, v7, v12, v9}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    :goto_5c
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .registers 5

    if-nez p3, :cond_5

    sub-int v0, p1, p2

    goto :goto_6

    :cond_5
    move v0, p3

    :goto_6
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int v0, p1, p2

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-double v1, v0

    const-wide/high16 v3, -0x4000000000000000L  # -2.0

    mul-double/2addr v1, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L  # 1000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 7

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_42

    goto :goto_3c

    :pswitch_7  #0x2
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_3c

    :pswitch_17  #0x1
    return v1

    :pswitch_18  #0x0
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v2, :cond_3b

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_3c

    :cond_3b
    return v1

    :goto_3c
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_17  #00000001
        :pswitch_7  #00000002
    .end packed-switch
.end method

.method extendDuration(I)V
    .registers 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    add-int v3, v2, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method finish()V
    .registers 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .registers 10

    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-gt p1, p4, :cond_5d

    if-ge p1, p3, :cond_1d

    goto :goto_5d

    :cond_1d
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v0, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/FlingAnimationStub;->getFlingVelocityThreshold()I

    move-result v3

    if-le v2, v3, :cond_3b

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    :cond_3b
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_51

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v3, v2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    :cond_51
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_5c

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v3, v2, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    :cond_5c
    return-void

    :cond_5d
    :goto_5d
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void
.end method

.method notifyEdgeReached(III)V
    .registers 6

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_12
    return-void
.end method

.method setFinalPosition(I)V
    .registers 3

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method setFriction(F)V
    .registers 2

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method springback(III)Z
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_1a

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_1f

    :cond_1a
    if-le p1, p3, :cond_1f

    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    :cond_1f
    :goto_1f
    iget-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method startScroll(III)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    add-int v1, p1, p2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method update()Z
    .registers 21

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/util/BoostFramework$ScrollOptimizer;->getAdjustedAnimationClock(J)J

    move-result-wide v3

    iget-wide v5, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const/4 v8, 0x0

    if-gtz v7, :cond_1b

    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-lez v7, :cond_1a

    const/4 v8, 0x1

    :cond_1a
    return v8

    :cond_1b
    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v10, v7

    cmp-long v10, v5, v10

    if-lez v10, :cond_23

    return v8

    :cond_23
    const-wide/16 v10, 0x0

    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v12, 0x447a0000  # 1000.0f

    const/high16 v13, 0x40000000  # 2.0f

    packed-switch v8, :pswitch_data_d6

    goto/16 :goto_ca

    :pswitch_30  #0x2
    long-to-float v7, v5

    div-float/2addr v7, v12

    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v12, v8

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float v15, v14, v7

    add-float/2addr v12, v15

    iput v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    int-to-float v8, v8

    mul-float/2addr v8, v7

    mul-float/2addr v14, v7

    mul-float/2addr v14, v7

    div-float/2addr v14, v13

    add-float/2addr v8, v14

    float-to-double v10, v8

    goto/16 :goto_ca

    :pswitch_45  #0x1
    long-to-float v8, v5

    int-to-float v7, v7

    div-float/2addr v8, v7

    mul-float v7, v8, v8

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v12, v12

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v12

    iget v14, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v15, v14

    mul-float/2addr v15, v12

    const/high16 v16, 0x40400000  # 3.0f

    mul-float v16, v16, v7

    mul-float/2addr v13, v8

    mul-float/2addr v13, v7

    sub-float v16, v16, v13

    mul-float v15, v15, v16

    float-to-double v10, v15

    int-to-float v13, v14

    mul-float/2addr v13, v12

    const/high16 v14, 0x40c00000  # 6.0f

    mul-float/2addr v13, v14

    neg-float v14, v8

    add-float/2addr v14, v7

    mul-float/2addr v13, v14

    iput v13, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto :goto_ca

    :pswitch_6b  #0x0
    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/FlingAnimationStub;->isOptimizeEnable()Z

    move-result v7

    if-eqz v7, :cond_8e

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v7

    const/4 v8, 0x0

    iget v12, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v12, v12

    invoke-interface {v7, v8, v12, v5, v6}, Landroid/widget/FlingAnimationStub;->getUpdateDistance(FFJ)D

    move-result-wide v10

    invoke-static {}, Landroid/widget/OverScroller;->-$$Nest$sfgetmFlingAnimationStub()Landroid/widget/FlingAnimationStub;

    move-result-object v7

    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    invoke-interface {v7, v8, v5, v6}, Landroid/widget/FlingAnimationStub;->getUpdateVelocity(FJ)F

    move-result v7

    iput v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto :goto_ca

    :cond_8e
    long-to-float v7, v5

    iget v8, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v13, v8

    div-float/2addr v7, v13

    const/high16 v13, 0x42c80000  # 100.0f

    mul-float v14, v7, v13

    float-to-int v14, v14

    const/high16 v15, 0x3f800000  # 1.0f

    const/16 v16, 0x0

    const/16 v9, 0x64

    if-ge v14, v9, :cond_ba

    int-to-float v9, v14

    div-float/2addr v9, v13

    add-int/lit8 v12, v14, 0x1

    int-to-float v12, v12

    div-float/2addr v12, v13

    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v17, v13, v14

    add-int/lit8 v18, v14, 0x1

    aget v13, v13, v18

    sub-float v18, v13, v17

    sub-float v19, v12, v9

    div-float v16, v18, v19

    sub-float v18, v7, v9

    mul-float v18, v18, v16

    add-float v15, v17, v18

    :cond_ba
    iget v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v12, v9

    mul-float/2addr v12, v15

    float-to-double v10, v12

    int-to-float v9, v9

    mul-float v9, v9, v16

    int-to-float v8, v8

    div-float/2addr v9, v8

    const/high16 v8, 0x447a0000  # 1000.0f

    mul-float/2addr v9, v8

    iput v9, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    nop

    :goto_ca
    iget v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, v0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v7, 0x1

    return v7

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_6b  #00000000
        :pswitch_45  #00000001
        :pswitch_30  #00000002
    .end packed-switch
.end method

.method updateScroll(F)V
    .registers 4

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method
