# classes3.dex

.class public final Landroid/telephony/data/QosBearerFilter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/QosBearerFilter$PortRange;,
        Landroid/telephony/data/QosBearerFilter$QosBearerFilterDirection;,
        Landroid/telephony/data/QosBearerFilter$QosProtocol;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/QosBearerFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final QOS_FILTER_DIRECTION_BIDIRECTIONAL:I = 0x2

.field public static final QOS_FILTER_DIRECTION_DOWNLINK:I = 0x0

.field public static final QOS_FILTER_DIRECTION_UPLINK:I = 0x1

.field public static final QOS_MAX_PORT:I = 0xffff

.field public static final QOS_MIN_PORT:I = 0x14

.field public static final QOS_PROTOCOL_AH:I = 0x33

.field public static final QOS_PROTOCOL_ESP:I = 0x32

.field public static final QOS_PROTOCOL_TCP:I = 0x6

.field public static final QOS_PROTOCOL_UDP:I = 0x11

.field public static final QOS_PROTOCOL_UNSPECIFIED:I = -0x1


# instance fields
.field private filterDirection:I

.field private flowLabel:J

.field private localAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

.field private precedence:I

.field private protocol:I

.field private remoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

.field private securityParameterIndex:J

.field private typeOfServiceMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/data/QosBearerFilter$1;

    invoke-direct {v0}, Landroid/telephony/data/QosBearerFilter$1;-><init>()V

    sput-object v0, Landroid/telephony/data/QosBearerFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    const-class v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    const-class v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/QosBearerFilter$PortRange;

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/data/QosBearerFilter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/QosBearerFilter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/telephony/data/QosBearerFilter$PortRange;Landroid/telephony/data/QosBearerFilter$PortRange;IIJJII)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Landroid/telephony/data/QosBearerFilter$PortRange;",
            "Landroid/telephony/data/QosBearerFilter$PortRange;",
            "IIJJII)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p3, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    iput-object p4, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    iput p5, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    iput p6, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    iput-wide p7, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    iput-wide p9, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    iput p11, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    iput p12, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_7f

    instance-of v2, p1, Landroid/telephony/data/QosBearerFilter;

    if-nez v2, :cond_d

    goto/16 :goto_7f

    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/QosBearerFilter;

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget-object v3, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    iget-object v4, v2, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    iget v3, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter;->protocol:I

    if-ne v3, v4, :cond_7d

    iget v3, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    if-ne v3, v4, :cond_7d

    iget-wide v3, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    iget-wide v5, v2, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7d

    iget-wide v3, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    iget-wide v5, v2, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7d

    iget v3, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    if-ne v3, v4, :cond_7d

    iget v3, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    iget v4, v2, Landroid/telephony/data/QosBearerFilter;->precedence:I

    if-ne v3, v4, :cond_7d

    goto :goto_7e

    :cond_7d
    move v0, v1

    :goto_7e
    return v0

    :cond_7f
    :goto_7f
    return v1
.end method

.method public getLocalAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getLocalPortRange()Landroid/telephony/data/QosBearerFilter$PortRange;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    return-object v0
.end method

.method public getPrecedence()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    return v0
.end method

.method public getRemoteAddresses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getRemotePortRange()Landroid/telephony/data/QosBearerFilter$PortRange;
    .registers 2

    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QosBearerFilter { localAddresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remoteAddresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " localPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " remotePort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " typeOfServiceMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flowLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " securityParameterIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filterDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " precedence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remoteAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->localPort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/data/QosBearerFilter;->remotePort:Landroid/telephony/data/QosBearerFilter$PortRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->typeOfServiceMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/telephony/data/QosBearerFilter;->flowLabel:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/telephony/data/QosBearerFilter;->securityParameterIndex:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->filterDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/QosBearerFilter;->precedence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
