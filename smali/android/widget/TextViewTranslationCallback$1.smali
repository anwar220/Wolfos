# classes4.dex

.class Landroid/widget/TextViewTranslationCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextViewTranslationCallback;->runChangeTextWithAnimationIfNeeded(Landroid/widget/TextView;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextViewTranslationCallback;

.field final synthetic val$changeTextRunnable:Ljava/lang/Runnable;

.field final synthetic val$originalColors:Landroid/content/res/ColorStateList;

.field final synthetic val$viewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/widget/TextViewTranslationCallback;Ljava/lang/ref/WeakReference;Landroid/content/res/ColorStateList;Ljava/lang/Runnable;)V
    .registers 5

    iput-object p1, p0, Landroid/widget/TextViewTranslationCallback$1;->this$0:Landroid/widget/TextViewTranslationCallback;

    iput-object p2, p0, Landroid/widget/TextViewTranslationCallback$1;->val$viewRef:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Landroid/widget/TextViewTranslationCallback$1;->val$originalColors:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Landroid/widget/TextViewTranslationCallback$1;->val$changeTextRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback$1;->val$viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback$1;->val$originalColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_f
    iget-object v1, p0, Landroid/widget/TextViewTranslationCallback$1;->this$0:Landroid/widget/TextViewTranslationCallback;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/widget/TextViewTranslationCallback;->-$$Nest$fputmAnimator(Landroid/widget/TextViewTranslationCallback;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextViewTranslationCallback$1;->val$changeTextRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
