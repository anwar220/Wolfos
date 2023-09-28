# classes.dex

.class public final Landroid/app/admin/PreferentialNetworkServiceConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;,
        Landroid/app/admin/PreferentialNetworkServiceConfig$PreferentialNetworkPreferenceId;
    }
.end annotation


# static fields
.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

.field private static final LOG_TAG:Ljava/lang/String; = "PreferentialNetworkServiceConfig"

.field public static final PREFERENTIAL_NETWORK_ID_1:I = 0x1

.field public static final PREFERENTIAL_NETWORK_ID_2:I = 0x2

.field public static final PREFERENTIAL_NETWORK_ID_3:I = 0x3

.field public static final PREFERENTIAL_NETWORK_ID_4:I = 0x4

.field public static final PREFERENTIAL_NETWORK_ID_5:I = 0x5

.field private static final TAG_ALLOW_FALLBACK_TO_DEFAULT_CONNECTION:Ljava/lang/String; = "allow_fallback_to_default_connection"

.field private static final TAG_CONFIG_ENABLED:Ljava/lang/String; = "preferential_network_service_config_enabled"

.field private static final TAG_EXCLUDED_UIDS:Ljava/lang/String; = "excluded_uids"

.field private static final TAG_INCLUDED_UIDS:Ljava/lang/String; = "included_uids"

.field private static final TAG_NETWORK_ID:Ljava/lang/String; = "preferential_network_service_network_id"

.field private static final TAG_PREFERENTIAL_NETWORK_SERVICE_CONFIG:Ljava/lang/String; = "preferential_network_service_config"

.field private static final TAG_UID:Ljava/lang/String; = "uid"


# instance fields
.field final mAllowFallbackToDefaultConnection:Z

.field final mExcludedUids:[I

.field final mIncludedUids:[I

.field final mIsEnabled:Z

.field final mNetworkId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v0

    sput-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$1;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$1;-><init>()V

    sput-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/PreferentialNetworkServiceConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(ZZ[I[II)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    iput-boolean p2, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    iput-object p3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    iput-object p4, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    iput p5, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    return-void
.end method

.method synthetic constructor <init>(ZZ[I[IILandroid/app/admin/PreferentialNetworkServiceConfig-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(ZZ[I[II)V

    return-void
.end method

.method public static getPreferentialNetworkServiceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Landroid/app/admin/PreferentialNetworkServiceConfig;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    :cond_9
    :goto_9
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1a

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_a4

    :cond_1a
    if-eq v3, v2, :cond_9

    const/4 v2, 0x4

    if-ne v3, v2, :cond_20

    goto :goto_9

    :cond_20
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "preferential_network_service_config_enabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const-string/jumbo v7, "value"

    const/4 v8, 0x0

    if-eqz v5, :cond_3a

    invoke-interface {p0, v8, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_a2

    :cond_3a
    const-string/jumbo v5, "preferential_network_service_network_id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {p0, v8, v7, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4c

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    :cond_4c
    goto :goto_a2

    :cond_4d
    const-string v5, "allow_fallback_to_default_connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {p0, v8, v7, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_a2

    :cond_5d
    const-string v4, "included_uids"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "uid"

    if-eqz v4, :cond_70

    invoke-static {p0, v5}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readStringListToIntArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_a2

    :cond_70
    const-string v4, "excluded_uids"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-static {p0, v5}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readStringListToIntArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_a2

    :cond_80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PreferentialNetworkServiceConfig"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a2
    goto/16 :goto_9

    :cond_a4
    invoke-virtual {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v2

    return-object v2
.end method

.method private intArrayToStringList([I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic lambda$readStringListToIntArray$0(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_7
    :goto_7
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_57

    const/4 v1, 0x3

    if-ne v2, v1, :cond_18

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_57

    :cond_18
    if-eq v2, v1, :cond_7

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1e

    goto :goto_7

    :cond_1e
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreferentialNetworkServiceConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    goto :goto_7

    :cond_57
    return-void
.end method

.method private static readStringListToIntArray(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readAttributeValues(Landroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_8

    :cond_21
    invoke-interface {p1, v0, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    const-string/jumbo v0, "networkId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "isEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowFallbackToDefaultConnection="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "includedUids="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "excludedUids="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3e

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/admin/PreferentialNetworkServiceConfig;

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    iget-boolean v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    if-ne v3, v4, :cond_3c

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    iget-boolean v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    iget v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    iget-object v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    iget-object v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v1

    :goto_3d
    return v0

    :cond_3e
    :goto_3e
    return v1
.end method

.method public getExcludedUids()[I
    .registers 2

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    return-object v0
.end method

.method public getIncludedUids()[I
    .registers 2

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    return-object v0
.end method

.method public getNetworkId()I
    .registers 2

    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-boolean v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    return v0
.end method

.method public isFallbackToDefaultConnectionAllowed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferentialNetworkServiceConfig{mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mAllowFallbackToDefaultConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isFallbackToDefaultConnectionAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mIncludedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mExcludedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

.method public writeToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "preferential_network_service_config"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v2

    const-string/jumbo v3, "preferential_network_service_config_enabled"

    invoke-direct {p0, p1, v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getNetworkId()I

    move-result v2

    const-string/jumbo v3, "preferential_network_service_network_id"

    invoke-direct {p0, p1, v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;I)V

    nop

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isFallbackToDefaultConnectionAllowed()Z

    move-result v2

    const-string v3, "allow_fallback_to_default_connection"

    invoke-direct {p0, p1, v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Z)V

    nop

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getIncludedUids()[I

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->intArrayToStringList([I)Ljava/util/List;

    move-result-object v2

    const-string v3, "included_uids"

    const-string/jumbo v4, "uid"

    invoke-direct {p0, p1, v3, v4, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    nop

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getExcludedUids()[I

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->intArrayToStringList([I)Ljava/util/List;

    move-result-object v2

    const-string v3, "excluded_uids"

    invoke-direct {p0, p1, v3, v4, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValuesToXml(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
