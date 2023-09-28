# classes3.dex

.class public final synthetic Landroid/view/InsetsController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/view/InsetsController;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Landroid/view/InsetsController;->lambda$new$2(Landroid/view/InsetsController;Ljava/lang/Integer;)Landroid/view/InsetsSourceConsumer;

    move-result-object p1

    return-object p1
.end method
