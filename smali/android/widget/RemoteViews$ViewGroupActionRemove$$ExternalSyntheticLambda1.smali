# classes4.dex

.class public final synthetic Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;->f$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$$ExternalSyntheticLambda1;->f$0:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    check-cast p1, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->lambda$initActionAsync$1$android-widget-RemoteViews$ViewGroupActionRemove(Landroid/widget/RemoteViews$ViewTree;)Z

    move-result p1

    return p1
.end method
