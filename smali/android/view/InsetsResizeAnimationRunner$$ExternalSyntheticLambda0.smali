# classes3.dex

.class public final synthetic Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsResizeAnimationRunner;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsResizeAnimationRunner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsResizeAnimationRunner;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsResizeAnimationRunner$$ExternalSyntheticLambda0;->f$0:Landroid/view/InsetsResizeAnimationRunner;

    invoke-virtual {v0, p1}, Landroid/view/InsetsResizeAnimationRunner;->lambda$onReady$0$android-view-InsetsResizeAnimationRunner(Landroid/animation/ValueAnimator;)V

    return-void
.end method
