# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/SurroundSound;
.super Ljava/lang/Object;


# instance fields
.field private formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundSound;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/SurroundSound;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/SurroundSound;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_35

    if-eq v4, v6, :cond_35

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "formats"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/SurroundFormats;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/SurroundSound;->setFormats(Landroid/audio/policy/configuration/V7_0/SurroundFormats;)V

    goto :goto_34

    :cond_31
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_34
    goto :goto_a

    :cond_35
    if-ne v4, v6, :cond_38

    return-object v0

    :cond_38
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "SurroundSound is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getFormats()Landroid/audio/policy/configuration/V7_0/SurroundFormats;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    return-object v0
.end method

.method hasFormats()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setFormats(Landroid/audio/policy/configuration/V7_0/SurroundFormats;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/SurroundSound;->formats:Landroid/audio/policy/configuration/V7_0/SurroundFormats;

    return-void
.end method
