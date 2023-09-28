# classes3.dex

.class public final synthetic Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field public final synthetic f$0:Landroid/view/InsetsController$InternalAnimationControlListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InsetsController$InternalAnimationControlListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .registers 3

    iget-object v0, p0, Landroid/view/InsetsController$InternalAnimationControlListener$$ExternalSyntheticLambda1;->f$0:Landroid/view/InsetsController$InternalAnimationControlListener;

    invoke-virtual {v0, p1}, Landroid/view/InsetsController$InternalAnimationControlListener;->lambda$getInsetsInterpolator$1$android-view-InsetsController$InternalAnimationControlListener(F)F

    move-result p1

    return p1
.end method
