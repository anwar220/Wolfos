# classes4.dex

.class public final synthetic Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/widget/RemoteViews$ViewGroupActionAdd;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$$ExternalSyntheticLambda0;->f$0:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->lambda$initActionAsync$0$android-widget-RemoteViews$ViewGroupActionAdd(Landroid/view/View;)Z

    move-result p1

    return p1
.end method