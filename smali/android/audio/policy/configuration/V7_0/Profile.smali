# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/Profile;
.super Ljava/lang/Object;


# instance fields
.field private channelMasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;"
        }
    .end annotation
.end field

.field private encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

.field private format:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private samplingRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Profile;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Profile;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Profile;->setName(Ljava/lang/String;)V

    :cond_14
    const-string v3, "format"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Profile;->setFormat(Ljava/lang/String;)V

    :cond_20
    const-string/jumbo v3, "samplingRates"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "\\s+"

    if-eqz v1, :cond_49

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_37
    if-ge v8, v7, :cond_46

    aget-object v9, v6, v8

    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_46
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Profile;->setSamplingRates(Ljava/util/List;)V

    :cond_49
    const-string v5, "channelMasks"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    :goto_5b
    if-ge v3, v6, :cond_69

    aget-object v7, v4, v3

    invoke-static {v7}, Landroid/audio/policy/configuration/V7_0/AudioChannelMask;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :cond_69
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Profile;->setChannelMasks(Ljava/util/List;)V

    :cond_6c
    const-string v3, "encapsulationType"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Profile;->setEncapsulationType(Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;)V

    :cond_7b
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public getChannelMasks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    return-object v0
.end method

.method public getEncapsulationType()Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSamplingRates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    return-object v0
.end method

.method hasChannelMasks()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasEncapsulationType()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasFormat()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasSamplingRates()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setChannelMasks(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioChannelMask;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->channelMasks:Ljava/util/List;

    return-void
.end method

.method public setEncapsulationType(Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->encapsulationType:Landroid/audio/policy/configuration/V7_0/AudioEncapsulationType;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->format:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->name:Ljava/lang/String;

    return-void
.end method

.method public setSamplingRates(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Profile;->samplingRates:Ljava/util/List;

    return-void
.end method
