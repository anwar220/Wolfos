# classes4.dex

.class public final synthetic Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/LockPatternView;

.field public final synthetic f$1:Lcom/android/internal/widget/LockPatternView$CellState;

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockPatternView;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/LockPatternView$CellState;

    iput p3, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$2:F

    iput p4, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$3:F

    iput p5, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$4:F

    iput p6, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$5:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/LockPatternView$CellState;

    iget v2, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$2:F

    iget v3, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$3:F

    iget v4, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$4:F

    iget v5, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda0;->f$5:F

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView;->lambda$createLineEndAnimation$1$com-android-internal-widget-LockPatternView(Lcom/android/internal/widget/LockPatternView$CellState;FFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
