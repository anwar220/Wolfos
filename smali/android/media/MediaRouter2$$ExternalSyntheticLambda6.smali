# classes2.dex

.class public final synthetic Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 3

    iget-object v0, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda6;->f$0:Ljava/util/Map;

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-static {v0, p1}, Landroid/media/MediaRouter2;->lambda$getSortedRoutes$1(Ljava/util/Map;Landroid/media/MediaRoute2Info;)I

    move-result p1

    return p1
.end method
