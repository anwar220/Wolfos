# classes2.dex

.class Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/navigationbar/KeyButtonRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmRunningAnimations(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fgetmPressed(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fputmVisible(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-static {v0, v1}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->-$$Nest$fputmDrawingHardwareGlow(Landroid/inputmethodservice/navigationbar/KeyButtonRipple;Z)V

    iget-object v0, p0, Landroid/inputmethodservice/navigationbar/KeyButtonRipple$1;->this$0:Landroid/inputmethodservice/navigationbar/KeyButtonRipple;

    invoke-virtual {v0}, Landroid/inputmethodservice/navigationbar/KeyButtonRipple;->invalidateSelf()V

    :cond_2d
    return-void
.end method
