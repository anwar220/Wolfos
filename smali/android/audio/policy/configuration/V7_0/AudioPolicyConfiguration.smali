# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules;",
            ">;"
        }
    .end annotation
.end field

.field private surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

.field private version:Landroid/audio/policy/configuration/V7_0/Version;

.field private volumes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Volumes;",
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

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Version;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Version;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setVersion(Landroid/audio/policy/configuration/V7_0/Version;)V

    :cond_17
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_1b
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_81

    if-eq v4, v6, :cond_81

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2e

    goto :goto_1b

    :cond_2e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "globalConfiguration"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setGlobalConfiguration(Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;)V

    goto :goto_80

    :cond_42
    const-string/jumbo v5, "modules"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Modules;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules;

    move-result-object v5

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->getModules()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_57
    const-string/jumbo v5, "volumes"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Volumes;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Volumes;

    move-result-object v5

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->getVolumes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_6c
    const-string/jumbo v5, "surroundSound"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/SurroundSound;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/SurroundSound;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->setSurroundSound(Landroid/audio/policy/configuration/V7_0/SurroundSound;)V

    goto :goto_80

    :cond_7d
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_80
    goto :goto_1b

    :cond_81
    if-ne v4, v6, :cond_84

    return-object v0

    :cond_84
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "AudioPolicyConfiguration is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getGlobalConfiguration()Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    return-object v0
.end method

.method public getModules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Modules;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getSurroundSound()Landroid/audio/policy/configuration/V7_0/SurroundSound;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    return-object v0
.end method

.method public getVersion()Landroid/audio/policy/configuration/V7_0/Version;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    return-object v0
.end method

.method public getVolumes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Volumes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->volumes:Ljava/util/List;

    return-object v0
.end method

.method hasGlobalConfiguration()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasSurroundSound()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasVersion()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setGlobalConfiguration(Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->globalConfiguration:Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    return-void
.end method

.method public setSurroundSound(Landroid/audio/policy/configuration/V7_0/SurroundSound;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->surroundSound:Landroid/audio/policy/configuration/V7_0/SurroundSound;

    return-void
.end method

.method public setVersion(Landroid/audio/policy/configuration/V7_0/Version;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->version:Landroid/audio/policy/configuration/V7_0/Version;

    return-void
.end method
