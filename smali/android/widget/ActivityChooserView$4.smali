# classes4.dex

.class Landroid/widget/ActivityChooserView$4;
.super Landroid/widget/ForwardingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserView;


# direct methods
.method constructor <init>(Landroid/widget/ActivityChooserView;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .registers 2

    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/widget/ActivityChooserView;->-$$Nest$mgetListPopupWindow(Landroid/widget/ActivityChooserView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->showPopup()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onForwardingStopped()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/ActivityChooserView$4;->this$0:Landroid/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->dismissPopup()Z

    const/4 v0, 0x1

    return v0
.end method
