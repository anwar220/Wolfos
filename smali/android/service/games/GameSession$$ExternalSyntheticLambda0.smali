# classes3.dex

.class public final synthetic Landroid/service/games/GameSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/service/games/GameSessionActivityCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/games/GameSessionActivityCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;->f$0:Landroid/service/games/GameSessionActivityCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda0;->f$0:Landroid/service/games/GameSessionActivityCallback;

    check-cast p1, Landroid/service/games/GameSessionActivityResult;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Landroid/service/games/GameSession;->lambda$startActivityFromGameSessionForResult$1(Landroid/service/games/GameSessionActivityCallback;Landroid/service/games/GameSessionActivityResult;Ljava/lang/Throwable;)V

    return-void
.end method
