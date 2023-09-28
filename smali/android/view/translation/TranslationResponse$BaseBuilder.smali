# classes2.dex

.class abstract Landroid/view/translation/TranslationResponse$BaseBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseBuilder"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setTranslationResponseValue(ILandroid/view/translation/TranslationResponseValue;)Landroid/view/translation/TranslationResponse$Builder;
    .registers 5

    const-string v0, "value should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/view/translation/TranslationResponse$Builder;

    invoke-static {v0}, Landroid/view/translation/TranslationResponse$Builder;->-$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_16

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/translation/TranslationResponse$Builder;->setTranslationResponseValues(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;

    :cond_16
    invoke-static {v0}, Landroid/view/translation/TranslationResponse$Builder;->-$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public abstract setTranslationStatus(I)Landroid/view/translation/TranslationResponse$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setViewTranslationResponse(ILandroid/view/translation/ViewTranslationResponse;)Landroid/view/translation/TranslationResponse$Builder;
    .registers 5

    const-string v0, "value should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/view/translation/TranslationResponse$Builder;

    invoke-static {v0}, Landroid/view/translation/TranslationResponse$Builder;->-$$Nest$fgetmViewTranslationResponses(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_16

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/translation/TranslationResponse$Builder;->setViewTranslationResponses(Landroid/util/SparseArray;)Landroid/view/translation/TranslationResponse$Builder;

    :cond_16
    invoke-static {v0}, Landroid/view/translation/TranslationResponse$Builder;->-$$Nest$fgetmViewTranslationResponses(Landroid/view/translation/TranslationResponse$Builder;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
