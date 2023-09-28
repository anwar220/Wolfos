# classes2.dex

.class public final Landroid/view/translation/TranslationResponseValue$Builder;
.super Landroid/view/translation/TranslationResponseValue$BaseBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/translation/TranslationResponseValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mExtras:Landroid/os/Bundle;

.field private mStatusCode:I

.field private mText:Ljava/lang/CharSequence;

.field private mTransliteration:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(I)V
    .registers 6

    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$BaseBuilder;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mStatusCode:I

    if-eqz p1, :cond_45

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    goto :goto_45

    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusCode was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: STATUS_SUCCESS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), STATUS_ERROR("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    :goto_45
    return-void
.end method

.method private checkNotUsed()V
    .registers 5

    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

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
.method public build()Landroid/view/translation/TranslationResponseValue;
    .registers 7

    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->-$$Nest$smdefaultText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mText:Ljava/lang/CharSequence;

    :cond_19
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->-$$Nest$smdefaultExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mExtras:Landroid/os/Bundle;

    :cond_28
    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_37

    invoke-static {}, Landroid/view/translation/TranslationResponseValue;->-$$Nest$smdefaultTransliteration()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mTransliteration:Ljava/lang/CharSequence;

    :cond_37
    new-instance v0, Landroid/view/translation/TranslationResponseValue;

    iget v1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mStatusCode:I

    iget-object v2, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mExtras:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mTransliteration:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/translation/TranslationResponseValue;-><init>(ILjava/lang/CharSequence;Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/translation/TranslationResponseValue$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationResponseValue$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTransliteration(Ljava/lang/CharSequence;)Landroid/view/translation/TranslationResponseValue$Builder;
    .registers 6

    invoke-direct {p0}, Landroid/view/translation/TranslationResponseValue$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/translation/TranslationResponseValue$Builder;->mTransliteration:Ljava/lang/CharSequence;

    return-object p0
.end method
