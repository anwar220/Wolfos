# classes.dex

.class public Landroid/content/res/FontResourcesParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;,
        Landroid/content/res/FontResourcesParser$FontFileResourceEntry;,
        Landroid/content/res/FontResourcesParser$ProviderResourceEntry;,
        Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FontResourcesParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v0, 0x1

    if-eq v1, v0, :cond_c

    goto :goto_0

    :cond_c
    if-ne v1, v2, :cond_13

    invoke-static {p0, p1}, Landroid/content/res/FontResourcesParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "font-family"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {p0, p1}, Landroid/content/res/FontResourcesParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;

    move-result-object v1

    return-object v1

    :cond_17
    invoke-static {p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v2, "FontResourcesParser"

    const-string v4, "Failed to find font-family tag"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->FontFamily:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x3

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v10, :cond_8c

    if-eqz v11, :cond_8c

    if-eqz v12, :cond_8c

    :goto_2e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    if-eq v4, v6, :cond_38

    invoke-static/range {p0 .. p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2e

    :cond_38
    const/4 v4, 0x0

    if-eqz v13, :cond_7f

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-lez v7, :cond_7a

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v7

    invoke-virtual {v6, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_53

    :cond_52
    move v5, v3

    :goto_53
    if-eqz v5, :cond_6f

    const/4 v7, 0x0

    :goto_56
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6e

    invoke-virtual {v6, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    :cond_6e
    goto :goto_7a

    :cond_6f
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7a
    :goto_7a
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v3, v4

    goto :goto_80

    :cond_7f
    move-object v3, v4

    :goto_80
    new-instance v15, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    move-object v4, v15

    move-object v5, v10

    move-object v6, v11

    move-object v7, v12

    move-object v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v9}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v15

    :cond_8c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_91
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v6, :cond_b8

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v4, :cond_9e

    goto :goto_91

    :cond_9e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "font"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-static/range {p0 .. p1}, Landroid/content/res/FontResourcesParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v7

    if-eqz v7, :cond_b3

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b3
    goto :goto_b7

    :cond_b4
    invoke-static/range {p0 .. p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_b7
    goto :goto_91

    :cond_b8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v4, 0x0

    return-object v4

    :cond_c0
    new-instance v4, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    invoke-direct {v4, v5}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;-><init>([Landroid/content/res/FontResourcesParser$FontFileResourceEntry;)V

    return-object v4
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->FontFamilyFont:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_31

    invoke-static {p0}, Landroid/content/res/FontResourcesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_27

    :cond_31
    if-nez v12, :cond_35

    const/4 v4, 0x0

    return-object v4

    :cond_35
    new-instance v13, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-object v4, v13

    move-object v5, v12

    move v6, v2

    move v7, v3

    move-object v8, v10

    move v9, v11

    invoke-direct/range {v4 .. v9}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;-><init>(Ljava/lang/String;IILjava/lang/String;I)V

    return-object v13
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    if-lez v0, :cond_12

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_11

    :pswitch_b  #0x3
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :pswitch_e  #0x2
    add-int/lit8 v0, v0, 0x1

    nop

    :goto_11
    goto :goto_1

    :cond_12
    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_e  #00000002
        :pswitch_b  #00000003
    .end packed-switch
.end method
