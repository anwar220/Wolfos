# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/Routes$Route;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Routes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Route"
.end annotation


# instance fields
.field private sink:Ljava/lang/String;

.field private sources:Ljava/lang/String;

.field private type:Landroid/audio/policy/configuration/V7_0/MixType;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes$Route;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Routes$Route;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Routes$Route;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/MixType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/MixType;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setType(Landroid/audio/policy/configuration/V7_0/MixType;)V

    :cond_17
    const-string/jumbo v3, "sink"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setSink(Ljava/lang/String;)V

    :cond_24
    const-string/jumbo v3, "sources"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Routes$Route;->setSources(Ljava/lang/String;)V

    :cond_31
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public getSink()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Landroid/audio/policy/configuration/V7_0/MixType;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    return-object v0
.end method

.method hasSink()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasSources()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasType()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setSink(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sink:Ljava/lang/String;

    return-void
.end method

.method public setSources(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->sources:Ljava/lang/String;

    return-void
.end method

.method public setType(Landroid/audio/policy/configuration/V7_0/MixType;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Routes$Route;->type:Landroid/audio/policy/configuration/V7_0/MixType;

    return-void
.end method
