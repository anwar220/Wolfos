# classes.dex

.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;


# static fields
.field public static final ATTR_FALLBACK_FOR:Ljava/lang/String; = "fallbackFor"

.field public static final ATTR_INDEX:Ljava/lang/String; = "index"

.field private static final ATTR_LANG:Ljava/lang/String; = "lang"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_POSTSCRIPT_NAME:Ljava/lang/String; = "postScriptName"

.field public static final ATTR_STYLE:Ljava/lang/String; = "style"

.field public static final ATTR_STYLEVALUE:Ljava/lang/String; = "stylevalue"

.field public static final ATTR_TAG:Ljava/lang/String; = "tag"

.field private static final ATTR_VARIANT:Ljava/lang/String; = "variant"

.field public static final ATTR_WEIGHT:Ljava/lang/String; = "weight"

.field private static final FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field public static final STYLE_ITALIC:Ljava/lang/String; = "italic"

.field public static final STYLE_NORMAL:Ljava/lang/String; = "normal"

.field public static final TAG_AXIS:Ljava/lang/String; = "axis"

.field private static final TAG_FONT:Ljava/lang/String; = "font"

.field private static final VARIANT_COMPACT:Ljava/lang/String; = "compact"

.field private static final VARIANT_ELEGANT:Ljava/lang/String; = "elegant"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const-string v0, "^[ \\n\\r\\t]+|[ \\n\\r\\t]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_f

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static parse(Ljava/io/InputStream;)Landroid/text/FontConfig;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    const/4 v0, 0x0

    invoke-interface {v8, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    const-string v1, "/system/fonts/"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JI)Landroid/text/FontConfig;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JI)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p2

    if-eqz v1, :cond_31

    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_25

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    :try_start_e
    invoke-static {v2, v3, v12}, Landroid/graphics/fonts/FontCustomizationParser;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/fonts/FontCustomizationParser$Result;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_19

    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_17

    move-object v2, v0

    goto :goto_3b

    :catch_17
    move-exception v0

    goto :goto_2a

    :catchall_19
    move-exception v0

    move-object v4, v0

    :try_start_1b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_24

    :catchall_1f
    move-exception v0

    move-object v5, v0

    :try_start_21
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw v4
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_17

    :catch_25
    move-exception v0

    move-object/from16 v3, p3

    move-object/from16 v12, p4

    :goto_2a
    new-instance v2, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v2}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v0, v2

    goto :goto_3b

    :cond_31
    move-object/from16 v3, p3

    move-object/from16 v12, p4

    new-instance v0, Landroid/graphics/fonts/FontCustomizationParser$Result;

    invoke-direct {v0}, Landroid/graphics/fonts/FontCustomizationParser$Result;-><init>()V

    move-object v2, v0

    :goto_3b
    new-instance v0, Ljava/io/FileInputStream;

    move-object v13, p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    :try_start_42
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v14, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v11, 0x0

    move-object v4, v0

    move-object/from16 v5, p1

    move-object v6, v2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v10, p7

    invoke-static/range {v4 .. v11}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;

    move-result-object v4
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_60

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    return-object v4

    :catchall_60
    move-exception v0

    move-object v4, v0

    :try_start_62
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6b

    :catchall_66
    move-exception v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6b
    throw v4
.end method

.method public static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "to"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "weight"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    const/16 v3, 0x190

    goto :goto_1f

    :cond_1b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_1f
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v4, Landroid/text/FontConfig$Alias;

    invoke-direct {v4, v1, v2, v3}, Landroid/text/FontConfig$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method private static readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "tag"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "stylevalue"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v2, Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    return-object v2
.end method

.method public static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/graphics/fonts/FontCustomizationParser$Result;Ljava/util/Map;JIZ)Landroid/text/FontConfig;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontCustomizationParser$Result;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;JIZ)",
            "Landroid/text/FontConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalAliases()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v2

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/fonts/FontCustomizationParser$Result;->getAdditionalNamedFamilies()Ljava/util/Map;

    move-result-object v9

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "familyset"

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1d
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v2, :cond_2a

    goto :goto_1d

    :cond_2a
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "family"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p7

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;

    move-result-object v4

    if-nez v4, :cond_43

    goto :goto_1d

    :cond_43
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    :cond_4f
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_52
    goto :goto_6c

    :cond_53
    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p7

    const-string v4, "alias"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    :cond_69
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6c
    goto :goto_1d

    :cond_6d
    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p7

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v2

    const/4 v2, 0x0

    :goto_81
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_99

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$FontFamily;

    invoke-virtual {v3}, Landroid/text/FontConfig$FontFamily;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_96

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_81

    :cond_99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    const/4 v2, 0x0

    :goto_a0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_bc

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/FontConfig$Alias;

    invoke-virtual {v3}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b9
    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    :cond_bc
    new-instance v15, Landroid/text/FontConfig;

    move-object v2, v15

    move-object v3, v1

    move-object v4, v14

    move-wide/from16 v5, p4

    move/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Landroid/text/FontConfig;-><init>(Ljava/util/List;Ljava/util/List;JI)V

    return-object v15
