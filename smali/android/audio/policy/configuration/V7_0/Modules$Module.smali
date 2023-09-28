# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/Modules$Module;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Module"
.end annotation


# instance fields
.field private attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

.field private defaultOutputDevice:Ljava/lang/String;

.field private devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

.field private halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

.field private mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

.field private name:Ljava/lang/String;

.field private routes:Landroid/audio/policy/configuration/V7_0/Routes;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules$Module;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Modules$Module;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Modules$Module;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setName(Ljava/lang/String;)V

    :cond_14
    const-string v3, "halVersion"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/HalVersion;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/HalVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setHalVersion(Landroid/audio/policy/configuration/V7_0/HalVersion;)V

    :cond_23
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_95

    if-eq v4, v6, :cond_95

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3a

    goto :goto_27

    :cond_3a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "attachedDevices"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/AttachedDevices;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setAttachedDevices(Landroid/audio/policy/configuration/V7_0/AttachedDevices;)V

    goto :goto_94

    :cond_4e
    const-string v5, "defaultOutputDevice"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setDefaultOutputDevice(Ljava/lang/String;)V

    goto :goto_94

    :cond_5f
    const-string/jumbo v5, "mixPorts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/MixPorts;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/MixPorts;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setMixPorts(Landroid/audio/policy/configuration/V7_0/MixPorts;)V

    goto :goto_94

    :cond_70
    const-string v5, "devicePorts"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/DevicePorts;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setDevicePorts(Landroid/audio/policy/configuration/V7_0/DevicePorts;)V

    goto :goto_94

    :cond_80
    const-string/jumbo v5, "routes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Routes;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setRoutes(Landroid/audio/policy/configuration/V7_0/Routes;)V

    goto :goto_94

    :cond_91
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_94
    goto :goto_27

    :cond_95
    if-ne v4, v6, :cond_98

    return-object v0

    :cond_98
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Modules.Module is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getAttachedDevices()Landroid/audio/policy/configuration/V7_0/AttachedDevices;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    return-object v0
.end method

.method public getDefaultOutputDevice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePorts()Landroid/audio/policy/configuration/V7_0/DevicePorts;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    return-object v0
.end method

.method public getHalVersion()Landroid/audio/policy/configuration/V7_0/HalVersion;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    return-object v0
.end method

.method public getMixPorts()Landroid/audio/policy/configuration/V7_0/MixPorts;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutes()Landroid/audio/policy/configuration/V7_0/Routes;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    return-object v0
.end method

.method hasAttachedDevices()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasDefaultOutputDevice()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasDevicePorts()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasHalVersion()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMixPorts()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasRoutes()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setAttachedDevices(Landroid/audio/policy/configuration/V7_0/AttachedDevices;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    return-void
.end method

.method public setDefaultOutputDevice(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    return-void
.end method

.method public setDevicePorts(Landroid/audio/policy/configuration/V7_0/DevicePorts;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    return-void
.end method

.method public setHalVersion(Landroid/audio/policy/configuration/V7_0/HalVersion;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    return-void
.end method

.method public setMixPorts(Landroid/audio/policy/configuration/V7_0/MixPorts;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    return-void
.end method

.method public setRoutes(Landroid/audio/policy/configuration/V7_0/Routes;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    return-void
.end method
