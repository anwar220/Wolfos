# classes2.dex

.class abstract Landroid/view/translation/ViewTranslationResponse$BaseBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ViewTranslationResponse;
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
.method abstract setTranslationResponseValues(Ljava/util/Map;)Landroid/view/translation/ViewTranslationResponse$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationResponseValue;",
            ">;)",
            "Landroid/view/translation/ViewTranslationResponse$Builder;"
        }
    .end annotation
.end method

.method public setValue(Ljava/lang/String;Landroid/view/translation/TranslationResponseValue;)Landroid/view/translation/ViewTranslationResponse$Builder;
    .registers 5

    move-object v0, p0

    check-cast v0, Landroid/view/translation/ViewTranslationResponse$Builder;

    invoke-static {v0}, Landroid/view/translation/ViewTranslationResponse$Builder;->-$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/ViewTranslationResponse$Builder;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_11

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/translation/ViewTranslationResponse$BaseBuilder;->setTranslationResponseValues(Ljava/util/Map;)Landroid/view/translation/ViewTranslationResponse$Builder;

    :cond_11
    invoke-static {v0}, Landroid/view/translation/ViewTranslationResponse$Builder;->-$$Nest$fgetmTranslationResponseValues(Landroid/view/translation/ViewTranslationResponse$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
