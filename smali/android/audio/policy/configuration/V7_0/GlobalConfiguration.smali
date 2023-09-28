# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
.super Ljava/lang/Object;


# instance fields
.field private call_screen_mode_supported:Ljava/lang/Boolean;

.field private engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

.field private speaker_drc_enabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "speaker_drc_enabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setSpeaker_drc_enabled(Z)V

    :cond_17
    const-string v3, "call_screen_mode_supported"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setCall_screen_mode_supported(Z)V

    :cond_26
    const-string v3, "engine_library"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/EngineSuffix;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->setEngine_library(Landroid/audio/policy/configuration/V7_0/EngineSuffix;)V

    :cond_35
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public getCall_screen_mode_supported()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEngine_library()Landroid/audio/policy/configuration/V7_0/EngineSuffix;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    return-object v0
.end method

.method public getSpeaker_drc_enabled()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasCall_screen_mode_supported()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasEngine_library()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasSpeaker_drc_enabled()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setCall_screen_mode_supported(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->call_screen_mode_supported:Ljava/lang/Boolean;

    return-void
.end method

.method public setEngine_library(Landroid/audio/policy/configuration/V7_0/EngineSuffix;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->engine_library:Landroid/audio/policy/configuration/V7_0/EngineSuffix;

    return-void
.end method

.method public setSpeaker_drc_enabled(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/GlobalConfiguration;->speaker_drc_enabled:Ljava/lang/Boolean;

    return-void
.end method
