# classes4.dex

.class public final synthetic Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p1

    return p1
.end method
