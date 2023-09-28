# classes.dex

.class public Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/MixPorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MixPort"
.end annotation


# instance fields
.field private flags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;"
        }
    .end annotation
.end field

.field private gains:Landroid/audio/policy/configuration/V7_0/Gains;

.field private maxActiveCount:Ljava/lang/Long;

.field private maxOpenCount:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private preferredUsage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v3, v1

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setName(Ljava/lang/String;)V

    :cond_14
    const-string/jumbo v3, "role"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Role;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setRole(Landroid/audio/policy/configuration/V7_0/Role;)V

    :cond_24
    const-string v3, "flags"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "\\s+"

    if-eqz v1, :cond_4b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_3a
    if-ge v8, v7, :cond_48

    aget-object v9, v6, v8

    invoke-static {v9}, Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    :cond_48
    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setFlags(Ljava/util/List;)V

    :cond_4b
    const-string/jumbo v5, "maxOpenCount"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setMaxOpenCount(J)V

    :cond_5b
    const-string/jumbo v5, "maxActiveCount"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setMaxActiveCount(J)V

    :cond_6b
    const-string/jumbo v5, "preferredUsage"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_7e
    if-ge v3, v5, :cond_8c

    aget-object v6, v4, v3

    invoke-static {v6}, Landroid/audio/policy/configuration/V7_0/AudioUsage;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/AudioUsage;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7e

    :cond_8c
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setPreferredUsage(Ljava/util/List;)V

    :cond_8f
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :goto_93
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v3, v6, :cond_d3

    if-eq v4, v5, :cond_d3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a6

    goto :goto_93

    :cond_a6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "profile"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Profile;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;

    move-result-object v5

    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->getProfile()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d2

    :cond_bf
    const-string v5, "gains"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Gains;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V

    goto :goto_d2

    :cond_cf
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_d2
    goto :goto_93

    :cond_d3
    if-ne v4, v5, :cond_d6

    return-object v0

    :cond_d6
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "MixPorts.MixPort is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getFlags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    return-object v0
.end method

.method public getGains()Landroid/audio/policy/configuration/V7_0/Gains;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-object v0
.end method

.method public getMaxActiveCount()J
    .registers 3

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxOpenCount()J
    .registers 3

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredUsage()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

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

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->profile:Ljava/util/List;

    return-object v0
.end method

.method public getRole()Landroid/audio/policy/configuration/V7_0/Role;
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method

.method hasFlags()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasGains()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMaxActiveCount()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasMaxOpenCount()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasName()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasPreferredUsage()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasRole()Z
    .registers 2

    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setFlags(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioInOutFlag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->flags:Ljava/util/List;

    return-void
.end method

.method public setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-void
.end method

.method public setMaxActiveCount(J)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxActiveCount:Ljava/lang/Long;

    return-void
.end method

.method public setMaxOpenCount(J)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->maxOpenCount:Ljava/lang/Long;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->name:Ljava/lang/String;

    return-void
.end method

.method public setPreferredUsage(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/AudioUsage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->preferredUsage:Ljava/util/List;

    return-void
.end method

.method public setRole(Landroid/audio/policy/configuration/V7_0/Role;)V
    .registers 2

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/MixPorts$MixPort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-void
.end method
