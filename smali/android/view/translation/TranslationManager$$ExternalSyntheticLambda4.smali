# classes2.dex

.class public final synthetic Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:Landroid/view/translation/Translator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    iput-object p2, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;->f$1:Landroid/view/translation/Translator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;->f$0:Ljava/util/function/Consumer;

    iget-object v1, p0, Landroid/view/translation/TranslationManager$$ExternalSyntheticLambda4;->f$1:Landroid/view/translation/Translator;

    invoke-static {v0, v1}, Landroid/view/translation/TranslationManager;->lambda$createOnDeviceTranslator$2(Ljava/util/function/Consumer;Landroid/view/translation/Translator;)V

    return-void
.end method
