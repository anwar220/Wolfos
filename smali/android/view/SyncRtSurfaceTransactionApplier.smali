# classes3.dex

.class public Landroid/view/SyncRtSurfaceTransactionApplier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    }
.end annotation


# static fields
.field public static final FLAG_ALL:I = -0x1

.field public static final FLAG_ALPHA:I = 0x1

.field public static final FLAG_BACKGROUND_BLUR_RADIUS:I = 0x20

.field public static final FLAG_CORNER_RADIUS:I = 0x10

.field public static final FLAG_LAYER:I = 0x8

.field public static final FLAG_MATRIX:I = 0x2

.field public static final FLAG_TRANSACTION:I = 0x80

.field public static final FLAG_VISIBILITY:I = 0x40

.field public static final FLAG_WINDOW_CROP:I = 0x4


# instance fields
.field private mTargetSc:Landroid/view/SurfaceControl;

.field private final mTargetViewRootImpl:Landroid/view/ViewRootImpl;

.field private final mTmpFloat9:[F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTmpFloat9:[F

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    return-void
.end method

.method public static applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V
    .registers 5

    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :cond_d
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_1c
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2b

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_2b
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3a

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->alpha:F

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3a
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_49

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->layer:I

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_49
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_58

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->cornerRadius:F

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_58
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_67

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->backgroundBlurRadius:I

    invoke-virtual {p0, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_67
    invoke-static {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->-$$Nest$fgetflags(Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7e

    iget-boolean v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->visible:Z

    if-eqz v0, :cond_79

    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_7e

    :cond_79
    iget-object v0, p1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_7e
    :goto_7e
    return-void
.end method

.method public static create(Landroid/view/View;Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/SyncRtSurfaceTransactionApplier;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_7

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {v0, p0}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_16
    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$1;

    invoke-direct {v0, p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$1;-><init>(Landroid/view/View;Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method varargs applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 7

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_11

    aget-object v1, p2, v0

    iget-object v2, v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;->surface:Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTmpFloat9:[F

    invoke-static {p1, v1, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_11
    return-void
.end method

.method applyTransaction(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewRootImpl;->mergeWithNextTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    goto :goto_b

    :cond_8
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_b
    return-void
.end method

.method synthetic lambda$scheduleApply$0$android-view-SyncRtSurfaceTransactionApplier(Landroid/view/SurfaceControl$Transaction;J)V
    .registers 5

    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetSc:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyTransaction(Landroid/view/SurfaceControl$Transaction;J)V

    :cond_d
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method public varargs scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 5

    iget-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetSc:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;[Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v2, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$$ExternalSyntheticLambda0;-><init>(Landroid/view/SyncRtSurfaceTransactionApplier;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier;->mTargetViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method
