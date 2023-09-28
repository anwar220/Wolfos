# classes2.dex

.class public final Landroid/view/textclassifier/TextSelection$Request$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextSelection$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDarkLaunchAllowed:Z

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private final mEndIndex:I

.field private mExtras:Landroid/os/Bundle;

.field private mIncludeTextClassification:Z

.field private final mStartIndex:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifier$Utils;->checkArgument(Ljava/lang/CharSequence;II)V

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mStartIndex:I

    iput p3, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextSelection$Request;
    .registers 11

    new-instance v9, Landroid/view/textclassifier/TextSelection$Request;

    new-instance v1, Landroid/text/SpannedString;

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iget v2, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mStartIndex:I

    iget v3, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mEndIndex:I

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-boolean v5, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDarkLaunchAllowed:Z

    iget-boolean v6, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mIncludeTextClassification:Z

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_19

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_19
    move-object v7, v0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/textclassifier/TextSelection$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;ZZLandroid/os/Bundle;Landroid/view/textclassifier/TextSelection$Request-IA;)V

    return-object v9
.end method

.method public setDarkLaunchAllowed(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDarkLaunchAllowed:Z

    return-object p0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public setIncludeTextClassification(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/view/textclassifier/TextSelection$Request$Builder;->mIncludeTextClassification:Z

    return-object p0
.end method
