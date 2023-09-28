# classes2.dex

.class public final synthetic Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;


# direct methods
.method public synthetic constructor <init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->lambda$new$0$android-inputmethodservice-navigationbar-ButtonDispatcher(Landroid/animation/ValueAnimator;)V

    return-void
.end method
