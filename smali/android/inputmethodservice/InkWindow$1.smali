# classes2.dex

.class Landroid/inputmethodservice/InkWindow$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/InkWindow;->initInkViewVisibilityListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InkWindow;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InkWindow;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkView(Landroid/inputmethodservice/InkWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow;)Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkViewVisibilityListener(Landroid/inputmethodservice/InkWindow;)Landroid/inputmethodservice/InkWindow$InkVisibilityListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/inputmethodservice/InkWindow$InkVisibilityListener;->onInkViewVisible()V

    :cond_1d
    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    invoke-static {v0}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fgetmInkView(Landroid/inputmethodservice/InkWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Landroid/inputmethodservice/InkWindow$1;->this$0:Landroid/inputmethodservice/InkWindow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/inputmethodservice/InkWindow;->-$$Nest$fputmGlobalLayoutListener(Landroid/inputmethodservice/InkWindow;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_30
    return-void
.end method
