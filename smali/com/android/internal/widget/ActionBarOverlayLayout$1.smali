# classes4.dex

.class Lcom/android/internal/widget/ActionBarOverlayLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fputmCurrentActionBarTopAnimator(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fputmAnimatingForFling(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fputmCurrentActionBarTopAnimator(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-$$Nest$fputmAnimatingForFling(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)V

    return-void
.end method
