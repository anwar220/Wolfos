# classes2.dex

.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/translation/UiTranslationController;


# direct methods
.method public synthetic constructor <init>(Landroid/view/translation/UiTranslationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda10;->f$0:Landroid/view/translation/UiTranslationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda10;->f$0:Landroid/view/translation/UiTranslationController;

    check-cast p1, Landroid/view/translation/TranslationResponse;

    invoke-virtual {v0, p1}, Landroid/view/translation/UiTranslationController;->onTranslationCompleted(Landroid/view/translation/TranslationResponse;)V

    return-void
.end method
