# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/DevicePorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePort"
.end annotation


# instance fields
.field private _default:Ljava/lang/Boolean;

.field private address:Ljava/lang/String;

.field private encodedFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gains:Landroid/audio/policy/configuration/V7_0/Gains;

.field private profile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private role:Landroid/audio/policy/configuration/V7_0/Role;

.field private tagName:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "tagName"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setTagName(Ljava/lang/String;)V

    :cond_14
    const-string/jumbo v3, "type"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setType(Ljava/lang/String;)V

    :cond_21
    const-string/jumbo v3, "role"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Role;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setRole(Landroid/audio/policy/configuration/V7_0/Role;)V

    :cond_31
    const-string v3, "address"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setAddress(Ljava/lang/String;)V

    :cond_3d
    const-string v3, "default"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->set_default(Z)V

    :cond_4c
    const-string v3, "encodedFormats"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_61
    if-ge v5, v4, :cond_6b

    aget-object v6, v3, v5

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_6b
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setEncodedFormats(Ljava/util/List;)V

    :cond_6e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_b2

    if-eq v4, v5, :cond_b2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_85

    goto :goto_72

    :cond_85
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "profile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Profile;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;

    move-result-object v5

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->getProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :cond_9e
    const-string v5, "gains"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Gains;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V

    goto :goto_b1

    :cond_ae
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_b1
    goto :goto_72

    :cond_b2
    if-ne v4, v5, :cond_b5

    return-object v0

    :cond_b5
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DevicePorts.DevicePort is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    return-object v0
.end method

.method public getGains()Landroid/audio/policy/configuration/V7_0/Gains;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-object v0
.end method

.method public getProfile()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Profile;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    return-object v0
.end method

.method public getRole()Landroid/audio/policy/configuration/V7_0/Role;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    return-object v0
.end method

.method public get_default()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasAddress()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasEncodedFormats()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasGains()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasRole()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasTagName()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasType()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method has_default()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    return-void
.end method

.method public setEncodedFormats(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    return-void
.end method

.method public setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-void
.end method

.method public setRole(Landroid/audio/policy/configuration/V7_0/Role;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    return-void
.end method

.method public set_default(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    return-void
.end method
