# classes2.dex

.class public final synthetic Landroid/media/MediaRouter2Manager$Client$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/media/MediaRouter2Manager;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter2Manager;->changeRoutesOnHandler(Ljava/util/List;)V

    return-void
.end method
