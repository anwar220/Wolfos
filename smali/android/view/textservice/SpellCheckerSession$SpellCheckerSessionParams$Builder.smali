# classes2.dex

.class public final Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mLocale:Ljava/util/Locale;

.field private mShouldReferToSpellCheckerLanguageSettings:Z

.field private mSupportedAttributes:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    iput v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;
    .registers 8

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mLocale:Ljava/util/Locale;

    if-nez v1, :cond_11

    iget-boolean v0, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mLocale should not be null if  mShouldReferToSpellCheckerLanguageSettings is false."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_11
    new-instance v6, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;

    iget-boolean v2, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    iget v3, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams;-><init>(Ljava/util/Locale;ZILandroid/os/Bundle;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams-IA;)V

    return-object v6
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method public setShouldReferToSpellCheckerLanguageSettings(Z)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mShouldReferToSpellCheckerLanguageSettings:Z

    return-object p0
.end method

.method public setSupportedAttributes(I)Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;
    .registers 2

    iput p1, p0, Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionParams$Builder;->mSupportedAttributes:I

    return-object p0
.end method
