# classes2.dex

.class Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/ButtonDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->-$$Nest$fputmFadeAnimator(Landroid/inputmethodservice/navigationbar/ButtonDispatcher;Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/ButtonDispatcher$1;->this$0:Landroid/inputmethodservice/navigationbar/ButtonDispatcher;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_14

    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    const/4 v1, 0x4

    :goto_15
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/navigationbar/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method
