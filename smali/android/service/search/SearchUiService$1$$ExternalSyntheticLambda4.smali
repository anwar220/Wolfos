# classes3.dex

.class public final synthetic Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda4;
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

    check-cast p1, Landroid/service/search/SearchUiService;

    check-cast p2, Landroid/app/search/SearchSessionId;

    invoke-static {p1, p2}, Landroid/service/search/SearchUiService$1;->lambda$onDestroy$0(Ljava/lang/Object;Landroid/app/search/SearchSessionId;)V

    return-void
.end method
