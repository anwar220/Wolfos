# classes2.dex

.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/translation/ViewTranslationCallback;

    invoke-static {p1, p2}, Landroid/view/translation/UiTranslationController;->lambda$updateUiTranslationState$1(Landroid/view/View;Landroid/view/translation/ViewTranslationCallback;)V

    return-void
.end method
