# classes2.dex

.class public final synthetic Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/NavigationBarController$Impl;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/NavigationBarController$Impl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/NavigationBarController$Impl;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/NavigationBarController$Impl$$ExternalSyntheticLambda1;->f$0:Landroid/inputmethodservice/NavigationBarController$Impl;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/NavigationBarController$Impl;->lambda$onSystemBarAppearanceChanged$1$android-inputmethodservice-NavigationBarController$Impl(Landroid/animation/ValueAnimator;)V

    return-void
.end method
