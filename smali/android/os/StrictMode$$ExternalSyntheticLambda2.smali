# classes3.dex

.class public final synthetic Landroid/os/StrictMode$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/os/StrictMode;->lambda$static$1(Ljava/lang/String;)V

    return-void
.end method
