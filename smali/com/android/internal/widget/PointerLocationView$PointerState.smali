# classes4.dex

.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mAltEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mAltXVelocity:F

.field private mAltYVelocity:F

.field private mBoundingBottom:F

.field private mBoundingLeft:F

.field private mBoundingRight:F

.field private mBoundingTop:F

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mHasBoundingBox:Z

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceCurrent:[Z

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmAltEstimator(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCoords(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEstimator(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTraceCount(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTraceCurrent(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTraceX(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTraceY(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 1

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAltXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAltYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBoundingBottom(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBoundingLeft(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBoundingRight(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBoundingTop(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurDown(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHasBoundingBox(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmToolType(Lcom/android/internal/widget/PointerLocationView$PointerState;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmXVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmYVelocity(Lcom/android/internal/widget/PointerLocationView$PointerState;F)V
    .registers 2

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-void
.end method


# virtual methods
.method public addTrace(FFZ)V
    .registers 11

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    array-length v1, v0

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    if-ne v2, v1, :cond_27

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [F

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    new-array v0, v1, [F

    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    iget v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v2, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    new-array v2, v1, [Z

    iget-object v5, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    iget v6, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    invoke-static {v5, v4, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    :cond_27
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    aput p1, v0, v2

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    aput p2, v0, v2

    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    aput-boolean p3, v0, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return-void
.end method

.method public clearTrace()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return-void
.end method
