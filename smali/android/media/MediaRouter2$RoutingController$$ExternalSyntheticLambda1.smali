# classes2.dex

.class public final synthetic Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/media/MediaRouter2$RoutingController$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2$RoutingController;->lambda$getRoutesWithIds$1(Ljava/util/List;Landroid/media/MediaRoute2Info;)Z

    move-result p1

    return p1
.end method
