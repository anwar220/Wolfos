# classes2.dex

.class Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;
.super Landroid/os/IRemoteCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/UiTranslationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiTranslationStateRemoteCallback"
.end annotation


# instance fields
.field private final mCallback:Landroid/view/translation/UiTranslationStateCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mSourceLocale:Landroid/icu/util/ULocale;

.field private mTargetLocale:Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/view/translation/UiTranslationStateCallback;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    return-void
.end method

.method private onStateChange(Landroid/os/Bundle;)V
    .registers 7

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    packed-switch v0, :pswitch_data_60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected translation state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UiTranslationManager"

    invoke-static {v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :pswitch_28  #0x3
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    invoke-interface {v2, v1}, Landroid/view/translation/UiTranslationStateCallback;->onFinished(Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_2e  #0x2
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    iget-object v3, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    iget-object v4, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mTargetLocale:Landroid/icu/util/ULocale;

    invoke-interface {v2, v3, v4, v1}, Landroid/view/translation/UiTranslationStateCallback;->onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_38  #0x1
    iget-object v2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    invoke-interface {v2, v1}, Landroid/view/translation/UiTranslationStateCallback;->onPaused(Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_3e  #0x0
    const-class v2, Landroid/icu/util/ULocale;

    const-string v3, "source_locale"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    const-class v2, Landroid/icu/util/ULocale;

    const-string v3, "target_locale"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/icu/util/ULocale;

    iput-object v2, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mTargetLocale:Landroid/icu/util/ULocale;

    iget-object v3, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mCallback:Landroid/view/translation/UiTranslationStateCallback;

    iget-object v4, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mSourceLocale:Landroid/icu/util/ULocale;

    invoke-interface {v3, v4, v2, v1}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    nop

    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_38  #00000001
        :pswitch_2e  #00000002
        :pswitch_28  #00000003
    .end packed-switch
.end method


# virtual methods
.method synthetic lambda$sendResult$0$android-view-translation-UiTranslationManager$UiTranslationStateRemoteCallback(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->onStateChange(Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$sendResult$1$android-view-translation-UiTranslationManager$UiTranslationStateRemoteCallback(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda0;-><init>(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendResult(Landroid/os/Bundle;)V
    .registers 3

    new-instance v0, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback$$ExternalSyntheticLambda1;-><init>(Landroid/view/translation/UiTranslationManager$UiTranslationStateRemoteCallback;Landroid/os/Bundle;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
