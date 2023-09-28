# classes3.dex

.class public final Landroid/service/games/GameSessionTrampolineActivity;
.super Landroid/app/Activity;


# static fields
.field static final FUTURE_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.future"

.field private static final HAS_LAUNCHED_INTENT_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.hasLaunchedIntent"

.field static final INTENT_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.intent"

.field static final OPTIONS_KEY:Ljava/lang/String; = "GameSessionTrampolineActivity.options"

.field private static final REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GameSessionTrampoline"


# instance fields
.field private mHasLaunchedIntent:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    return-void
.end method

.method public static createIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/service/games/GameSessionActivityResult;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "android.service.games.GameSessionTrampolineActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "GameSessionTrampolineActivity.intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "GameSessionTrampolineActivity.options"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "GameSessionTrampolineActivity.future"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GameSessionTrampolineActivity.future"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/infra/AndroidFuture;

    new-instance v1, Landroid/service/games/GameSessionActivityResult;

    invoke-direct {v1, p2, p3}, Landroid/service/games/GameSessionActivityResult;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->finish()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/service/games/GameSessionTrampolineActivity;->overridePendingTransition(II)V

    return-void

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_d

    const-string v0, "GameSessionTrampolineActivity.hasLaunchedIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    :cond_d
    iget-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    if-eqz v0, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    nop

    :try_start_16
    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GameSessionTrampolineActivity.intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GameSessionTrampolineActivity.options"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getUserId()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/service/games/GameSessionTrampolineActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZII)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_37} :catch_38

    goto :goto_56

    :catch_38
    move-exception v0

    const-string v1, "GameSessionTrampoline"

    const-string v2, "Unable to launch activity from game session"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "GameSessionTrampolineActivity.future"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-virtual {v1, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Landroid/service/games/GameSessionTrampolineActivity;->finish()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/service/games/GameSessionTrampolineActivity;->overridePendingTransition(II)V

    :goto_56
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/service/games/GameSessionTrampolineActivity;->mHasLaunchedIntent:Z

    const-string v1, "GameSessionTrampolineActivity.hasLaunchedIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
