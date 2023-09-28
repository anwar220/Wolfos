# classes.dex

.class public Landroid/app/LocaleConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LocaleConfig$Status;
    }
.end annotation


# static fields
.field public static final STATUS_NOT_SPECIFIED:I = 0x1

.field public static final STATUS_PARSING_FAILED:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocaleConfig"

.field public static final TAG_LOCALE:Ljava/lang/String; = "locale"

.field public static final TAG_LOCALE_CONFIG:Ljava/lang/String; = "locale-config"


# instance fields
.field private mLocales:Landroid/os/LocaleList;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-string v0, "LocaleConfig"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :try_start_a
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getLocaleConfigRes()I

    move-result v3

    move v1, v3

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroid/app/LocaleConfig;->parseLocaleConfig(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_1f} :catch_3f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_1f} :catch_20
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1f} :catch_20

    goto :goto_48

    :catch_20
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse XML configuration from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    goto :goto_49

    :catch_3f
    move-exception v3

    const-string v4, "The resource file pointed to by the given resource ID isn\'t found."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    :goto_48
    nop

    :goto_49
    return-void
.end method

.method private parseLocaleConfig(Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "locale-config"

    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :goto_12
    invoke-static {p1, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "locale"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Lcom/android/internal/R$styleable;->LocaleConfig_Locale:[I

    invoke-virtual {p2, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_12

    :cond_36
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_12

    :cond_3a
    iput v4, p0, Landroid/app/LocaleConfig;->mStatus:I

    const-string v3, ","

    invoke-static {v3, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v3

    iput-object v3, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    iget v0, p0, Landroid/app/LocaleConfig;->mStatus:I

    return v0
.end method

.method public getSupportedLocales()Landroid/os/LocaleList;
    .registers 2

    iget-object v0, p0, Landroid/app/LocaleConfig;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method
