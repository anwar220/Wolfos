# classes4.dex

.class public final synthetic Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/LockPatternView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/widget/LockPatternView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternView;->lambda$createLineDisappearingAnimation$2$com-android-internal-widget-LockPatternView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
