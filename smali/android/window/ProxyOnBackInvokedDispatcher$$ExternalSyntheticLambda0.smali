# classes4.dex

.class public final synthetic Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/window/OnBackInvokedCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;->f$0:Landroid/window/OnBackInvokedCallback;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;->lambda$unregisterOnBackInvokedCallback$0(Landroid/window/OnBackInvokedCallback;Landroid/util/Pair;)Z

    move-result p1

    return p1
.end method
