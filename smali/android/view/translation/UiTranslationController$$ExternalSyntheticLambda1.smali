# classes2.dex

.class public final synthetic Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;Ljava/util/function/BiConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/view/translation/UiTranslationController$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiConsumer;

    invoke-static {v0, v1}, Landroid/view/translation/UiTranslationController;->lambda$runForEachView$7(Landroid/util/ArrayMap;Ljava/util/function/BiConsumer;)V

    return-void
.end method
