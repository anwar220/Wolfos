# classes4.dex

.class Landroid/widget/ZoomButtonsController$Container;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZoomButtonsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Container"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZoomButtonsController;


# direct methods
.method public constructor <init>(Landroid/widget/ZoomButtonsController;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/ZoomButtonsController$Container;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/ZoomButtonsController$Container;->this$0:Landroid/widget/ZoomButtonsController;

    invoke-static {v0, p1}, Landroid/widget/ZoomButtonsController;->-$$Nest$monContainerKey(Landroid/widget/ZoomButtonsController;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_e

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_e
    return v0
.end method
