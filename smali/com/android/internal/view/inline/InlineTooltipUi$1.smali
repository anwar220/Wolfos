# classes4.dex

.class Lcom/android/internal/view/inline/InlineTooltipUi$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/InlineTooltipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method constructor <init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$1;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$1;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$fputmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;Z)V

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$1;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-virtual {v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->dismiss()V

    return-void
.end method
