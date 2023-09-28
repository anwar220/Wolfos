# classes4.dex

.class Landroid/widget/RemoteViews$RemoveFromParentAction;
.super Landroid/widget/RemoteViews$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveFromParentAction"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;I)V
    .registers 3

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    iput p2, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    return-void
.end method

.method constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action-IA;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V
    .registers 8

    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-ne v0, p1, :cond_b

    goto :goto_1a

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewManager;

    if-eqz v2, :cond_19

    move-object v2, v1

    check-cast v2, Landroid/view/ViewManager;

    invoke-interface {v2, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_19
    return-void

    :cond_1a
    :goto_1a
    return-void
.end method

.method public getActionTag()I
    .registers 2

    const/16 v0, 0x17

    return v0
.end method

.method public initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;
    .registers 9

    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    if-eqz v0, :cond_35

    if-ne v0, p1, :cond_e

    goto :goto_35

    :cond_e
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeParentOf(Landroid/widget/RemoteViews$ViewTree;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewManager;

    if-nez v2, :cond_1d

    goto :goto_30

    :cond_1d
    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewManager;

    invoke-static {v1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmChildren(Landroid/widget/RemoteViews$ViewTree;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v3, Landroid/widget/RemoteViews$RemoveFromParentAction$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/widget/RemoteViews$RemoveFromParentAction$1;-><init>(Landroid/widget/RemoteViews$RemoveFromParentAction;Landroid/view/ViewManager;Landroid/widget/RemoteViews$ViewTree;)V

    return-object v3

    :cond_30
    :goto_30
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v2

    return-object v2

    :cond_35
    :goto_35
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetACTION_NOOP()Landroid/widget/RemoteViews$Action;

    move-result-object v1

    return-object v1
.end method

.method public mergeBehavior()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/widget/RemoteViews$RemoveFromParentAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
