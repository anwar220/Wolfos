# classes3.dex

.class public final synthetic Landroid/service/games/GameSession$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/service/games/GameSession;

.field public final synthetic f$1:Landroid/service/games/GameSession$ScreenshotCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/service/games/GameSession;Landroid/service/games/GameSession$ScreenshotCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;->f$0:Landroid/service/games/GameSession;

    iput-object p2, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;->f$1:Landroid/service/games/GameSession$ScreenshotCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;->f$0:Landroid/service/games/GameSession;

    iget-object v1, p0, Landroid/service/games/GameSession$$ExternalSyntheticLambda2;->f$1:Landroid/service/games/GameSession$ScreenshotCallback;

    check-cast p1, Landroid/service/games/GameScreenshotResult;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/service/games/GameSession;->lambda$takeScreenshot$0$android-service-games-GameSession(Landroid/service/games/GameSession$ScreenshotCallback;Landroid/service/games/GameScreenshotResult;Ljava/lang/Throwable;)V

    return-void
.end method
