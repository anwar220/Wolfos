# classes2.dex

.class public interface abstract Landroid/view/translation/UiTranslationStateCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onFinished()V
.end method

.method public onFinished(Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0}, Landroid/view/translation/UiTranslationStateCallback;->onFinished()V

    return-void
.end method

.method public abstract onPaused()V
.end method

.method public onPaused(Ljava/lang/String;)V
    .registers 2

    invoke-interface {p0}, Landroid/view/translation/UiTranslationStateCallback;->onPaused()V

    return-void
.end method

.method public onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 3

    return-void
.end method

.method public onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 4

    invoke-interface {p0, p1, p2}, Landroid/view/translation/UiTranslationStateCallback;->onResumed(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 5

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 4

    invoke-interface {p0, p1, p2}, Landroid/view/translation/UiTranslationStateCallback;->onStarted(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public onStarted(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
