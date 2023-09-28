# classes4.dex

.class Lcom/android/internal/view/inline/InlineTooltipUi$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/InlineTooltipUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHeight:I

.field final synthetic this$0:Lcom/android/internal/view/inline/InlineTooltipUi;


# direct methods
.method constructor <init>(Lcom/android/internal/view/inline/InlineTooltipUi;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$fgetmHasEverDetached(Lcom/android/internal/view/inline/InlineTooltipUi;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->mHeight:I

    sub-int v1, p5, p3

    if-eq v0, v1, :cond_18

    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->mHeight:I

    iget-object v0, p0, Lcom/android/internal/view/inline/InlineTooltipUi$2;->this$0:Lcom/android/internal/view/inline/InlineTooltipUi;

    invoke-static {v0}, Lcom/android/internal/view/inline/InlineTooltipUi;->-$$Nest$madjustPosition(Lcom/android/internal/view/inline/InlineTooltipUi;)V

    :cond_18
    return-void
.end method
