# classes3.dex

.class public final synthetic Landroid/service/search/SearchUiService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/service/search/SearchUiService;

    check-cast p2, Landroid/app/search/SearchSessionId;

    check-cast p3, Landroid/app/search/Query;

    check-cast p4, Landroid/service/search/SearchUiService$CallbackWrapper;

    invoke-virtual {p1, p2, p3, p4}, Landroid/service/search/SearchUiService;->onQuery(Landroid/app/search/SearchSessionId;Landroid/app/search/Query;Ljava/util/function/Consumer;)V

    return-void
.end method
