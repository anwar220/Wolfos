# classes3.dex

.class public final synthetic Landroid/service/games/GameSession$1$$ExternalSyntheticLambda0;
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

    check-cast p1, Landroid/service/games/GameSession;

    invoke-static {p1}, Landroid/service/games/GameSession$1;->lambda$onDestroyed$0(Ljava/lang/Object;)V

    return-void
.end method
