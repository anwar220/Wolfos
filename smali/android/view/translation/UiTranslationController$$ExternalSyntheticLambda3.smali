# classes2.dex

.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/view/translation/UiTranslationController;

    check-cast p2, Landroid/view/translation/TranslationSpec;

    check-cast p3, Landroid/view/translation/TranslationSpec;

    check-cast p4, Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/view/translation/UiTranslationController;->$r8$lambda$2IMzo8sqoVh8V6LcRDoyK1ulHFY(Landroid/view/translation/UiTranslationController;Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;)V

    return-void
.end method
