# classes2.dex

.class Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->handleOnFirstContentReceived(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->-$$Nest$fgetmInlineTooltipUi(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Lcom/android/internal/view/inline/InlineTooltipUi;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v0}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->-$$Nest$fgetmInlineTooltipUi(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Lcom/android/internal/view/inline/InlineTooltipUi;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl$1;->this$0:Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;

    invoke-static {v1}, Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;->-$$Nest$fgetmView(Landroid/view/inputmethod/InlineSuggestion$InlineContentCallbackImpl;)Landroid/widget/inline/InlineContentView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/inline/InlineTooltipUi;->update(Landroid/view/View;)V

    :cond_17
    return-void
.end method
