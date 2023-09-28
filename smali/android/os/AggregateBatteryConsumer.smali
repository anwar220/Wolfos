# classes3.dex

.class public final Landroid/os/AggregateBatteryConsumer;
.super Landroid/os/BatteryConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/AggregateBatteryConsumer$Builder;
    }
.end annotation


# static fields
.field static final COLUMN_COUNT:I = 0x3

.field static final COLUMN_INDEX_CONSUMED_POWER:I = 0x2

.field static final COLUMN_INDEX_SCOPE:I = 0x1

.field static final CONSUMER_TYPE_AGGREGATE:I


# direct methods
.method private constructor <init>(Landroid/os/AggregateBatteryConsumer$Builder;)V
    .registers 4

    iget-object v0, p1, Landroid/os/AggregateBatteryConsumer$Builder;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    iget-object v1, p1, Landroid/os/AggregateBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-virtual {v1}, Landroid/os/PowerComponents$Builder;->build()Landroid/os/PowerComponents;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;Landroid/os/PowerComponents;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/AggregateBatteryConsumer$Builder;Landroid/os/AggregateBatteryConsumer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/AggregateBatteryConsumer;-><init>(Landroid/os/AggregateBatteryConsumer$Builder;)V

    return-void
.end method

.method constructor <init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BatteryConsumer;-><init>(Landroid/os/BatteryConsumer$BatteryConsumerData;)V

    return-void
.end method

.method static parseXml(Landroid/util/TypedXmlPullParser;Landroid/os/BatteryUsageStats$Builder;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "scope"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/BatteryUsageStats$Builder;->getAggregateBatteryConsumerBuilder(I)Landroid/os/AggregateBatteryConsumer$Builder;

    move-result-object v2

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_54

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "aggregate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    nop

    const-string/jumbo v5, "power"

    invoke-interface {p0, v0, v5}, Landroid/util/TypedXmlPullParser;->getAttributeDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Landroid/os/AggregateBatteryConsumer$Builder;->setConsumedPower(D)Landroid/os/AggregateBatteryConsumer$Builder;

    :goto_2a
    const/4 v0, 0x3

    if-ne v3, v0, :cond_37

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_37
    const/4 v0, 0x1

    if-eq v3, v0, :cond_53

    if-ne v3, v4, :cond_4e

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "power_components"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, v2, Landroid/os/AggregateBatteryConsumer$Builder;->mPowerComponentsBuilder:Landroid/os/PowerComponents$Builder;

    invoke-static {p0, v0}, Landroid/os/PowerComponents;->parseXml(Landroid/util/TypedXmlPullParser;Landroid/os/PowerComponents$Builder;)V

    :cond_4e
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    goto :goto_2a

    :cond_53
    return-void

    :cond_54
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Invalid XML parser state"

    invoke-direct {v0, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Z)V
    .registers 4

    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerComponents;->dump(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public getConsumedPower()D
    .registers 3

    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method getScope()I
    .registers 3

    iget-object v0, p0, Landroid/os/AggregateBatteryConsumer;->mData:Landroid/os/BatteryConsumer$BatteryConsumerData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/BatteryConsumer$BatteryConsumerData;->getInt(I)I

    move-result v0

    return v0
.end method

.method writeToXml(Landroid/util/TypedXmlSerializer;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "aggregate"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "scope"

    invoke-interface {p1, v0, v2, p2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/os/AggregateBatteryConsumer;->getConsumedPower()D

    move-result-wide v2

    const-string/jumbo v4, "power"

    invoke-interface {p1, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeDouble(Ljava/lang/String;Ljava/lang/String;D)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/os/AggregateBatteryConsumer;->mPowerComponents:Landroid/os/PowerComponents;

    invoke-virtual {v2, p1}, Landroid/os/PowerComponents;->writeToXml(Landroid/util/TypedXmlSerializer;)V

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
