# classes2.dex

.class public final Landroid/view/translation/ViewTranslationRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/ViewTranslationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAutofillId:Landroid/view/autofill/AutofillId;

.field private mBuilderFieldsSet:J

.field private mTranslationRequestValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    new-instance v0, Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/view/autofill/AutofillId;JI)V

    iput-object v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Landroid/view/translation/ViewTranslationRequest;
    .registers 5

    invoke-direct {p0}, Landroid/view/translation/ViewTranslationRequest$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    invoke-static {}, Landroid/view/translation/ViewTranslationRequest;->-$$Nest$smdefaultTranslationRequestValues()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    :cond_19
    new-instance v0, Landroid/view/translation/ViewTranslationRequest;

    iget-object v1, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v2, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Landroid/view/translation/ViewTranslationRequest;-><init>(Landroid/view/autofill/AutofillId;Ljava/util/Map;)V

    return-object v0
.end method

.method setTranslationRequestValues(Ljava/util/Map;)Landroid/view/translation/ViewTranslationRequest$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/translation/TranslationRequestValue;",
            ">;)",
            "Landroid/view/translation/ViewTranslationRequest$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/translation/ViewTranslationRequest$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    return-object p0
.end method

.method public setValue(Ljava/lang/String;Landroid/view/translation/TranslationRequestValue;)Landroid/view/translation/ViewTranslationRequest$Builder;
    .registers 4

    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    if-nez v0, :cond_c

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/translation/ViewTranslationRequest$Builder;->setTranslationRequestValues(Ljava/util/Map;)Landroid/view/translation/ViewTranslationRequest$Builder;

    :cond_c
    iget-object v0, p0, Landroid/view/translation/ViewTranslationRequest$Builder;->mTranslationRequestValues:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
