# classes4.dex

.class Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mNewRect:Landroid/graphics/Rect;

.field private final mOldRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mNewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->mOldRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->-$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setWidthChanged(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;->this$0:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;

    :cond_2f
    return-void
.end method
