# classes4.dex

.class Landroid/widget/RemoteViews$RemoveFromParentAction$1;
.super Landroid/widget/RemoteViews$RuntimeAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$RemoveFromParentAction;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$RemoveFromParentAction;

.field final synthetic val$parentVg:Landroid/view/ViewManager;

.field final synthetic val$target:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$RemoveFromParentAction;Landroid/view/ViewManager;Landroid/widget/RemoteViews$ViewTree;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->this$1:Landroid/widget/RemoteViews$RemoveFromParentAction;

    iput-object p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->val$parentVg:Landroid/view/ViewManager;

    iput-object p3, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->val$target:Landroid/widget/RemoteViews$ViewTree;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$RuntimeAction-IA;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->val$parentVg:Landroid/view/ViewManager;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction$1;->val$target:Landroid/widget/RemoteViews$ViewTree;

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    return-void
.end method
