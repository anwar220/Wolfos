# classes4.dex

.class public final synthetic Landroid/widget/Editor$MagnifierMotionAnimator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Editor$MagnifierMotionAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Editor$MagnifierMotionAnimator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$MagnifierMotionAnimator$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Editor$MagnifierMotionAnimator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/Editor$MagnifierMotionAnimator$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Editor$MagnifierMotionAnimator;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$MagnifierMotionAnimator;->lambda$new$0$android-widget-Editor$MagnifierMotionAnimator(Landroid/animation/ValueAnimator;)V

    return-void
.end method
