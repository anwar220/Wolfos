# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/Gains$Gain;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Gains;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gain"
.end annotation


# instance fields
.field private channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

.field private defaultValueMB:Ljava/lang/Integer;

.field private maxRampMs:Ljava/lang/Integer;

.field private maxValueMB:Ljava/lang/Integer;

.field private minRampMs:Ljava/lang/Integer;

.field private minValueMB:Ljava/lang/Integer;

.field private mode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private stepValueMB:Ljava/lang/Integer;

.field private useForVolume:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains$Gain;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setName(Ljava/lang/String;)V

    :cond_14
    const-string/jumbo v3, "mode"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "\\s+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2a
    if-ge v6, v5, :cond_38

    aget-object v7, v4, v6

    invoke-static {v7}, Landroid/audio/policy/configuration/V7_0/AudioGainMode;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioGainMode;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_38
    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMode(Ljava/util/List;)V

    :cond_3b
    const-string v3, "channel_mask"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/AudioChannelMask;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setChannel_mask(Landroid/audio/policy/configuration/V7_0/AudioChannelMask;)V

    :cond_4a
    const-string/jumbo v3, "minValueMB"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMinValueMB(I)V

    :cond_5a
    const-string/jumbo v3, "maxValueMB"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMaxValueMB(I)V

    :cond_6a
    const-string v3, "defaultValueMB"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_79

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setDefaultValueMB(I)V

    :cond_79
    const-string/jumbo v3, "stepValueMB"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setStepValueMB(I)V

    :cond_89
    const-string/jumbo v3, "minRampMs"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_99

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMinRampMs(I)V

    :cond_99
    const-string/jumbo v3, "maxRampMs"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setMaxRampMs(I)V

    :cond_a9
    const-string/jumbo v3, "useForVolume"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b9

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->setUseForVolume(Z)V

    :cond_b9
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public getChannel_mask()Landroid/audio/policy/configuration/V7_0/AudioChannelMask;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    return-object v0
.end method

.method public getDefaultValueMB()I
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxRampMs()I
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxValueMB()I
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinRampMs()I
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinValueMB()I
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMode()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStepValueMB()I
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUseForVolume()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasChannel_mask()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasDefaultValueMB()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMaxRampMs()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMaxValueMB()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMinRampMs()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMinValueMB()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMode()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasStepValueMB()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasUseForVolume()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setChannel_mask(Landroid/audio/policy/configuration/V7_0/AudioChannelMask;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->channel_mask:Landroid/audio/policy/configuration/V7_0/AudioChannelMask;

    return-void
.end method

.method public setDefaultValueMB(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->defaultValueMB:Ljava/lang/Integer;

    return-void
.end method

.method public setMaxRampMs(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxRampMs:Ljava/lang/Integer;

    return-void
.end method

.method public setMaxValueMB(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->maxValueMB:Ljava/lang/Integer;

    return-void
.end method

.method public setMinRampMs(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minRampMs:Ljava/lang/Integer;

    return-void
.end method

.method public setMinValueMB(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->minValueMB:Ljava/lang/Integer;

    return-void
.end method

.method public setMode(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioGainMode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->mode:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->name:Ljava/lang/String;

    return-void
.end method

.method public setStepValueMB(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->stepValueMB:Ljava/lang/Integer;

    return-void
.end method

.method public setUseForVolume(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/Gains$Gain;->useForVolume:Ljava/lang/Boolean;

    return-void
.end method