.end method

.method public static readFamily(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$FontFamily;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$FontFamily;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, "lang"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "variant"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ignore"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_22
    invoke-static {p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_30

    goto :goto_22

    :cond_30
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "font"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/FontListParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;

    move-result-object v7

    if-eqz v7, :cond_45

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    goto :goto_49

    :cond_46
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_49
    goto :goto_22

    :cond_4a
    const/4 v6, 0x0

    if-eqz v3, :cond_60

    const-string v7, "compact"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    const/4 v6, 0x1

    goto :goto_60

    :cond_57
    const-string v7, "elegant"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    const/4 v6, 0x2

    :cond_60
    :goto_60
    if-eqz v4, :cond_75

    const-string/jumbo v7, "true"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_73

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    :cond_73
    const/4 v7, 0x1

    goto :goto_76

    :cond_75
    const/4 v7, 0x0

    :goto_76
    if-nez v7, :cond_9f

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7f

    goto :goto_9f

    :cond_7f
    const/4 v0, 0x0

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v8

    invoke-interface {v8}, Landroid/graphics/FontManagerStub;->isSupportMiuiFont()Z

    move-result v8

    if-eqz v8, :cond_92

    invoke-static {}, Landroid/graphics/FontManagerStub;->get()Landroid/graphics/FontManagerStub;

    move-result-object v8

    invoke-interface {v8, v5, v1, v2, v6}, Landroid/graphics/FontManagerStub;->getReplacedFontFamily(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/FontConfig$FontFamily;

    move-result-object v0

    :cond_92
    if-nez v0, :cond_9e

    new-instance v8, Landroid/text/FontConfig$FontFamily;

    invoke-static {v2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v9

    invoke-direct {v8, v5, v1, v9, v6}, Landroid/text/FontConfig$FontFamily;-><init>(Ljava/util/List;Ljava/lang/String;Landroid/os/LocaleList;I)V

    move-object v0, v8

    :cond_9e
    return-object v0

    :cond_9f
    :goto_9f
    return-object v0
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/Map;Z)Landroid/text/FontConfig$Font;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)",
            "Landroid/text/FontConfig$Font;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const-string v3, "index"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    move v11, v4

    goto :goto_15

    :cond_10
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v11, v5

    :goto_15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "weight"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_26

    const/16 v6, 0x190

    goto :goto_2a

    :cond_26
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_2a
    move v15, v6

    const-string/jumbo v6, "style"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "italic"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const-string v6, "fallbackFor"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v6, "postScriptName"

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v7

    :goto_4b
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->keepReading(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_7f

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, v8, :cond_5f

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_67

    goto :goto_4b

    :cond_67
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "axis"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_7b
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7e
    goto :goto_4b

    :cond_7f
    sget-object v7, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v6, :cond_98

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v10, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    goto :goto_99

    :cond_98
    move-object v9, v6

    :goto_99
    move-object/from16 v8, p2

    invoke-static {v9, v8}, Landroid/graphics/FontListParser;->findUpdatedFontFile(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b5

    move-object/from16 v6, v17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_c7

    :cond_b5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    :goto_c7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_d0

    const-string v4, ""

    goto :goto_dc

    :cond_d0
    new-array v4, v4, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v4}, Landroid/graphics/fonts/FontVariationAxis;->toFontVariationSettings([Landroid/graphics/fonts/FontVariationAxis;)Ljava/lang/String;

    move-result-object v4

    :goto_dc
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    move-object v7, v2

    if-nez p3, :cond_ed

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_ed

    const/4 v2, 0x0

    return-object v2

    :cond_ed
    const/4 v2, 0x0

    new-instance v18, Landroid/text/FontConfig$Font;

    if-nez v0, :cond_f3

    goto :goto_f8

    :cond_f3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_f8
    move-object/from16 v19, v0

    new-instance v0, Landroid/graphics/fonts/FontStyle;

    invoke-direct {v0, v15, v13}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    move-object v8, v2

    move-object v2, v9

    move-object/from16 v21, v10

    move-object v10, v0

    move-object v0, v12

    move-object v12, v4

    move/from16 v22, v13

    move-object/from16 v13, v16

    invoke-direct/range {v6 .. v13}, Landroid/text/FontConfig$Font;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/lang/String;Ljava/lang/String;)V

    return-object v18
.end method

.method public static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-lez v0, :cond_13

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_12

    :pswitch_b  #0x3
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :pswitch_e  #0x2
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :pswitch_11  #0x1
    return-void

    :goto_12
    goto :goto_1

    :cond_13
    return-void

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_e  #00000002
        :pswitch_b  #00000003
    .end packed-switch
.end method
