# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/Volume;
.super Ljava/lang/Object;


# instance fields
.field private deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

.field private point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ref:Ljava/lang/String;

.field private stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Volume;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Volume;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Volume;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "stream"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioStreamType;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Volume;->setStream(Landroid/audio/policy/configuration/V7_0/AudioStreamType;)V

    :cond_17
    const-string v3, "deviceCategory"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/DeviceCategory;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Volume;->setDeviceCategory(Landroid/audio/policy/configuration/V7_0/DeviceCategory;)V

    :cond_26
    const-string/jumbo v3, "ref"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    move-object v2, v1

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Volume;->setRef(Ljava/lang/String;)V

    :cond_33
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_37
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_68

    if-eq v4, v6, :cond_68

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4a

    goto :goto_37

    :cond_4a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "point"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/Volume;->getPoint()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_64
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_67
    goto :goto_37

    :cond_68
    if-ne v4, v6, :cond_6b

    return-object v0

    :cond_6b
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Volume is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getDeviceCategory()Landroid/audio/policy/configuration/V7_0/DeviceCategory;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    return-object v0
.end method

.method public getPoint()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->point:Ljava/util/List;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Landroid/audio/policy/configuration/V7_0/AudioStreamType;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    return-object v0
.end method

.method hasDeviceCategory()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasRef()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasStream()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setDeviceCategory(Landroid/audio/policy/configuration/V7_0/DeviceCategory;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->deviceCategory:Landroid/audio/policy/configuration/V7_0/DeviceCategory;

    return-void
.end method

.method public setRef(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->ref:Ljava/lang/String;

    return-void
.end method

.method public setStream(Landroid/audio/policy/configuration/V7_0/AudioStreamType;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Volume;->stream:Landroid/audio/policy/configuration/V7_0/AudioStreamType;

    return-void
.end method
