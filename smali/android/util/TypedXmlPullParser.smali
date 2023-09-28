# classes3.dex

.class public interface abstract Landroid/util/TypedXmlPullParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# virtual methods
.method public abstract getAttributeBoolean(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v1

    return p3
.end method

.method public abstract getAttributeBytesBase64(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesBase64(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 6

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-object p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesBase64(I)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v1

    return-object p3
.end method

.method public abstract getAttributeBytesHex(I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesHex(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getAttributeBytesHex(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 6

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-object p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesHex(I)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v1

    return-object p3
.end method

.method public abstract getAttributeDouble(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAttributeDouble(Ljava/lang/String;Ljava/lang/String;D)D
    .registers 8

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-wide p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(I)D

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    :catch_d
    move-exception v1

    return-wide p3
.end method

.method public abstract getAttributeFloat(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(I)F

    move-result v0

    return v0
.end method

.method public getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(I)F

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v1

    return p3
.end method

.method public getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_26

    if-nez v0, :cond_18

    invoke-interface {p0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_18
    invoke-interface {p0, v2}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    return v2

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_26
    const/4 v2, -0x1

    return v2
.end method

.method public getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return v0

    :cond_8
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract getAttributeInt(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v0

    return v0
.end method

.method public getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeInt(I)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v1

    return p3
.end method

.method public abstract getAttributeIntHex(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(I)I

    move-result v0

    return v0
.end method

.method public getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(I)I

    move-result v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return v1

    :catch_d
    move-exception v1

    return p3
.end method

.method public abstract getAttributeLong(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-wide p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeLong(I)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    :catch_d
    move-exception v1

    return-wide p3
.end method

.method public abstract getAttributeLongHex(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8

    invoke-interface {p0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-wide p3

    :cond_8
    :try_start_8
    invoke-interface {p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeLongHex(I)J

    move-result-wide v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v1

    :catch_d
    move-exception v1

    return-wide p3
.end method
