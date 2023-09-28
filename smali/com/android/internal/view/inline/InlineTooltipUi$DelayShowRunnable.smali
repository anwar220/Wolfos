# classes4.dex

.class Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/InlineTooltipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayShowRunnable"
.end annotation


# instance fields
.field mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method constructor <init>(Lcom/android/internal/view/inline/InlineTooltipUi;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;->mAnchor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$fputmDelaying(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {v1, v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$mupdateInner(Lcom/android/internal/view/inline/InlineTooltipUi;Landroid/view/View;)V

    :cond_15
    return-void
.end method

.method public setAnchor(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$DelayShowRunnable;->mAnchor:Ljava/lang/ref/WeakReference;

    return-void
.end method
