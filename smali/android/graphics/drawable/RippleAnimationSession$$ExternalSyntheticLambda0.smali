# classes.dex

.class public final synthetic Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/RippleAnimationSession;

.field public final synthetic f$1:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/RippleAnimationSession;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/RippleAnimationSession;

    iput-object p2, p0, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/RippleAnimationSession;

    iget-object v1, p0, Landroid/graphics/drawable/RippleAnimationSession$$ExternalSyntheticLambda0;->f$1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/RippleAnimationSession;->lambda$exitSoftware$0$android-graphics-drawable-RippleAnimationSession(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
