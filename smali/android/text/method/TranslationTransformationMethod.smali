# classes3.dex

.class public Landroid/text/method/TranslationTransformationMethod;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TranslationTransformationMethod"


# instance fields
.field private mAllowLengthChanges:Z

.field private mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

.field private final mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    iput-object p2, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-void
.end method

.method private isWhitespace(Ljava/lang/String;)Z
    .registers 5

    sget-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;
    .registers 2

    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 6

    iget-boolean v0, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    if-nez v0, :cond_c

    const-string v0, "TranslationTransformationMethod"

    const-string v1, "Caller did not enable length changes; not transforming to translated text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_c
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    const-string v1, "android:text"

    invoke-virtual {v0, v1}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getStatusCode()I

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_21

    :cond_1f
    const-string v1, ""

    :goto_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/text/method/TranslationTransformationMethod;->isWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_33

    :cond_32
    return-object v1

    :cond_33
    :goto_33
    return-object p1
.end method

.method public getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;
    .registers 2

    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    return-object v0
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6

    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    return-void
.end method
