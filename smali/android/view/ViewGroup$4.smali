# classes3.dex

.class Landroid/view/ViewGroup$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 2

    iput-object p1, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 7

    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/ViewGroup;->-$$Nest$fgetmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/ViewGroup;->-$$Nest$fputmLayoutCalledWhileSuppressed(Landroid/view/ViewGroup;Z)V

    :cond_19
    const/4 v0, 0x3

    if-ne p4, v0, :cond_29

    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/view/ViewGroup;->-$$Nest$fgetmTransitioningViews(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_29
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .registers 6

    const/4 v0, 0x3

    if-ne p4, v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewGroup$4;->this$0:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_8
    return-void
.end method
