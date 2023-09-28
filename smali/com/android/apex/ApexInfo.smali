# classes4.dex

.class public Lcom/android/apex/ApexInfo;
.super Ljava/lang/Object;


# instance fields
.field private isActive:Ljava/lang/Boolean;

.field private isFactory:Ljava/lang/Boolean;

.field private lastUpdateMillis:Ljava/lang/Long;

.field private moduleName:Ljava/lang/String;

.field private modulePath:Ljava/lang/String;

.field private preinstalledModulePath:Ljava/lang/String;

.field private provideSharedApexLibs:Ljava/lang/Boolean;

.field private versionCode:Ljava/lang/Long;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/apex/ApexInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    new-instance v0, Lcom/android/apex/ApexInfo;

    invoke-direct {v0}, Lcom/android/apex/ApexInfo;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "moduleName"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    move-object v3, v1

    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setModuleName(Ljava/lang/String;)V

    :cond_14
    const-string/jumbo v3, "modulePath"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    move-object v3, v1

    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setModulePath(Ljava/lang/String;)V

    :cond_21
    const-string/jumbo v3, "preinstalledModulePath"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    move-object v3, v1

    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setPreinstalledModulePath(Ljava/lang/String;)V

    :cond_2e
    const-string/jumbo v3, "versionCode"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/apex/ApexInfo;->setVersionCode(J)V

    :cond_3e
    const-string/jumbo v3, "versionName"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    move-object v3, v1

    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setVersionName(Ljava/lang/String;)V

    :cond_4b
    const-string v3, "isFactory"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setIsFactory(Z)V

    :cond_5a
    const-string v3, "isActive"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/apex/ApexInfo;->setIsActive(Z)V

    :cond_69
    const-string/jumbo v3, "lastUpdateMillis"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_79

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/apex/ApexInfo;->setLastUpdateMillis(J)V

    :cond_79
    const-string/jumbo v3, "provideSharedApexLibs"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/apex/ApexInfo;->setProvideSharedApexLibs(Z)V

    :cond_89
    invoke-static {p0}, Lcom/android/apex/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public getIsActive()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsFactory()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLastUpdateMillis()J
    .registers 3

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getModuleName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public getModulePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPreinstalledModulePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    return-object v0
.end method

.method public getProvideSharedApexLibs()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getVersionCode()J
    .registers 3

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method hasIsActive()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasIsFactory()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasLastUpdateMillis()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasModuleName()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasModulePath()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasPreinstalledModulePath()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasProvideSharedApexLibs()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasVersionCode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method hasVersionName()Z
    .registers 2

    iget-object v0, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public setIsActive(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->isActive:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsFactory(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->isFactory:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastUpdateMillis(J)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->lastUpdateMillis:Ljava/lang/Long;

    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/apex/ApexInfo;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public setModulePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/apex/ApexInfo;->modulePath:Ljava/lang/String;

    return-void
.end method

.method public setPreinstalledModulePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;

    return-void
.end method

.method public setProvideSharedApexLibs(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->provideSharedApexLibs:Ljava/lang/Boolean;

    return-void
.end method

.method public setVersionCode(J)V
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/apex/ApexInfo;->versionCode:Ljava/lang/Long;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/apex/ApexInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasModuleName()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_2d

    const-string v0, " moduleName=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getModuleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasModulePath()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, " modulePath=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_42
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasPreinstalledModulePath()Z

    move-result v0

    if-eqz v0, :cond_57

    const-string v0, " preinstalledModulePath=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getPreinstalledModulePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_57
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasVersionCode()Z

    move-result v0

    if-eqz v0, :cond_70

    const-string v0, " versionCode=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_70
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasVersionName()Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v0, " versionName=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_85
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasIsFactory()Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, " isFactory=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getIsFactory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_9e
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasIsActive()Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string v0, " isActive=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getIsActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_b7
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasLastUpdateMillis()Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, " lastUpdateMillis=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getLastUpdateMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_d0
    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->hasProvideSharedApexLibs()Z

    move-result v0

    if-eqz v0, :cond_e9

    const-string v0, " provideSharedApexLibs=\""

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/apex/ApexInfo;->getProvideSharedApexLibs()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    :cond_e9
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
