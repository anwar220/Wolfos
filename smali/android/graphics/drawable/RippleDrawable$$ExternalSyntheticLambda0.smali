# classes.dex

.class public final synthetic Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/RippleDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->lambda$startBackgroundAnimation$0$android-graphics-drawable-RippleDrawable(Landroid/animation/ValueAnimator;)V

    return-void
.end method
